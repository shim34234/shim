/**
 * \file IfxAsclin_Lin.h
 * \brief ASCLIN LIN details
 * \ingroup IfxLld_Asclin
 *
 * \version iLLD_1_0_1_12_0_1
 * \copyright Copyright (c) 2019 Infineon Technologies AG. All rights reserved.
 *
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
 *
 * \defgroup IfxLld_Asclin_Lin_Usage How to use the ASCLIN LIN Interface driver?
 * \ingroup IfxLld_Asclin
 *
 * The LIN interface driver provides a default ASCLIN configuration for asynchronous serial communication in 8bit mode, and a set of data transfer routines.
 * It supports all four elementary LIN transactions in polling mode.
 * TxH - Transmission of Header
 * TxR - Transmission of Response
 * RxH - Reception of Header
 * RxR - Reception of Response
 *
 * The driver also provides a LIN Master to be configured in Interrupt mode. In interrupt mode, following Lin frame transactions are provided.
 * 1.Transmit Header only.
 * 2.Transmit both Header and Response.
 * 3.Transmit Header and Receive Response.
 *
 * In the following sections it will be described, how to integrate the driver into the application framework.
 *
 * \section IfxLld_Asclin_Lin_Preparation Preparation
 * \subsection IfxLld_Asclin_Lin_Include Include Files
 *
 * Include following header file into your C code:
 * \code
 * #include <Asclin/Lin/IfxAsclin_Lin.h>
 * \endcode
 *
 * \subsection IfxLld_Asclin_Lin_Variables Variables
 *
 * Declare the LIN handle as global variable in your C code:
 *
 * \code
 * // used globally
 * static IfxAsclin_Lin linMaster;
 * static IfxAsclin_Lin linSlave;
 * \endcode
 *
 * \subsection IfxLld_Asclin_Lin_Interrupt Interrupt Handler Installation
 *
 * Define priorities for the Interrrupt handlers.
 * \code
 *
 * #define IFX_INTPRIO_ASCLIN1_RX   4         // Define the LIN1 receive interrupt priority.
 * #define IFX_INTPRIO_ASCLIN1_TX   8         // Define the LIN1 transmit interrupt priority.
 * #define IFX_INTPRIO_ASCLIN1_EX   12        // Define the LIN1 error interrupt priority.
 *
 * \endcode
 *
 * Add the interrupt service routines to your C code. They have to call the LIN interrupt handlers by passing the lin handle:
 * \code
 * IFX_INTERRUPT(ISR_Lin1_rx, 0, IFX_INTPRIO_ASCLIN1_RX);
 * IFX_INTERRUPT(ISR_Lin1_tx, 0, IFX_INTPRIO_ASCLIN1_TX);
 * IFX_INTERRUPT(ISR_Lin1_ex, 0, IFX_INTPRIO_ASCLIN1_EX);
 *
 * void ISR_Lin1_rx(void)
 * {
 *     IfxAsclin_Lin_isrReceive(&linMaster);
 * }
 * void ISR_Lin1_tx(void)
 * {
 *     IfxAsclin_Lin_isrTransmit(&linMaster);
 * }
 * void ISR_Lin1_ex(void)
 * {
 *     IfxAsclin_Lin_isrError(&linMaster);
 * }
 * \endcode
 *
 * \subsection IfxLld_Asclin_Lin_Init Module Initialisation
 *
 * The module can be initialised as either Master or Slave. Here an example:
 *
 * \subsection IfxLld_Asclin_Lin_Init_Master Module Initialisation as Master
 *
 * \code
 * // create module config
 * IfxAsclin_Lin_Config linMasterConfig;
 * IfxAsclin_Lin_initModuleConfig(&linMasterConfig, &MODULE_ASCLIN1);
 *
 * // set the lin mode of operation
 * linMasterConfig.linMode = IfxAsclin_LinMode_master;
 *
 * // set the desired baudrate
 * linMasterConfig.btc.prescaler = 4;
 * linMasterConfig.brg.baudrate = 19200; // FDR values will be calculated in initModule
 *
 * // pin configuration
 * const IfxAsclin_Lin_Pins pins = {
 *           &IfxAsclin1_RXB_P15_5_IN,   IfxPort_InputMode_pullUp,    // Rx pin
 *           &IfxAsclin1_TX_P15_4_OUT,   IfxPort_OutputMode_pushPull, // Tx pin
 *           IfxPort_PadDriver_cmosAutomotiveSpeed1
 * };
 * linMasterConfig.pins = &pins;
 *
 * //Lin Master Interrupt Config. Only needed for interrupt mode.
 * linConfig.isInterruptMode			= TRUE;
 * linConfig.interrupt.rxPriority  = ISR_PRIORITY(INTERRUPT_LIN1_RX);
 * linConfig.interrupt.txPriority  = ISR_PRIORITY(INTERRUPT_LIN1_TX);
 * linConfig.interrupt.exPriority  = ISR_PRIORITY(INTERRUPT_LIN1_EX);
 *
 * //Optionally, if any interrupt has to be enabled during initialisation it can be done as follows.
 * //Otherwise the driver will enable required interrupts during run time.
 *
 * linConfig.interrupt.enabledInterrupt.exCollisionDetectionError = TRUE; //This is optional example.
 *
 * linConfig.lin.csi = FALSE;//checksum injection not written into RxFIFO
 *
 * // initialize module
 * IfxAsclin_Lin_initModule(&linMaster, &linMasterConfig);
 * \endcode
 *
 * \subsection IfxLld_Asclin_Lin_Init_Slave Module Initialisation as Slave
 *
 * \code
 * // create module config
 * IfxAsclin_Lin_Config linSlaveConfig;
 * IfxAsclin_Lin_initModuleConfig(&linSlaveConfig, &MODULE_ASCLIN1);
 *
 * // set the lin mode of operation
 * linSlaveConfig.linMode = IfxAsclin_LinMode_slave;
 *
 * // set the desired baudrate
 * linSlaveConfig.btc.prescaler = 4;
 * linSlaveConfig.brg.baudrate = 19200; // FDR values will be calculated in initModule
 *
 * // choose the auto baudrate detection configuration
 * linSlaveConfig.brd.abd = FALSE;
 * linSlaveConfig.brd.lowerLimit = 0x4;
 * linSlaveConfig.brd.upperLimit = 0xF0;
 *
 * // pin configuration
 * const IfxAsclin_Lin_Pins pins = {
 *           &IfxAsclin1_RXB_P15_5_IN,   IfxPort_InputMode_pullUp,    // Rx pin
 *           &IfxAsclin1_TX_P15_4_OUT,   IfxPort_OutputMode_pushPull, // Tx pin
 *           IfxPort_PadDriver_cmosAutomotiveSpeed1
 * };
 * linSlaveConfig.pins = &pins;
 *
 *
 *
 * // initialize module
 * //IfxAsclin_Lin linSlave; // defined globally
 * IfxAsclin_Lin_initModule(&linSlave, &linSlaveConfig);
 * \endcode
 *
 * The LIN is ready for use now!
 *
 * \section IfxLld_Asclin_Lin_DataTransfers Data Transfers
 *
 * \subsection IfxLld_Asclin_Lin_DataMaster Master Transfers
 *
 * The LIN driver provides all three master elementary transfers.
 *
 * This means: you can send a header and based on the id byte, after transmission of header
 * you can send or receive response and also can ignore the header based on the id:
 * \code
 * // set the id bytes
 * uint8 txId = 0x80; // for sending respose after header
 * uint8 rxId = 0xC1; // for receiving respose after header
 *
 * // prepare transmit bytes incase of sending response
 * uint8 txData[8] = { 1, 2, 3, 4, 5, 6, 7, 8 };
 *
 * // prepare receive buffer incase of receiving response
 * uint8 rxData[8] = { 0, 0, 0, 0, 0, 0, 0, 0 };
 *
 * uint32 size = 8;
 *
 * //Polling mode APIs
 * //send response case
 * IfxAsclin_Lin_sendHeader(&linMaster, &txId);
 *
 * if (lin.acknowledgmentFlags.txHeaderEnd == 1) // if the header is been transmitted succesfully
 * {
 *  IfxAsclin_Lin_sendResponse(&linMaster, txData, size);
 * }
 *
 * //receive response case
 * IfxAsclin_Lin_sendHeader(&linMaster, &rxId);
 *
 * if (lin.acknowledgmentFlags.txHeaderEnd == 1) // if the header is been transmitted succesfully
 * {
 *  IfxAsclin_Lin_receiveResponse(&linMaster, rxData, size);
 * }
 *
 * //Interrupt mode APIs
 * IfxAsclin_Lin_PduType pdu;
 * pdu.pid = 0x42;
 * pdu.checksumMode = IfxAsclin_Checksum_enhanced;
 * pdu.dataLength = 8;
 * pdu.direction = IfxAsclin_Lin_Direction_TransmitHeaderAndResponse; //Transmits both Header and Response
 * pdu.dataPtr = &txData[0];
 * IfxAsclin_Lin_sendFrame(&linMaster,&pdu);
 * //Here Poll for linMaster.acknowledgmentFlags.txResponseEnd to detect end of transmission of frame.
 *
 * pdu.pid = 0xC4;
 * pdu.direction = IfxAsclin_Lin_Direction_TransmitHeaderAndReceiveResponse; //Transmits Header and expects slave to respond
 * IfxAsclin_Lin_sendFrame(&linMaster,&pdu);
 * //Here Poll for linMaster.acknowledgmentFlags.rxResponseEnd
 * //linMaster.linFrameData.rxResponseData[8] will have received response data if slave replies.
 *
 * \endcode
 *
 *
 * \subsection IfxLld_Asclin_Lin_DataSlave Slave Transfers
 *
 * Same as master the LIN driver provides all three slave elemnatry tranfers.
 *
 * This means: you can receive a header and based on the id byte received,
 * you can send or receive response and can also ignore the header based on the id:
 * \code
 * uint8 id;	// for storing received id byte
 *
 * // prepare transmit bytes incase of sending response
 * uint8 txData[8] = { 1, 2, 3, 4, 5, 6, 7, 8 };
 *
 * // prepare receive buffer incase of receiving response
 * uint8 rxData[8] = { 0, 0, 0, 0, 0, 0, 0, 0 };
 *
 * uint32 size = 8;
 *
 * // receive header
 * IfxAsclin_Lin_receiveHeader(&linSlave, &id);
 *
 * // if data is requsted by master
 * if(id == txId)
 * {
 *  IfxAsclin_Lin_sendResponse(&linSlave, txData, size); // send response
 * }
 *
 * // if header is follwed by response
 * else if(id == rxId)
 * {
 *  IfxAsclin_Lin_receiveResponse(&linSlave, rxData, size); // receive response
 * }
 *
 * // if header is not for this slave
 * else
 * {
 *  IfxAsclin_Lin_ignoreHeader(&linSlave);
 * }
 * \endcode
 *
 * \defgroup IfxLld_Asclin_Lin LIN
 * \ingroup IfxLld_Asclin
 * \defgroup IfxLld_Asclin_Lin_DataStructures Data Structures
 * \ingroup IfxLld_Asclin_Lin
 * \defgroup IfxLld_Asclin_Lin_ElementaryTransactions Elementary Transactions
 * \ingroup IfxLld_Asclin_Lin
 * \defgroup IfxLld_Asclin_Lin_ModuleFunctions Module Functions
 * \ingroup IfxLld_Asclin_Lin
 * \defgroup IfxLld_Asclin_Lin_errorHandlingFunctions Error Handling Functions
 * \ingroup IfxLld_Asclin_Lin
 * \defgroup IfxLld_Asclin_Lin_InterruptFunctions Interrupt Functions
 * \ingroup IfxLld_Asclin_Lin
 * \defgroup IfxLld_Asclin_Lin_Enumerations Enumerations
 * \ingroup IfxLld_Asclin_Lin
 */

