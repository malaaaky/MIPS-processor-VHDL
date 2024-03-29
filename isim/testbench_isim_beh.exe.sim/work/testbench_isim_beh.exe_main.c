/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *WORK_P_2068306407;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;
char *WORK_P_1776293814;
char *WORK_P_4048807323;
char *WORK_P_0082550412;
char *WORK_P_4041281192;
char *IEEE_P_0774719531;
char *IEEE_P_1242562249;
char *IEEE_P_3564397177;
char *STD_TEXTIO;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_0774719531_init();
    ieee_p_1242562249_init();
    work_p_4041281192_init();
    work_p_0082550412_init();
    std_textio_init();
    ieee_p_3564397177_init();
    ieee_p_3620187407_init();
    work_p_1776293814_init();
    work_p_4048807323_init();
    work_p_2068306407_init();
    work_a_0290344353_3212880686_init();
    work_a_3714479754_3212880686_init();
    work_a_0975640890_3212880686_init();
    work_a_2166523021_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_0899623836_3212880686_init();
    work_a_0734482308_3212880686_init();
    work_a_1218917173_3212880686_init();
    work_a_1153420228_3212880686_init();
    work_a_2110357975_3212880686_init();
    work_a_2575814523_3212880686_init();
    work_a_2399776393_3212880686_init();
    work_a_1037769429_3212880686_init();
    work_a_2991416129_3212880686_init();
    work_a_1208337864_3212880686_init();
    work_a_1430113433_3212880686_init();
    work_a_1130845995_0831356973_init();
    work_a_3720894149_0831356973_init();
    work_a_2889154880_3212880686_init();
    work_a_1949178628_1985558087_init();


    xsi_register_tops("work_a_1949178628_1985558087");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    WORK_P_2068306407 = xsi_get_engine_memory("work_p_2068306407");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    WORK_P_1776293814 = xsi_get_engine_memory("work_p_1776293814");
    WORK_P_4048807323 = xsi_get_engine_memory("work_p_4048807323");
    WORK_P_0082550412 = xsi_get_engine_memory("work_p_0082550412");
    WORK_P_4041281192 = xsi_get_engine_memory("work_p_4041281192");
    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");

    return xsi_run_simulation(argc, argv);

}
