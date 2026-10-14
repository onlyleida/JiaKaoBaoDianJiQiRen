package cn.mucang.android.core.utils;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Process;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.identity.PrivacyDataManager;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class HookStub {
    public static String getAndroidId() {
        return PrivacyDataManager.e();
    }

    public static Context getApplicationContext() {
        return MucangConfig.getContext().getApplicationContext();
    }

    public static String getImei() {
        return PrivacyDataManager.h();
    }

    public static String getImsi() {
        return PrivacyDataManager.i();
    }

    public static ArrayList<ActivityManager.RunningAppProcessInfo> getRunningAppProcesses() {
        ArrayList<ActivityManager.RunningAppProcessInfo> arrayList = new ArrayList<>();
        try {
            arrayList.add(new ActivityManager.RunningAppProcessInfo(MucangConfig.getContext().getPackageManager().getApplicationInfo(MucangConfig.getContext().getPackageName(), 0).processName, Process.myPid(), new String[]{MucangConfig.getContext().getPackageName()}));
        } catch (PackageManager.NameNotFoundException e2) {
            t.c("Exception", e2);
        }
        return arrayList;
    }

    public static ArrayList<ActivityManager.RunningTaskInfo> getRunningTasks() {
        return new ArrayList<>();
    }
}