#ifndef IFXASCLIN_LIN_H
#define IFXASCLIN_LIN_H 1

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "Asclin/Std/IfxAsclin.h"
#include "_Utilities/Ifx_Assert.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

#define IFXASCLIN_LIN_SEND_RESPONSE    (0x80)

#define IFXASCLIN_LIN_RECEIVE_RESPONSE (0xC1)

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/** \addtogroup IfxLld_Asclin_Lin_Enumerations
 * \{ */
/** \brief Defines the type of Lin Master Frame.
 * (Transmit Header only) or
 * (Transmit Header and Response) or
 * (Transmit Header and Receive Response).
 */
typedef enum
{
    IfxAsclin_Lin_Direction_TransmitHeader                   = 0, /**< \brief Transmit Header */
    IfxAsclin_Lin_Direction_TransmitHeaderAndResponse        = 1, /**< \brief Transmit both Header and Response */
    IfxAsclin_Lin_Direction_TransmitHeaderAndReceiveResponse = 2  /**< \brief Transmit Header and Receive Response */
} IfxAsclin_Lin_Direction;

/** \} */

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/

/** \addtogroup IfxLld_Asclin_Lin_DataStructures
 * \{ */
/** \brief Structure to store interrupts which are enabled during initialisation.
 */
typedef struct
{
    uint16 rxReceivedHeader : 1;                /**< \brief Received Header */
    uint16 rxReceivedResponse : 1;              /**< \brief Received Response */
    uint16 txTransmittedHeader : 1;             /**< \brief Transmitted Header */
    uint16 txTransmittedResponse : 1;           /**< \brief Transmitted Response */
    uint16 exBreakDetected : 1;                 /**< \brief Break Detected */
    uint16 exTransmissionCompleted : 1;         /**< \brief Transmission Completed */
    uint16 exHeaderTimeout : 1;                 /**< \brief Header Timeout */
    uint16 exResponseTimeout : 1;               /**< \brief Response Timeout */
    uint16 exLinParityError : 1;                /**< \brief Lin Parity Error */
    uint16 exLinAutobaudDetectionError : 1;     /**< \brief Lin Autobaud Detection Error */
    uint16 exLinChecksumError : 1;              /**< \brief Lin Checksum Error */
    uint16 exFramingError : 1;                  /**< \brief Framing Error */
    uint16 exCollisionDetectionError : 1;       /**< \brief Collision Detection Error */
    uint16 exReceiveFIFOOverflow : 1;           /**< \brief Receive FIFO Overflow */
    uint16 exTransmitFIFOOverflow : 1;          /**< \brief Transmit FIFO Overflow */
} IfxAsclin_Lin_EnabledInterrupts;

