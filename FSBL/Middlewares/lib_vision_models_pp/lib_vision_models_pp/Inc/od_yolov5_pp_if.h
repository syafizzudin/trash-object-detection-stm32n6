/*---------------------------------------------------------------------------------------------
  * Copyright (c) 2023 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file in
  * the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *--------------------------------------------------------------------------------------------*/

#ifndef __OD_YOLOV5_PP_IF_H__
#define __OD_YOLOV5_PP_IF_H__


#ifdef __cplusplus
 extern "C" {
#endif

#include "od_pp_output_if.h"


/* I/O structures for YoloV5 detector type */
/* --------------------------------------- */
typedef struct od_yolov5_pp_in_centroid
{
  void *pRaw_detections;
} od_yolov5_pp_in_centroid_t;


typedef struct od_yolov5_pp_static_param {
  int32_t  nb_classes;
  int32_t  nb_total_boxes;
  int32_t  max_boxes_limit;
  float32_t conf_threshold;
  float32_t iou_threshold;
  float32_t raw_output_scale;
  uint8_t raw_output_zero_point;
  int32_t nb_detect;
} od_yolov5_pp_static_param_t;


/* Exported functions ------------------------------------------------------- */

/*!
 * @brief Resets object detection YoloV5 post processing
 *
 * @param [IN] Input static parameters
 * @retval Error code
 */
int32_t od_yolov5_pp_reset(od_yolov5_pp_static_param_t *pInput_static_param);


/*!
 * @brief Object detector post processing : includes output detector remapping,
 *        nms and score filtering for YoloV5.
 *
 * @param [IN] Pointer on input data
 *             Pointer on output data
 *             pointer on static parameters
 * @retval Error code
 */
int32_t od_yolov5_pp_process(od_yolov5_pp_in_centroid_t *pInput,
                             od_pp_out_t *pOutput,
                             od_yolov5_pp_static_param_t *pInput_static_param);


/*!
 * @brief Object detector post processing : includes output detector remapping,
 *        nms and score filtering for YoloV5 with 8-bits quantized inputs.
 *
 * @param [IN] Pointer on input data
 *             Pointer on output data
 *             pointer on static parameters
 * @retval Error code
 */
int32_t od_yolov5_pp_process_uint8(od_yolov5_pp_in_centroid_t *pInput,
                                   od_pp_out_t *pOutput,
                                   od_yolov5_pp_static_param_t *pInput_static_param);

#ifdef __cplusplus
 }
#endif

#endif      /* __OD_YOLOV5_PP_IF_H__  */


