/**
 * \file IfxGtm_Atom_PwmHl.h
 * \brief GTM PWMHL details
 * \ingroup IfxLld_Gtm
 *
 * \version iLLD_1_0_1_12_0_1
 * \copyright Copyright (c) 2020 Infineon Technologies AG. All rights reserved.
 *
 *
 *                                 IMPORTANT NOTICE
 *
 * Use of this file is subject to the terms of use agreed between (i) you or
 * the company in which ordinary course of business you are acting and (ii)
 * Infineon Technologies AG or its licensees. If and as long as no such terms
 * of use are agreed, use of this file is subject to following:
 *
 * Boost Software License - Version 1.0 - August 17th, 2003
 *
 * Permission is hereby granted, free of charge, to any person or organization
 * obtaining a copy of the software and accompanying documentation covered by
 * this license (the "Software") to use, reproduce, display, distribute,
 * execute, and transmit the Software, and to prepare derivative works of the
 * Software, and to permit third-parties to whom the Software is furnished to
 * do so, all subject to the following:
 *
 * The copyright notices in the Software and this entire statement, including
 * the above license grant, this restriction and the following disclaimer, must
 * be included in all copies of the Software, in whole or in part, and all
 * derivative works of the Software, unless such copies or derivative works are
 * solely in the form of machine-executable object code generated by a source
 * language processor.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT
 * SHALL THE COPYRIGHT HOLDERS OR ANYONE DISTRIBUTING THE SOFTWARE BE LIABLE
 * FOR ANY DAMAGES OR OTHER LIABILITY, WHETHER IN CONTRACT, TORT OR OTHERWISE,
 * ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * \defgroup IfxLld_Gtm_Atom_PwmHl_Usage How to use the GTM ATOM PWM Driver
 * \ingroup IfxLld_Gtm_Atom_PwmHl
 *
 *   This driver implements the PWM functionalities as defined by \ref library_srvsw_stdif_pwmhl.
 *   The user is free to use either the driver specific APIs below or to used the \ref library_srvsw_stdif_pwmhl "standard interface APIs".
 *
 * \section Specific Specific implementation
 *   Implementation is similar to \ref IfxLld_Gtm_Tom_PwmHl
 *
 *  \todo add documentation
 *
 *   For a detailed configuration of the microcontroller, see \ref IfxGtm_Atom_PwmHl_init().
 *
 * \section Example Usage example
 *   Initialisation is done by, e.g:
 * \code
 *   IfxGtm_Atom_PwmHl_Config driverConfig;
 *   IfxGtm_Atom_PwmHl        driverData;
 *   IfxStdIf_PwmHl          pwmhl;
 *   IfxGtm_Atom_PwmHl_initConfig(&driverConfig, &MODULE_GTM);
 *   IfxGtm_Atom_PwmHl_init(&driverData, &driverConfig);
 *   IfxGtm_Atom_PwmHl_stdIfPwmHlInit(pwmhl, &driverData);
 * \endcode
 *
 *   During run-time, \ref library_srvsw_stdif_pwmhl "the interface functions" shall be used, e.g.:
 * \code
 *   IfxStdIf_Timer* timer = IfxStdIf_PwmHl_getTimer(pwmhl);
 *   Ifx_TimerValue onTime[3]; // assume configured for three HL channels
 *
 *   onTime[0] = 10;
 *   onTime[1] = 20;
 *   onTime[2] = 30;
 *
 *   IfxStdIf_Timer_disableUpdate(timer);
 *   IfxStdIf_Timer_setPeriod(timer, period);
 *   IfxStdIf_PwmHl_setOnTime(pwmhl, onTime);
 *   IfxStdIf_Timer_applyUpdate(timer);
 * \endcode
 *
 * \defgroup IfxLld_Gtm_Atom_PwmHl ATOM PWM HL Interface Driver
 * \ingroup IfxLld_Gtm_Atom
 * \defgroup IfxLld_Gtm_Atom_PwmHl_Data_Structures Data Structures
 * \ingroup IfxLld_Gtm_Atom_PwmHl
 * \defgroup IfxLld_Gtm_Atom_PwmHl_Functions PwmHl Functions
 * \ingroup IfxLld_Gtm_Atom_PwmHl
 * \defgroup IfxLld_Gtm_Atom_PwmHl_PwmHl_StdIf_Functions PwmHl StdIf Functions
 * \ingroup IfxLld_Gtm_Atom_PwmHl
 */