/** \brief Structure for Lin Frame Control flags
 */
typedef struct
{
    uint16 txSendHeaderOnly : 1;            /**< \brief Flag indicating that only Header is transmitted */
    uint16 txSendResponse : 1;              /**< \brief Flag to indicate Response is transmitted */
    uint16 txHeaderInProgress : 1;          /**< \brief Flag to indicate Header transmission is initiated and is in progress */
    uint16 txResponseInProgress : 1;        /**< \brief Flag to indicate Response transmission is initiated and is in progress */
    uint16 rxHeaderInProgress : 1;          /**< \brief Flag to indicate Header reception is initiated and is in progress */
    uint16 rxResponseInProgress : 1;        /**< \brief Flag to indicate Response reception is initiated and is in progress */
    uint16 txHeaderErrorOccurred : 1;       /**< \brief Flag to indicate error occurred during transmission of Header */
    uint16 txResponseErrorOccurred : 1;     /**< \brief Flag to indicate error occurred during transmission of Response */
    uint16 rxHeaderErrorOccurred : 1;       /**< \brief Flag to indicate error occurred during reception of Header */
    uint16 rxResponseErrorOccurred : 1;     /**< \brief Flag to indicate error occurred during reception of Response */
} IfxAsclin_Lin_FrameControlFlags;

