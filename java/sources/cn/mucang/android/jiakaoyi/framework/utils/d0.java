package cn.mucang.android.jiakaoyi.framework.utils;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.Settings;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.permission.model.PermissionModel;
import cn.mucang.android.core.permission.model.PermissionsResult;
import io.agora.rtc.internal.RtcEngineEvent;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class d0 {

    static class a implements f.a.a.a.j.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ List f3608a;
        final /* synthetic */ f.a.a.a.p009n.c.a b;
        final /* synthetic */ Activity c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String[] f3609d;

        a(List list, f.a.a.a.p009n.c.a aVar, Activity activity, String[] strArr) {
            this.f3608a = list;
            this.b = aVar;
            this.c = activity;
            this.f3609d = strArr;
        }

        @Override // f.a.a.a.j.c
        public void onActivityResult(int i, int i2, Intent intent) {
            cn.mucang.android.core.utils.t.a("onActivityResult", "requestCode:" + i);
            if (i == 1002) {
                if (Environment.isExternalStorageManager()) {
                    cn.mucang.android.core.utils.t.a("onActivityResult", "requestPermissions:");
                    cn.mucang.android.core.utils.z.d(this.c, this.b, this.f3609d);
                    return;
                }
                cn.mucang.android.core.utils.t.a("onActivityResult", "!Environment.isExternalStorageManager():");
                ArrayList arrayList = new ArrayList();
                if (this.f3608a.contains("android.permission.WRITE_EXTERNAL_STORAGE")) {
                    arrayList.add(new PermissionModel("android.permission.WRITE_EXTERNAL_STORAGE", false, true));
                }
                if (this.f3608a.contains("android.permission.READ_EXTERNAL_STORAGE")) {
                    arrayList.add(new PermissionModel("android.permission.READ_EXTERNAL_STORAGE", false, true));
                }
                this.b.permissionsResult(new PermissionsResult(false, arrayList));
            }
        }
    }

    public static boolean a() {
        if (Build.VERSION.SDK_INT >= 23) {
            return Settings.canDrawOverlays(MucangConfig.getContext());
        }
        return true;
    }

    static /* synthetic */ void b(f.a.a.a.p009n.c.a aVar, PermissionModel permissionModel, PermissionsResult permissionsResult, int i, int i2, Intent intent) {
        if (i == 1101) {
            boolean zA = a();
            if (zA) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("悬浮窗权限申请成功");
            } else {
                cn.mucang.android.jiakaoyi.framework.log.f.o("悬浮窗权限申请失败");
            }
            if (aVar != null) {
                permissionModel.setGranted(zA);
                permissionsResult.setGrantedAll(zA);
                aVar.permissionsResult(permissionsResult);
            }
        }
    }

    public static void c(Activity activity, final f.a.a.a.p009n.c.a aVar) {
        final PermissionsResult permissionsResult = new PermissionsResult();
        final PermissionModel permissionModel = new PermissionModel("android.permission.SYSTEM_ALERT_WINDOW");
        if (a() && aVar != null) {
            permissionModel.setGranted(true);
            permissionsResult.setGrantedAll(true);
            aVar.permissionsResult(permissionsResult);
            return;
        }
        Intent intent = null;
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION");
        } else if (i >= 23) {
            intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION");
            intent.setData(Uri.parse("package:" + MucangConfig.r()));
        }
        if (intent != null) {
            e0.a(activity, "android.permission.SYSTEM_ALERT_WINDOW").c(intent, RtcEngineEvent.EvtType.EVT_TRANSPORT_QUALITY, new f.a.a.a.j.c() { // from class: cn.mucang.android.jiakaoyi.framework.utils.j
                @Override // f.a.a.a.j.c
                public final void onActivityResult(int i2, int i3, Intent intent2) {
                    d0.b(aVar, permissionModel, permissionsResult, i2, i3, intent2);
                }
            });
        }
    }

    public static void d(Activity activity, f.a.a.a.p009n.c.a aVar, String... strArr) {
        if (activity == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 30) {
            cn.mucang.android.core.utils.z.d(activity, aVar, strArr);
            return;
        }
        List listAsList = Arrays.asList(strArr);
        if ((!listAsList.contains("android.permission.WRITE_EXTERNAL_STORAGE") && !listAsList.contains("android.permission.READ_EXTERNAL_STORAGE")) || Environment.isExternalStorageManager()) {
            cn.mucang.android.core.utils.z.d(activity, aVar, strArr);
            return;
        }
        Intent intent = new Intent("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION");
        intent.setData(Uri.parse("package:" + MucangConfig.r()));
        try {
            f.a.a.a.j.a.a(activity).c(intent, 1002, new a(listAsList, aVar, activity, strArr));
        } catch (Exception e2) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("跳转系统设置界面失败: " + q0.d(e2));
            aVar.permissionsResult(new PermissionsResult(false, new ArrayList()));
        }
    }
}