#ifndef IFXGTM_ATOM_PWMHL_H
#define IFXGTM_ATOM_PWMHL_H 1

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "StdIf/IfxStdIf_PwmHl.h"
#include "Gtm/Atom/Timer/IfxGtm_Atom_Timer.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/** \brief Maximal number of channels handled by the driver. One channel has a top and bottom pwm output
 */
#define IFXGTM_ATOM_PWMHL_MAX_NUM_CHANNELS (8)

/******************************************************************************/
/*------------------------------Type Definitions------------------------------*/
/******************************************************************************/

typedef struct IfxGtm_Atom_PwmHl_s IfxGtm_Atom_PwmHl;

typedef void                     (*IfxGtm_Atom_PwmHl_Update)(IfxGtm_Atom_PwmHl *driver, Ifx_TimerValue *tOn);

typedef void                     (*IfxGtm_Atom_PwmHl_UpdateShift)(IfxGtm_Atom_PwmHl *driver, Ifx_TimerValue *tOn, Ifx_TimerValue *shift);

typedef void                     (*IfxGtm_Atom_PwmHl_UpdatePulse)(IfxGtm_Atom_PwmHl *driver, float32 *tOn, float32 *offset);

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/

/** \addtogroup IfxLld_Gtm_Atom_PwmHl_Data_Structures
 * \{ */
/** \brief Multi-channels PWM object definition (channels only)
 */
typedef struct
{
    Ifx_TimerValue  deadtime;               /**< \brief Dead time between the top and bottom channel in ticks */
    Ifx_TimerValue  minPulse;               /**< \brief minimum pulse that is output, shorter pulse time will be output as 0% duty cycle */
    Ifx_TimerValue  maxPulse;               /**< \brief internal parameter */
    Ifx_Pwm_Mode    mode;                   /**< \brief actual PWM mode */
    sint8           setMode;                /**< \brief A non zero flag indicates that the PWM mode is being modified */
    Ifx_ActiveState ccxActiveState;         /**< \brief Top PWM active state */
    Ifx_ActiveState coutxActiveState;       /**< \brief Bottom PWM active state */
    boolean         inverted;               /**< \brief Flag indicating the center aligned inverted mode (TRUE) */
    uint8           channelCount;           /**< \brief Number of PWM channels, one channel is made of a top and bottom channel */
} IfxGtm_Atom_PwmHl_Base;

/** \} */

/** \addtogroup IfxLld_Gtm_Atom_PwmHl_Data_Structures
 * \{ */
/** \brief GTM ATOM: PWM HL configuration
 */
typedef struct
{
    IfxStdIf_PwmHl_Config           base;           /**< \brief PWM HL standard interface configuration */
    IfxGtm_Atom_Timer              *timer;          /**< \brief Pointer to the linked timer object */
    IfxGtm_Atom                     atom;           /**< \brief ATOM unit used */
    IFX_CONST IfxGtm_Atom_ToutMapP *ccx;            /**< \brief Pointer to an array of size pwmHl.channels.channelCount containing the channels used. Channels must be adjacent channels */
    IFX_CONST IfxGtm_Atom_ToutMapP *coutx;          /**< \brief Pointer to an array of size pwmHl.channels.channelCount containing the channels used. Channels must be adjacent channels */
    boolean                         initPins;       /**< \brief TRUE: Initialize pins in driver
                                                     * FALSE: Don't initialize pins in driver. User handles separately. */
} IfxGtm_Atom_PwmHl_Config;