/** \} */

/** \addtogroup IfxLld_Asclin_Lin_DataStructures
 * \{ */
/** \brief Structure for Acknowledgement Flags
 */
typedef struct
{
    uint8 txHeaderEnd : 1;       /**< \brief transmit header end */
    uint8 txResponseEnd : 1;     /**< \brief transmit response end */
    uint8 rxHeaderEnd : 1;       /**< \brief receive header end */
    uint8 rxResponseEnd : 1;     /**< \brief receive response end */
    uint8 txCompleted : 1;       /**< \brief transmission completed */
} IfxAsclin_Lin_AcknowledgementFlags;

/** \brief Structure for Baudrate Detection
 */
typedef struct
{
    boolean abd;              /**< \brief LINCON.ABD, autobaud detection enable */
    uint8   lowerLimit;       /**< \brief BRD.LOWERLIMIT, auto baudrate detection lowerlimit */
    uint8   upperLimit;       /**< \brief BRD.UPPERLIMIT, auto baudrate detection upperlimit */
    uint8   measured;         /**< \brief BRD.MEASURED, measured time interval between the
                               * first and the fifth falling edge of the sync byte */
} IfxAsclin_Lin_BaudrateDetection;

/** \brief Structure for Baudrate Generation
 */
typedef struct
{
    float32 baudrate;          /**< \brief value of the required baudrate */
    uint16  numerator;         /**< \brief BRG.NUMERATOR, defines the numerator of fractional divider */
    uint16  denominator;       /**< \brief BRG.DENOMINATOR, defines the denominator of fractional divider */
} IfxAsclin_Lin_BaudrateGeneration;

/** \brief Structure for Bit Sampling
 */
typedef struct
{
    uint8                         filterDepth;               /**< \brief IOCR.DEPTH, digital glitch filter depth */
    IfxAsclin_SamplesPerBit       medianFilter;              /**< \brief BITCON.SM, no. of samples per bit 1 or 3 */
    IfxAsclin_SamplePointPosition samplePointPosition;       /**< \brief BITCON.SAMPLEPOINT, sample point position */
} IfxAsclin_Lin_BitSamplingControl;

/** \brief Structure for Bit Timing
 */
typedef struct
{
    uint16                       prescaler;          /**< \brief BITCON.PRESCALER, predivider to generate the baud rate */
    IfxAsclin_OversamplingFactor oversampling;       /**< \brief BITCON.OVERSAMPLING, postdivider, used for oversampling */
} IfxAsclin_Lin_BitTimingControl;

/** \brief Structure for Data Control
 */
typedef struct
{
    IfxAsclin_DataLength             dataLength;                /**< \brief DATCON.DATALENGTH, data length, number of bits per transfer */
    IfxAsclin_HeaderResponseSelect   headerOnly;                /**< \brief DATCON.HO, Lin frame with header and response or header only */
    IfxAsclin_LinResponseTimeoutMode responseTimeoutMode;       /**< \brief DATCON.RM, response mode (response or frame timeout threshold) */
    IfxAsclin_Checksum               checksum;                  /**< \brief DATCON.CSM, checksum mode (classic or enhanced) */
    uint16                           responseTimeout;           /**< \brief DATCON.RESPONSE, timeout limit */
} IfxAsclin_Lin_DataControl;

/** \brief Structure for Error Flags
 */
