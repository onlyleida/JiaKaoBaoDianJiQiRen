package cn.mucang.jiakaoyi.uilib.helper;

import android.annotation.SuppressLint;
import android.app.Application;
import android.os.Build;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.permission.model.PermissionsResult;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.z;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.SimInfoUtils;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.jiakaoyi.uilib.api.DeviceConfigApi;
import f.a.a.a.p009n.c.a;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.o.c, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007J\b\u0010\u0005\u001a\u00020\u0004H\u0002¨\u0006\u0006"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/helper/SimUploadHelper;", "", "()V", "uploadSim", "", "uploadSimInfo", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SimUploadHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SimUploadHelper f9458a = new SimUploadHelper();

    private SimUploadHelper() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(PermissionsResult permissionsResult) {
        f.o(r.m("检查权限后上传  grantedAll ", Boolean.valueOf(permissionsResult.getGrantedAll())));
        f9458a.e();
    }

    private final void e() {
        n0.a(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.o.b
            @Override // java.lang.Runnable
            public final void run() {
                SimUploadHelper.f();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f() {
        String str;
        try {
            SimInfoUtils simInfoUtils = SimInfoUtils.f3629a;
            Application context = MucangConfig.getContext();
            r.d(context, "getContext()");
            String strA = simInfoUtils.a(context);
            Application context2 = MucangConfig.getContext();
            r.d(context2, "getContext()");
            String strB = simInfoUtils.b(context2);
            Application context3 = MucangConfig.getContext();
            r.d(context3, "getContext()");
            String strC = simInfoUtils.c(context3);
            f.o(r.m("sim卡 imsi ", strC));
            if (new DeviceConfigApi().p(strA, strB, strC)) {
                str = "上传sim卡信息成功 iccid1:" + strA + " iccid2:" + strB + " imsi:" + strC;
            } else {
                str = "上传sim卡信息失败 iccid1:" + strA + " iccid2:" + strB + " imsi:" + strC;
            }
            f.o(str);
        } catch (Exception e2) {
            e2.printStackTrace();
            t.d("MainBusinessManager", e2.toString());
            f.o(r.m("/api/open/device/record-sim-info.htm 上传sim卡信息失败 ", e2));
        }
    }

    @SuppressLint({"MissingPermission", "HardwareIds"})
    public final void c() {
        if (Build.VERSION.SDK_INT >= 22) {
            z.d(MucangConfig.i(), new a() { // from class: cn.mucang.jiakaoyi.uilib.o.a
                @Override // f.a.a.a.p009n.c.a
                public final void permissionsResult(PermissionsResult permissionsResult) {
                    SimUploadHelper.d(permissionsResult);
                }
            }, "android.permission.READ_PHONE_STATE");
        } else {
            e();
        }
    }
}