/** \brief Structure for PWM configuration
 */
typedef struct
{
    Ifx_Pwm_Mode                  mode;                 /**< \brief Pwm Mode */
    boolean                       inverted;             /**< \brief Inverted configuration for the selected mode */
    IfxGtm_Atom_PwmHl_Update      update;               /**< \brief update call back function for the selected mode */
    IfxGtm_Atom_PwmHl_UpdateShift updateAndShift;       /**< \brief update shift call back function for the selected mode */
    IfxGtm_Atom_PwmHl_UpdatePulse updatePulse;          /**< \brief update pulse call back function for the selected mode */
} IfxGtm_Atom_PwmHl_Mode;

/** \brief GTM ATOM PWM driver
 */
struct IfxGtm_Atom_PwmHl_s
{
    IfxGtm_Atom_PwmHl_Base        base;                                            /**< \brief Multi-channels PWM object definition (channels only) */
    IfxGtm_Atom_Timer            *timer;                                           /**< \brief Pointer to the linked timer object */
    IfxGtm_Atom_PwmHl_Update      update;                                          /**< \brief Update function for actual selected mode */
    IfxGtm_Atom_PwmHl_UpdateShift updateAndShift;                                  /**< \brief Update shift function for actual selected mode */
    IfxGtm_Atom_PwmHl_UpdatePulse updatePulse;                                     /**< \brief Update pulse function for actual selected mode */
    Ifx_GTM_ATOM                 *atom;                                            /**< \brief ATOM unit used */
    Ifx_GTM_ATOM_AGC             *agc;                                             /**< \brief AGC unit used */
    IfxGtm_Atom_Ch                ccx[IFXGTM_ATOM_PWMHL_MAX_NUM_CHANNELS];         /**< \brief ATOM channels used for the CCCX outputs */
    IfxGtm_Atom_Ch                coutx[IFXGTM_ATOM_PWMHL_MAX_NUM_CHANNELS];       /**< \brief ATOM channels used for the OUTX outputs */
    IfxGtm_Atom_Ch               *ccxTemp;                                         /**< \brief cached value */
    IfxGtm_Atom_Ch               *coutxTemp;                                       /**< \brief cached value */
};

/** \} */

/** \addtogroup IfxLld_Gtm_Atom_PwmHl_Functions
 * \{ */

/******************************************************************************/
/*-------------------------Global Function Prototypes-------------------------*/
/******************************************************************************/

/** \brief Initializes the timer object
 * note To ensure that the channels counter are reset by the timer and do not overflow, leading to random signal on the output, the timer must be started before the call to this function.
 * \param driver GTM ATOM PWM driver
 * \param config GTM ATOM: PWM HL configuration
 * \return TRUE on success else FALSE
 */
IFX_EXTERN boolean IfxGtm_Atom_PwmHl_init(IfxGtm_Atom_PwmHl *driver, const IfxGtm_Atom_PwmHl_Config *config);

/** \brief Initialize the configuration structure to default
 * \param config Channel configuration. This parameter is Initialised by the function
 * \return None
 */
IFX_EXTERN void IfxGtm_Atom_PwmHl_initConfig(IfxGtm_Atom_PwmHl_Config *config);

/** \} */

/** \addtogroup IfxLld_Gtm_Atom_PwmHl_PwmHl_StdIf_Functions
 * \{ */

/******************************************************************************/
/*-------------------------Global Function Prototypes-------------------------*/
/******************************************************************************/

/** \brief Returns the dead time
 * \see IfxStdIf_PwmHl_GetDeadtime
 * \param driver GTM ATOM PWM driver
 * \return Dead Time
 */
IFX_EXTERN float32 IfxGtm_Atom_PwmHl_getDeadtime(IfxGtm_Atom_PwmHl *driver);

/** \brief Returns the minimum pulse
 * \see IfxStdIf_PwmHl_GetMinPulse
 * \param driver GTM ATOM PWM driver
 * \return Min Pulse
 */