typedef struct
{
    uint8 frameError : 1;                    /**< \brief frame error */
    uint8 headerTimeout : 1;                 /**< \brief header timeout */
    uint8 responseTimeout : 1;               /**< \brief response timeout */
    uint8 breakDetected : 1;                 /**< \brief break detected */
    uint8 linParityError : 1;                /**< \brief lin parity error */
    uint8 linAutobaudDetectionError : 1;     /**< \brief lin autobaud detection error */
    uint8 linChecksumError : 1;              /**< \brief lin checksum error */
    uint8 collisionDetectionError : 1;       /**< \brief collision detection error */
    uint8 rxFifoOverflow : 1;                /**< \brief receive FIFO overflow error */
    uint8 txFifoOverflow : 1;                /**< \brief transmit FIFO overflow error */
} IfxAsclin_Lin_ErrorFlags;

/** \brief Structure for FIFO Control
 */
typedef struct
{
    IfxAsclin_ReceiveBufferMode buffMode;       /**< \brief RXFIFOCON.BUF, receive buffer mode (RXFIFO or RXBuffer) */
    IfxAsclin_TxFifoInletWidth  inWidth;        /**< \brief TXFIFOCON.INW, transmit FIFO inlet width */
    IfxAsclin_RxFifoOutletWidth outWidth;       /**< \brief RXFIFOCON.OTW, receive FIFO oulet width */
} IfxAsclin_Lin_FifoControl;

/** \brief Structure for Frame Control
 */
typedef struct
{
    IfxAsclin_IdleDelay      idleDelay;                      /**< \brief FRAMECON.IDLE, idle delay */
    IfxAsclin_LeadDelay      leadDelay;                      /**< \brief FRAMECON.LEAD, lead delay */
    IfxAsclin_StopBit        stopBit;                        /**< \brief FRAMECON.STOP, number of stop bits */
    IfxAsclin_ParityType     parityType;                     /**< \brief FRAMECON.ODD, parity type (even or odd) */
    IfxAsclin_ShiftDirection shiftDir;                       /**< \brief FRAMECON.MSB, shift direction */
    boolean                  parityEnable;                   /**< \brief FRAMECON.PEN, parity enable */
    boolean                  collisionDetectionEnable;       /**< \brief FRAMECON.CEN, collision detection enable */
} IfxAsclin_Lin_FrameControl;

/** \brief Structure for Frame Data and Control flags
 */
typedef struct
{
    uint8                           rxResponseData[8];       /**< \brief Array to store received response data */
    uint8                           headerID;                /**< \brief header ID */
    uint8                           txResponseLength;        /**< \brief Length of transmitted response */
    uint8                           rxResponseLength;        /**< \brief Length of received response */
    IfxAsclin_Lin_FrameControlFlags flags;                   /**< \brief LIN frame control flags */
} IfxAsclin_Lin_FrameDataControl;

/** \brief Structure for LIN Interrupt Configuration
 */
typedef struct
{
    uint16                          txPriority;             /**< \brief transmit interrupt priority */
    uint16                          rxPriority;             /**< \brief receive interrupt priority */
    uint16                          exPriority;             /**< \brief error interrupt priority */
    IfxSrc_Tos                      typeOfService;          /**< \brief type of interrupt service */
    IfxAsclin_Lin_EnabledInterrupts enabledInterrupt;       /**< \brief Interrupts which have to be enabled during initialisation as configured by application. Does not reflect current status of FLAGSENABLE register. */
} IfxAsclin_Lin_InterruptConfig;

/** \brief Structure for lin Control
 */
typedef struct
{
    boolean                     csEnable;            /**< \brief LINCON.CSEN, hardware checksum generation and checking */
    IfxAsclin_ChecksumInjection csi;                 /**< \brief LINCON.CSI, checksum injection (not written or written) into RxFIFO */
    uint8                       breakLength;         /**< \brief LINBTIMER.BREAK, break pulse generation and detection length */
    uint8                       headerTimeout;       /**< \brief LINHTIMER.HEADER, header timeout threshold value */
} IfxAsclin_Lin_LinControl;

/** \brief Structure for LIN pin configuration
 */
typedef struct
{
    IFX_CONST IfxAsclin_Rx_In  *rx;              /**< \brief LIN Rx pin */
    IfxPort_InputMode           rxMode;          /**< \brief rx pin as input */
    IFX_CONST IfxAsclin_Tx_Out *tx;              /**< \brief LIN Tx pin */
    IfxPort_OutputMode          txMode;          /**< \brief tx as output */
    IfxPort_PadDriver           pinDriver;       /**< \brief pad driver */
} IfxAsclin_Lin_Pins;

/** \} */

/** \addtogroup IfxLld_Asclin_Lin_DataStructures
 * \{ */
