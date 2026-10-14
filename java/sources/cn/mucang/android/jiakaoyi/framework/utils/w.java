package cn.mucang.android.jiakaoyi.framework.utils;

import cn.mucang.android.account.AccountManager;
import cn.mucang.android.account.data.AuthUser;

/* JADX INFO: loaded from: classes2.dex */
public class w {
    public static String a() {
        if (AppUtils.k() || SchoolDeviceUtil.f3622a.a()) {
            return "rule_exam_site_id";
        }
        AuthUser authUserG = AccountManager.h().g();
        if (authUserG == null) {
            return "rule_exam_site_id_";
        }
        return "rule_exam_site_id_" + authUserG.getMucangId();
    }

    public static String b() {
        if (AppUtils.k() || SchoolDeviceUtil.f3622a.a()) {
            return "current_rule_exam_site";
        }
        if (AccountManager.h().g() == null) {
            return "current_rule_exam_site_";
        }
        return "current_rule_exam_site_" + AccountManager.h().g().getMucangId();
    }

    public static String c(long j) {
        if (AppUtils.k() || SchoolDeviceUtil.f3622a.a()) {
            return "current_rule_exam_site_" + j;
        }
        if (AccountManager.h().g() == null) {
            return "current_rule_exam_site_";
        }
        return "current_rule_exam_site_" + j + "_" + AccountManager.h().g().getMucangId();
    }

    public static String d() {
        if (AppUtils.k() || SchoolDeviceUtil.f3622a.a()) {
            return "current_exam_site";
        }
        AuthUser authUserG = AccountManager.h().g();
        if (authUserG == null) {
            return "current_exam_site_";
        }
        return "current_exam_site_" + authUserG.getMucangId();
    }
}
