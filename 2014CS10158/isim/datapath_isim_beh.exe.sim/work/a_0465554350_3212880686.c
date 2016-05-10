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
static const char *ng0 = "D:/Prashant/Q2/alunew/register32.vhd";
extern char *IEEE_P_1242562249;

unsigned char ieee_p_1242562249_sub_2110375371_1035706684(char *, char *, char *, char *, char *);


static void work_a_0465554350_3212880686_p_0(char *t0)
{
    char t18[16];
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
    char *t11;
    char *t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t19;
    char *t20;
    int t21;
    unsigned int t22;
    unsigned char t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(53, ng0);
    t4 = (t0 + 1152U);
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
LAB3:    t4 = (t0 + 3312);
    *((int *)t4) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(53, ng0);
    t20 = (t0 + 1032U);
    t24 = *((char **)t20);
    t20 = (t0 + 3392);
    t25 = (t20 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t24, 32U);
    xsi_driver_first_trans_fast_port(t20);
    goto LAB3;

LAB5:    t14 = (t0 + 1832U);
    t15 = *((char **)t14);
    t14 = (t0 + 5108U);
    t16 = (t0 + 5174);
    t19 = (t18 + 0U);
    t20 = (t19 + 0U);
    *((int *)t20) = 0;
    t20 = (t19 + 4U);
    *((int *)t20) = 0;
    t20 = (t19 + 8U);
    *((int *)t20) = 1;
    t21 = (0 - 0);
    t22 = (t21 * 1);
    t22 = (t22 + 1);
    t20 = (t19 + 12U);
    *((unsigned int *)t20) = t22;
    t23 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t15, t14, t16, t18);
    t1 = t23;
    goto LAB7;

LAB8:    t6 = (t0 + 1512U);
    t10 = *((char **)t6);
    t6 = (t0 + 5076U);
    t11 = (t0 + 1672U);
    t12 = *((char **)t11);
    t11 = (t0 + 5092U);
    t13 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t10, t6, t12, t11);
    t2 = t13;
    goto LAB10;

LAB11:    t6 = (t0 + 1192U);
    t7 = *((char **)t6);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    t3 = t9;
    goto LAB13;

}


extern void work_a_0465554350_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0465554350_3212880686_p_0};
	xsi_register_didat("work_a_0465554350_3212880686", "isim/datapath_isim_beh.exe.sim/work/a_0465554350_3212880686.didat");
	xsi_register_executes(pe);
}