typedef struct
{
    Ifx_ASCLIN                        *asclin;                    /**< \brief pointer to ASCLIN registers */
    IfxAsclin_Lin_FrameDataControl     linFrameData;              /**< \brief Structure for Lin Frame Data and Control */
    IfxAsclin_LinMode                  linMode;                   /**< \brief LINCON.MS, lin mode of operation (master or slave) */
    IfxAsclin_Lin_AcknowledgementFlags acknowledgmentFlags;       /**< \brief structure for acknowledgement flags */
    IfxAsclin_Lin_ErrorFlags           errorFlagsStatus;          /**< \brief structure for error flags status */
    boolean                            receiveIdEnable;           /**< \brief setting to receive Id in Rx Fifo after sending it */
    boolean                            isInterruptMode;           /**< \brief Value to indicate if APIs work in Polling mode or Interrupt mode */
} IfxAsclin_Lin;

/** \brief Configuration structure of the module
 */
typedef struct
{
    Ifx_ASCLIN                      *asclin;                /**< \brief pointer to ASCLIN registers */
    IfxAsclin_FrameMode              frameMode;             /**< \brief FRAMECON.MODE, mode of operation of the module (ASC, SPI, LIN) */
    IfxAsclin_LinMode                linMode;               /**< \brief LINCON.MS, lin mode of operation (master or slave) */
    IfxAsclin_Lin_BaudrateGeneration brg;                   /**< \brief structure for baudrate generation */
    IfxAsclin_Lin_BaudrateDetection  brd;                   /**< \brief structure for baudrate detection */
    IfxAsclin_Lin_BitTimingControl   btc;                   /**< \brief structure for bit timings */
    IfxAsclin_Lin_BitSamplingControl bsc;                   /**< \brief structure for bit sampling */
    IfxAsclin_Lin_FrameControl       frame;                 /**< \brief structure for frame control */
    IfxAsclin_Lin_FifoControl        fifo;                  /**< \brief structure for FIFO control */
    IfxAsclin_Lin_DataControl        data;                  /**< \brief structure for data control */
    IfxAsclin_Lin_LinControl         lin;                   /**< \brief structure for lin control */
    IFX_CONST IfxAsclin_Lin_Pins    *pins;                  /**< \brief structure for LIN pins */
    IfxAsclin_ClockSource            clockSource;           /**< \brief CSR.CLKSEL, clock source selection */
    IfxAsclin_RxInputSelect          alti;                  /**< \brief IOCR.ALTI, Rx input (alternate input) pin selection */
    IfxAsclin_Lin_InterruptConfig    interrupt;             /**< \brief structure for lin interrupt configuration */
    boolean                          isInterruptMode;       /**< \brief flag to indicate Interrupt Mode (TRUE) or Polling Mode (FALSE) */
    boolean                          receiveIdEnable;       /**< \brief setting to receive Id in Rx Fifo after sending it */
} IfxAsclin_Lin_Config;

/** \brief Structure to hold Lin Pdu data
 */
typedef struct
{
    uint8                   pid;                /**< \brief PID of LIN Header */
    uint8                   dataLength;         /**< \brief Length of LIN Response */
    uint8                  *dataPtr;            /**< \brief Pointer for LIN Response data */
    IfxAsclin_Lin_Direction direction;          /**< \brief Direction Control (Tx Header only, Tx both Header and Response, Tx Header and Rx Response) */
    IfxAsclin_Checksum      checksumMode;       /**< \brief LIN Checksum Mode */
} IfxAsclin_Lin_PduType;

/** \} */

/** \addtogroup IfxLld_Asclin_Lin_ElementaryTransactions
 * \{ */

/******************************************************************************/
/*-------------------------Inline Function Prototypes-------------------------*/
/******************************************************************************/

/** \brief Prepares the module to receive the header
 * \param asclin module handle
 * \return None
 *
 * A coding example can be found in \ref IfxLld_Asclin_Lin_Usage
 *
 */
IFX_INLINE void IfxAsclin_Lin_prepareHeaderReception(IfxAsclin_Lin *asclin);

/** \brief Prepares the module to Receive the response
 * \param asclin module handle
 * \param length count of data (in bytes).
 * \return None
 *
 * A coding example can be found in \ref IfxLld_Asclin_Lin_Usage
 *
 */
IFX_INLINE void IfxAsclin_Lin_prepareResponseReception(IfxAsclin_Lin *asclin, uint32 length);

/** \brief Reads the header
 * \param asclin module handle
 * \param id the id byte which should be received
 * \return None
 *
 * A coding example can be found in \ref IfxLld_Asclin_Lin_Usage
 *
 */
IFX_INLINE void IfxAsclin_Lin_readHeader(IfxAsclin_Lin *asclin, uint8 *id);

/** \brief Reads the response
 * \param asclin module handle
 * \param data Pointer to the start of data which should be received
 * \param length count of data (in bytes).
 * \return None
 *
 * A coding example can be found in \ref IfxLld_Asclin_Lin_Usage
 *
 */
IFX_INLINE void IfxAsclin_Lin_readResponse(IfxAsclin_Lin *asclin, uint8 *data, uint32 length);

