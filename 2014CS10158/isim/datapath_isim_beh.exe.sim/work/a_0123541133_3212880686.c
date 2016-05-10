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

/* This file is designed for use with ISim build 0xc4ca3437 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/Prashant/Q2/alunew/instructionmemory.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
unsigned char ieee_p_1242562249_sub_1781507893_1035706684(char *, char *, char *, int );


static void work_a_0123541133_3212880686_p_0(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    unsigned char t11;
    char *t12;
    char *t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    int t18;
    int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(51, ng0);
    t4 = (t0 + 992U);
    t5 = xsi_signal_has_event(t4);
    if (t5 == 1)
        goto LAB11;

LAB12:    t3 = (unsigned char)0;

LAB13:    if (t3 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(54, ng0);
    t4 = (t0 + 992U);
    t5 = xsi_signal_has_event(t4);
    if (t5 == 1)
        goto LAB23;

LAB24:    t3 = (unsigned char)0;

LAB25:    if (t3 == 1)
        goto LAB20;

LAB21:    t2 = (unsigned char)0;

LAB22:    if (t2 == 1)
        goto LAB17;

LAB18:    t1 = (unsigned char)0;

LAB19:    if (t1 != 0)
        goto LAB14;

LAB16:
LAB15:    xsi_set_current_line(57, ng0);
    t4 = (t0 + 992U);
    t5 = xsi_signal_has_event(t4);
    if (t5 == 1)
        goto LAB35;

LAB36:    t3 = (unsigned char)0;

LAB37:    if (t3 == 1)
        goto LAB32;

LAB33:    t2 = (unsigned char)0;

LAB34:    if (t2 == 1)
        goto LAB29;

LAB30:    t1 = (unsigned char)0;

LAB31:    if (t1 != 0)
        goto LAB26;

LAB28:
LAB27:    t4 = (t0 + 3632);
    *((int *)t4) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(52, ng0);
    t15 = (t0 + 1672U);
    t16 = *((char **)t15);
    t15 = (t0 + 1512U);
    t17 = *((char **)t15);
    t15 = (t0 + 5996U);
    t18 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t17, t15);
    t19 = (t18 - 127);
    t20 = (t19 * -1);
    t21 = (32U * t20);
    t22 = (0U + t21);
    t23 = (t0 + 3712);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t16, 32U);
    xsi_driver_first_trans_delta(t23, t22, 32U, 0LL);
    goto LAB3;

LAB5:    t12 = (t0 + 1352U);
    t13 = *((char **)t12);
    t12 = (t0 + 5980U);
    t14 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t13, t12, 1);
    t1 = t14;
    goto LAB7;

LAB8:    t6 = (t0 + 1192U);
    t10 = *((char **)t6);
    t6 = (t0 + 5964U);
    t11 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t10, t6, 0);
    t2 = t11;
    goto LAB10;

LAB11:    t6 = (t0 + 1032U);
    t7 = *((char **)t6);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    t3 = t9;
    goto LAB13;

LAB14:    xsi_set_current_line(55, ng0);
    t15 = (t0 + 1992U);
    t16 = *((char **)t15);
    t15 = (t0 + 1512U);
    t17 = *((char **)t15);
    t15 = (t0 + 5996U);
    t18 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t17, t15);
    t19 = (t18 - 127);
    t20 = (t19 * -1);
    xsi_vhdl_check_range_of_index(127, 0, -1, t18);
    t21 = (32U * t20);
    t22 = (0 + t21);
    t23 = (t16 + t22);
    t24 = (t0 + 3776);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t23, 32U);
    xsi_driver_first_trans_fast_port(t24);
    goto LAB15;

LAB17:    t12 = (t0 + 1352U);
    t13 = *((char **)t12);
    t12 = (t0 + 5980U);
    t14 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t13, t12, 0);
    t1 = t14;
    goto LAB19;

LAB20:    t6 = (t0 + 1192U);
    t10 = *((char **)t6);
    t6 = (t0 + 5964U);
    t11 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t10, t6, 1);
    t2 = t11;
    goto LAB22;

LAB23:    t6 = (t0 + 1032U);
    t7 = *((char **)t6);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    t3 = t9;
    goto LAB25;

LAB26:    xsi_set_current_line(58, ng0);
    t15 = (t0 + 1672U);
    t16 = *((char **)t15);
    t15 = (t0 + 1512U);
    t17 = *((char **)t15);
    t15 = (t0 + 5996U);
    t18 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t17, t15);
    t19 = (t18 - 127);
    t20 = (t19 * -1);
    t21 = (32U * t20);
    t22 = (0U + t21);
    t23 = (t0 + 3712);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t16, 32U);
    xsi_driver_first_trans_delta(t23, t22, 32U, 0LL);
    xsi_set_current_line(59, ng0);
    t4 = (t0 + 1992U);
    t6 = *((char **)t4);
    t4 = (t0 + 1512U);
    t7 = *((char **)t4);
    t4 = (t0 + 5996U);
    t18 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t7, t4);
    t19 = (t18 - 127);
    t20 = (t19 * -1);
    xsi_vhdl_check_range_of_index(127, 0, -1, t18);
    t21 = (32U * t20);
    t22 = (0 + t21);
    t10 = (t6 + t22);
    t12 = (t0 + 3776);
    t13 = (t12 + 56U);
    t15 = *((char **)t13);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t10, 32U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB27;

LAB29:    t12 = (t0 + 1352U);
    t13 = *((char **)t12);
    t12 = (t0 + 5980U);
    t14 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t13, t12, 1);
    t1 = t14;
    goto LAB31;

LAB32:    t6 = (t0 + 1192U);
    t10 = *((char **)t6);
    t6 = (t0 + 5964U);
    t11 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t10, t6, 1);
    t2 = t11;
    goto LAB34;

LAB35:    t6 = (t0 + 1032U);
    t7 = *((char **)t6);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    t3 = t9;
    goto LAB37;

}


extern void work_a_0123541133_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0123541133_3212880686_p_0};
	xsi_register_didat("work_a_0123541133_3212880686", "isim/datapath_isim_beh.exe.sim/work/a_0123541133_3212880686.didat");
	xsi_register_executes(pe);
}
