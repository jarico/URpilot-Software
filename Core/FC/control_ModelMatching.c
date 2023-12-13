/***************************************************************************************
**  control_ModelMatching.c - Funciones generales de los controladores
**
**
**  Este fichero forma parte del proyecto URpilot.
**  Codigo desarrollado por el grupo de investigacion ICON de la Universidad de La Rioja
**
**  Autor: Javier Rico
**  Fecha de creacion: 20/11/2023
**  Fecha de modificacion: 20/11/2023
**
**  El proyecto URpilot NO es libre. No se puede distribuir y/o modificar este fichero
**  bajo ningun concepto.
**
**  En caso de modificacion y/o solicitud de informacion pongase en contacto con
**  el grupo de investigacion ICON a traves de: www.unirioja.es/urpilot
**
**
**  Control de versiones del fichero
**
**  v1.0  Javier Rico. Se ha liberado la primera version estable
**
****************************************************************************************/

/***************************************************************************************
** AREA DE INCLUDES                                                                   **
****************************************************************************************/
#include "control_ModelMatching.h"

#include "PID/controlador_generico.h"
#include "PID/pid.h"
#include "Drivers/tiempo.h"
#include "Filtros/filtro_pasa_bajo.h"
#include "AHRS/ahrs.h"
#include "rc.h"
#include "Sensores/IMU/imu.h"
#include "GP/gp_control.h"
#include "GP/gp_fc.h"
#include "mixer.h"

/***************************************************************************************
** AREA DE PREPROCESADOR                                                              **
****************************************************************************************/


/***************************************************************************************
** AREA DE DEFINICION DE TIPOS                                                        **
****************************************************************************************/


/***************************************************************************************
** AREA DE DECLARACION DE VARIABLES                                                   **
****************************************************************************************/
static pid_t pidVelAngMM[3];
static pid_t pidActitudMM[3];
static controladorGenerico_t modeloActitud[3];
static controladorGenerico_t modeloVelAng[3];
static controladorGenerico_t controladorFF[3];
static float uPIDMM[4];
static float uActPID[3];
static float uFF[3];
static float uTotal[3];
static float rActitudMM[3];
static float rVelAngMM[3];
static float rModVelAng[3];
static uint32_t tiempoAntVelAng;
static uint32_t tiempoAntAct;

float refMM[3];
float eulerMM[3];
float velAngularMM[3];

/***************************************************************************************
** AREA DE PROTOTIPOS DE FUNCION                                                      **
****************************************************************************************/


/***************************************************************************************
** AREA DE DEFINICION DE FUNCIONES                                                    **
****************************************************************************************/

/***************************************************************************************
**  Nombre:         void iniciarControladores(void)
**  Descripcion:    Inicia los controladores empleados en el control Model Matching
**  Parametros:     Ninguno
**  Retorno:        Ninguno
****************************************************************************************/
void iniciarControladoresMM(void)
{

	// PIDs para la velocidad angular
	iniciarPID(&pidVelAngMM[0],  0.000425, 0.0005, 0.00002,  0.0, 0.5, 1);
	iniciarPID(&pidVelAngMM[1],  0.00119,  0.0014, 0.000056, 0.0, 0.5, 1);

	// PIDs para la actitud
	iniciarPID(&pidActitudMM[0], 10, 20, 0.0, 0.0, 2000, 2000);
	iniciarPID(&pidActitudMM[1], 4, 0.0, 0.0, 0.0, 2000, 2000);

    float denC[1] = {1.0};
    float numC[1] = {1.0};
    int8_t n = sizeof(numC)/sizeof(float);

	// Modelos para la actitud
	iniciarControladorGenerico(&modeloActitud[0], numC, denC, n, 1.0, 100);
	iniciarControladorGenerico(&modeloActitud[1], numC, denC, n, 1.0, 100);

	// Modelos para la velocidad angular
	iniciarControladorGenerico(&modeloVelAng[0], numC, denC, n, 1.0, 100);
	iniciarControladorGenerico(&modeloVelAng[1], numC, denC, n, 1.0, 100);

	// Controladores feedfordward
	iniciarControladorGenerico(&controladorFF[0], numC, denC, n, 1.0, 100);
	iniciarControladorGenerico(&controladorFF[1], numC, denC, n, 1.0, 100);

}


/***************************************************************************************
**  Nombre:         void actualizarControlVelAngular(void)
**  Descripcion:    Actualiza el control de velocidad angular
**  Parametros:     Ninguno
**  Retorno:        Ninguno
****************************************************************************************/
CODIGO_RAPIDO void actualizarControlVelAngularMM(void)
{
    float velAngular[3], acelAngular[3];
    uint32_t tiempoAct = micros();
    float dt = (tiempoAct - tiempoAntVelAng) / 1000000.0;
    tiempoAntVelAng = tiempoAct;

    giroIMU(velAngular);
    acelAngularAHRS(acelAngular);

    uPIDMM[0] = actualizarPID(&pidVelAngMM[0], rVelAngMM[0], velAngular[0], acelAngular[0], dt, !ordenPararMotores);
    uPIDMM[1] = actualizarPID(&pidVelAngMM[1], rVelAngMM[1], velAngular[1], acelAngular[1], dt, !ordenPararMotores);

    uFF[0]  = actualizarControladorGenerico(&controladorFF[0], refMM[0]);
    uFF[1]  = actualizarControladorGenerico(&controladorFF[1], refMM[1]);

    uTotal[0] = uFF[0] + uPIDMM[0];
    uTotal[1] = uFF[1] + uPIDMM[1];

    if (ordenPararMotores) {
        resetearIntegralPID(&pidVelAngMM[0]);
        resetearIntegralPID(&pidVelAngMM[1]);
        resetearControladorGenerico(&controladorFF[0]);
        resetearControladorGenerico(&controladorFF[1]);
    }
}

// Desconozco porque estas declaraciones están aqui. Son comunes a todas las funciones?
//float ref[3];
//float euler[3];
//float velAngular[3];

/***************************************************************************************
**  Nombre:         void actualizarControlActitud(void)
**  Descripcion:    Actualiza el control de actitud
**  Parametros:     Ninguno
**  Retorno:        Ninguno
****************************************************************************************/
void actualizarControlActitudMM(void)
{
    uint32_t tiempoAct = micros();
    float dt = (tiempoAct - tiempoAntAct) / 1000000.0;
    tiempoAntAct = tiempoAct;


    refAngulosRC(refMM);
    giroIMU(velAngularMM);
    actitudAHRS(eulerMM);

    rActitudMM[0] = actualizarControladorGenerico(&modeloActitud[0], refMM[0]);
    rActitudMM[1] = actualizarControladorGenerico(&modeloActitud[1], refMM[1]);

    uActPID[0] = actualizarPID(&pidActitudMM[0], rActitudMM[0], eulerMM[0], velAngularMM[0], dt, !ordenPararMotores);
    uActPID[1] = actualizarPID(&pidActitudMM[1], rActitudMM[1], eulerMM[1], velAngularMM[1], dt, !ordenPararMotores);

    rModVelAng[0] = actualizarControladorGenerico(&modeloVelAng[0], refMM[0]);
    rModVelAng[1] = actualizarControladorGenerico(&modeloVelAng[1], refMM[1]);

    rVelAngMM[0] = rModVelAng[0] + rActitudMM[0];
    rVelAngMM[1] = rModVelAng[1] + rActitudMM[1];

    if (ordenPararMotores) {
        resetearIntegralPID(&pidActitudMM[0]);
        resetearIntegralPID(&pidActitudMM[1]);

    }
}