/******************************************************************************/
/*-------------------------Global Function Prototypes-------------------------*/
/******************************************************************************/

/** \brief Ignores the latest header
 * \param asclin module handle
 * \return None
 *
 * A coding example can be found in \ref IfxLld_Asclin_Lin_Usage
 *
 */
IFX_EXTERN void IfxAsclin_Lin_ignoreHeader(IfxAsclin_Lin *asclin);

/** \brief Receives the header
 * \param asclin module handle
 * \param id the id byte which should be received
 * \return None
 *
 * A coding example can be found in \ref IfxLld_Asclin_Lin_Usage
 *
 */
IFX_EXTERN void IfxAsclin_Lin_receiveHeader(IfxAsclin_Lin *asclin, uint8 *id);

/** \brief Receives the response
 * \param asclin module handle
 * \param data Pointer to the start of data which should be received
 * \param length count of data (in bytes).
 * \return None
 *
 * A coding example can be found in \ref IfxLld_Asclin_Lin_Usage
 *
 */
IFX_EXTERN void IfxAsclin_Lin_receiveResponse(IfxAsclin_Lin *asclin, uint8 *data, uint32 length);

/** \brief Sends the header
 * \param asclin module handle
 * \param id the id byte which should be sent
 * \return None
 *
 * A coding example of send header in polling mode can be found in \ref IfxLld_Asclin_Lin_Usage. For interrupt mode, this fuction is internally used by IfxAsclin_Lin_sendFrame API and the the polling part is bypassed.
 *
 */
IFX_EXTERN void IfxAsclin_Lin_sendHeader(IfxAsclin_Lin *asclin, uint8 *id);

/** \brief sends the response
 * \param asclin module handle
 * \param data Pointer to the start of data which should be sent
 * \param length count of data (in bytes).
 * \return None
 *
 * A coding example can be found in \ref IfxLld_Asclin_Lin_Usage
 *
 */
IFX_EXTERN void IfxAsclin_Lin_sendResponse(IfxAsclin_Lin *asclin, uint8 *data, uint32 length);

/** \} */

/** \addtogroup IfxLld_Asclin_Lin_ModuleFunctions
 * \{ */

/******************************************************************************/
/*-------------------------Global Function Prototypes-------------------------*/
/******************************************************************************/

/** \brief Disables the module
 * \param asclin module handle
 * \return None
 */
IFX_EXTERN void IfxAsclin_Lin_disableModule(IfxAsclin_Lin *asclin);

/** \brief Initialises the module
 * \param asclin module handle
 * \param config predefined configuration structure of the module
 * \return Status
 *
 * A coding example can be found in \ref IfxLld_Asclin_Lin_Usage
 *
 */
IFX_EXTERN IfxAsclin_Status IfxAsclin_Lin_initModule(IfxAsclin_Lin *asclin, const IfxAsclin_Lin_Config *config);

/** \brief Fills the config structure with default values
 * \param config predefined configuration structure of the module
 * \param asclin pointer to ASCLIN registers
 * \return None
 *
 * A coding example can be found in \ref IfxLld_Asclin_Lin_Usage
 *
 */
IFX_EXTERN void IfxAsclin_Lin_initModuleConfig(IfxAsclin_Lin_Config *config, Ifx_ASCLIN *asclin);

/** \brief This API must be used in interrupt mode. It can be used to
 * 1.Send Header
 * 2.Send both Header and Response
 * 3.Send Header and Receive Response
 * \param asclin asclin module handle
 * \param pduptr lin pdu configuration
 * \return None
 *
 * A coding example of sendFrame in interrupt mode can be found in \ref IfxLld_Asclin_Lin_Usage.
 *
 */
IFX_EXTERN void IfxAsclin_Lin_sendFrame(IfxAsclin_Lin *asclin, IfxAsclin_Lin_PduType *pduptr);

/** \} */

/** \addtogroup IfxLld_Asclin_Lin_errorHandlingFunctions
 * \{ */

/******************************************************************************/
/*-------------------------Global Function Prototypes-------------------------*/
/******************************************************************************/

/** \brief checks for acknowledgement and error flags for received header
 * \param asclin module handle
 * \return None
 */
IFX_EXTERN void IfxAsclin_Lin_checkForReceivedHeaderFlags(IfxAsclin_Lin *asclin);

/** \brief checks for acknowledgement and error flags for received response
 * \param asclin module handle
 * \return None
 */
IFX_EXTERN void IfxAsclin_Lin_checkForReceivedResponseFlags(IfxAsclin_Lin *asclin);

/** \brief checks for acknowledgement and error flags for transmitted header
 * \param asclin module handle
 * \return None
 */
IFX_EXTERN void IfxAsclin_Lin_checkForTransmittedHeaderFlags(IfxAsclin_Lin *asclin);

/** \brief checks for acknowledgement and error flags for transmitted response
 * \param asclin module handle
 * \return None
 */
