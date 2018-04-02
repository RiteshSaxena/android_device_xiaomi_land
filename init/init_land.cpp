/*
   Copyright (c) 2017, The LineageOS Project

   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are
   met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of The Linux Foundation nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.

   THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
   WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
   MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
   ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
   BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
   BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
   WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
   OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
   IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <cstdlib>
#include <fstream>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/sysinfo.h>
#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_
#include <sys/_system_properties.h>

#include <android-base/file.h>
#include <android-base/properties.h>
#include <android-base/strings.h>

#include "property_service.h"
#include "util.h"
#include "vendor_init.h"

static std::string board_id;

using android::base::GetProperty;
using android::base::Trim;
using android::init::property_set;

void property_override(char const prop[], char const value[])
{
    prop_info *pi;

    pi = (prop_info*) __system_property_find(prop);
    if (pi)
        __system_property_update(pi, value, strlen(value));
    else
        __system_property_add(prop, strlen(prop), value, strlen(value));
}

static void init_alarm_boot_properties()
{
    char const *boot_reason_file = "/proc/sys/kernel/boot_reason";
    char const *power_off_alarm_file = "/persist/alarm/powerOffAlarmSet";
    std::string boot_reason;
    std::string power_off_alarm;
    std::string tmp = GetProperty("ro.boot.alarmboot", "");

    if (android::base::ReadFileToString(boot_reason_file, &boot_reason)
            && android::base::ReadFileToString(power_off_alarm_file, &power_off_alarm)) {
        /*
         * Setup ro.alarm_boot value to true when it is RTC triggered boot up
         * For existing PMIC chips, the following mapping applies
         * for the value of boot_reason:
         *
         * 0 -> unknown
         * 1 -> hard reset
         * 2 -> sudden momentary power loss (SMPL)
         * 3 -> real time clock (RTC)
         * 4 -> DC charger inserted
         * 5 -> USB charger insertd
         * 6 -> PON1 pin toggled (for secondary PMICs)
         * 7 -> CBLPWR_N pin toggled (for external power supply)
         * 8 -> KPDPWR_N pin toggled (power key pressed)
         */
        if ((Trim(boot_reason) == "3" || tmp == "true")
                && Trim(power_off_alarm) == "1")
            property_set("ro.alarm_boot", "true");
        else
            property_set("ro.alarm_boot", "false");
    }
}

void init_variant_properties()
{

    std::ifstream fin;
    std::string buf;

    std::string product = GetProperty("ro.product.name", "");
    if (product.find("land") == std::string::npos)
        return;

    fin.open("/proc/cmdline");
    while (std::getline(fin, buf, ' '))
        if (buf.find("board_id") != std::string::npos)
            break;
    fin.close();

    if (buf.find("S88537AA1") != std::string::npos) {
        property_override("ro.build.display.wtid", "SW_S88537AA1_V090_M20_MP_XM");
        property_override("ro.vendor.build.display.wtid", "SW_S88537AA1_V090_M20_MP_XM");
    } else if (buf.find("S88537AB1") != std::string::npos) {
        property_override("ro.build.display.wtid", "SW_S88537AB1_V090_M20_MP_XM");
        property_override("ro.vendor.build.display.wtid", "SW_S88537AB1_V090_M20_MP_XM");
    } else if (buf.find("S88537AC1") != std::string::npos) {
        property_override("ro.build.display.wtid", "SW_S88537AC1_V090_M20_MP_XM");
        property_override("ro.vendor.build.display.wtid", "SW_S88537AC1_V090_M20_MP_XM");
    } else if (buf.find("S88537BA1") != std::string::npos) {
        property_override("ro.build.display.wtid", "SW_S88537BA1_V090_M20_MP_XM");
        property_override("ro.vendor.build.display.wtid", "SW_S88537BA1_V090_M20_MP_XM");
    } else if (buf.find("S88537CA1") != std::string::npos) {
        property_override("ro.build.display.wtid", "SW_S88537CA1_V090_M20_MP_XM");
        property_override("ro.vendor.build.display.wtid", "SW_S88537CA1_V090_M20_MP_XM");
    } else if (buf.find("S88537EC1") != std::string::npos) {
        property_override("ro.build.display.wtid", "SW_S88537EC1_V090_M20_MP_XM");
        property_override("ro.vendor.build.display.wtid", "SW_S88537EC1_V090_M20_MP_XM");
    }

    if (buf.find("S88537AB1") != std::string::npos) {
        property_override("ro.product.model", "Redmi 3X");
        property_override("ro.vendor.product.model", "Redmi 3X");
    } else {
        property_override("ro.product.model", "Redmi 3S");
        property_override("ro.vendor.product.model", "Redmi 3X");
    }
}

void vendor_load_properties()
{
    init_alarm_boot_properties();
    init_variant_properties();
}