IFX_EXTERN float32 IfxGtm_Atom_PwmHl_getMinPulse(IfxGtm_Atom_PwmHl *driver);

/** \brief Returns Pwm mode
 * \see IfxStdIf_PwmHl_GetMode
 * \param driver GTM ATOM PWM driver
 * \return Pwm mode
 */
IFX_EXTERN Ifx_Pwm_Mode IfxGtm_Atom_PwmHl_getMode(IfxGtm_Atom_PwmHl *driver);

/** \brief Sets the dead time
 * \see IfxStdIf_PwmHl_SetDeadtime
 * \param driver GTM ATOM PWM driver
 * \param deadtime Dead time value
 * \return TRUE on success else FALSE
 */
IFX_EXTERN boolean IfxGtm_Atom_PwmHl_setDeadtime(IfxGtm_Atom_PwmHl *driver, float32 deadtime);

/** \brief Sets the minimum pulse
 * \see IfxStdIf_PwmHl_SetMinPulse
 * \param driver GTM ATOM PWM driver
 * \param minPulse Minimum pulse
 * \return TRUE on success else FALSE
 */
IFX_EXTERN boolean IfxGtm_Atom_PwmHl_setMinPulse(IfxGtm_Atom_PwmHl *driver, float32 minPulse);

/** \brief Sets the PWM mode, the mode is only applied after setOnTime() + applyUpdate()
 * \see IfxStdIf_PwmHl_SetMode
 * \param driver GTM ATOM PWM driver
 * \param mode Pwm mode
 * \return TRUE on success else FALSE
 */
IFX_EXTERN boolean IfxGtm_Atom_PwmHl_setMode(IfxGtm_Atom_PwmHl *driver, Ifx_Pwm_Mode mode);

/** \brief Sets the ON time
 * \see IfxStdIf_PwmHl_SetOnTime
 * \param driver GTM ATOM PWM driver
 * \param tOn ON time
 * \return None
 */
IFX_EXTERN void IfxGtm_Atom_PwmHl_setOnTime(IfxGtm_Atom_PwmHl *driver, Ifx_TimerValue *tOn);

/** \brief Sets the ON time and Shift
 * \param driver GTM ATOM PWM driver
 * \param tOn ON time
 * \param shift Shift value in ticks
 * \return None
 */
IFX_EXTERN void IfxGtm_Atom_PwmHl_setOnTimeAndShift(IfxGtm_Atom_PwmHl *driver, Ifx_TimerValue *tOn, Ifx_TimerValue *shift);

/** \brief Sets the ON time and offset, all switched are independent
 * \param driver GTM ATOM PWM driver
 * \param tOn ON times. Phase 0 top, phase 1 top, ... phase 0 bottom, phase 1 botteom, ...
 * \param offset Offset value in ticks. Phase 0 top, phase 1 top, ... phase 0 bottom, phase 1 botteom, ...
 * \return None
 */
IFX_EXTERN void IfxGtm_Atom_PwmHl_setPulse(IfxGtm_Atom_PwmHl *driver, float32 *tOn, float32 *offset);

/** \brief Set up channels
 * \see IfxStdIf_PwmHl_SetupChannels
 * \param driver GTM ATOM PWM driver
 * \param activeCh Active channel
 * \param stuckSt Stuck state
 * \return None
 */
IFX_EXTERN void IfxGtm_Atom_PwmHl_setupChannels(IfxGtm_Atom_PwmHl *driver, boolean *activeCh, boolean *stuckSt);

/** \brief Initialises the statndard interface Pwm
 * \param stdif Standard interface object, will be initialized by the function
 * \param driver Interface driver to be used by the standard interface. must be initialised separately
 * \return TRUE on success else FALSE
 */
IFX_EXTERN boolean IfxGtm_Atom_PwmHl_stdIfPwmHlInit(IfxStdIf_PwmHl *stdif, IfxGtm_Atom_PwmHl *driver);

/** \} */

#endif /* IFXGTM_ATOM_PWMHL_H */