IFX_EXTERN void IfxAsclin_Lin_checkForTransmittedResponseFlags(IfxAsclin_Lin *asclin);

/** \brief clears the flags status structures
 * \param asclin module handle
 * \return None
 */
IFX_EXTERN void IfxAsclin_Lin_clearFlagsStatus(IfxAsclin_Lin *asclin);

/** \brief waits until receive header end acknowledgemnet or an error  has been detected
 * \param asclin module handle
 * \return Result, TRUE: if error, FALSE: is no error
 */
IFX_EXTERN boolean IfxAsclin_Lin_waitForReceivedHeader(IfxAsclin_Lin *asclin);

/** \brief waits until receive response end acknowledgemnet or an error  has been detected
 * \param asclin module handle
 * \return Result, TRUE: if error, FALSE: is no error
 */
IFX_EXTERN boolean IfxAsclin_Lin_waitForReceivedResponse(IfxAsclin_Lin *asclin);

/** \brief waits until transmit header end acknowledgemnet or an error has been detected
 * \param asclin module handle
 * \return Result, TRUE: if error, FALSE: is no error
 */
IFX_EXTERN boolean IfxAsclin_Lin_waitForTransmittedHeader(IfxAsclin_Lin *asclin);

/** \brief waits until transmit response end acknowledgemnet or an error  has been detected
 * \param asclin module handle
 * \return Result, TRUE: if error, FALSE: is no error
 */
IFX_EXTERN boolean IfxAsclin_Lin_waitForTransmittedResponse(IfxAsclin_Lin *asclin);

/** \} */

/** \addtogroup IfxLld_Asclin_Lin_InterruptFunctions
 * \{ */

/******************************************************************************/
/*-------------------------Global Function Prototypes-------------------------*/
/******************************************************************************/

/** \brief ISR error routine.
 * \param asclin module handle
 * \return None
 */
IFX_EXTERN void IfxAsclin_Lin_isrError(IfxAsclin_Lin *asclin);

/** \brief ISR receive routine.
 * \param asclin module handle
 * \return None
 */
IFX_EXTERN void IfxAsclin_Lin_isrReceive(IfxAsclin_Lin *asclin);

/** \brief ISR transmit routine.
 * \param asclin module handle
 * \return None
 */
IFX_EXTERN void IfxAsclin_Lin_isrTransmit(IfxAsclin_Lin *asclin);

/** \} */

/******************************************************************************/
/*---------------------Inline Function Implementations------------------------*/
/******************************************************************************/

IFX_INLINE void IfxAsclin_Lin_prepareHeaderReception(IfxAsclin_Lin *asclin)
{
    Ifx_ASCLIN *asclinSFR = asclin->asclin;         /* getting the pointer to ASCLIN registers from module handler*/
    IfxAsclin_clearAllFlags(asclinSFR);             /* clearing all flags*/
    IfxAsclin_flushRxFifo(asclinSFR);               /* flushing Rx FIFO*/
    IfxAsclin_enableTxFifoOutlet(asclinSFR, FALSE); /* enabling Tx FIFO for transmitting*/
    IfxAsclin_enableRxFifoInlet(asclinSFR, TRUE);   /* enabling Rx FIFO for receiving*/
}


IFX_INLINE void IfxAsclin_Lin_prepareResponseReception(IfxAsclin_Lin *asclin, uint32 length)
{
    Ifx_ASCLIN *asclinSFR = asclin->asclin;                                 /* getting the pointer to ASCLIN registers from module handler*/
    IfxAsclin_setDataLength(asclinSFR, (IfxAsclin_DataLength)(length - 1)); /* set number of bytes to be received*/
    IfxAsclin_clearAllFlags(asclinSFR);                                     /* clear all flags */
    IfxAsclin_flushRxFifo(asclinSFR);                                       /* flushing Rx FIFO */
    IfxAsclin_enableTxFifoOutlet(asclinSFR, FALSE);                         /* enable Tx FIFO for transmitting */
    IfxAsclin_enableRxFifoInlet(asclinSFR, TRUE);                           /* enable Rx FIFO for receiving */
}


IFX_INLINE void IfxAsclin_Lin_readHeader(IfxAsclin_Lin *asclin, uint8 *id)
{
    Ifx_ASCLIN *asclinSFR = asclin->asclin;         /* getting the pointer to ASCLIN registers from module handler*/
    IfxAsclin_read8(asclinSFR, id, 1U);             /*reading the ID byte*/
}


IFX_INLINE void IfxAsclin_Lin_readResponse(IfxAsclin_Lin *asclin, uint8 *data, uint32 length)
{
    Ifx_ASCLIN *asclinSFR = asclin->asclin;           /* getting the pointer to ASCLIN registers from module handler*/
    IfxAsclin_read8(asclinSFR, data, length);         /* read the data bytes; */
}


#endif /* IFXASCLIN_LIN_H */
