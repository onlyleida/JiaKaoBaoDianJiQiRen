package cn.mucang.android.jiakaoyi.teachingk2.dtu;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.r0;
import cn.mucang.jiakaoyi.uilib.api.DeviceConfigApi;
import com.serenegiant.media.Recorder;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.dtu.c, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u001f\u001a\u00020 J\u0006\u0010!\u001a\u00020\u001cJ\u0006\u0010\"\u001a\u00020\u001cJ\u0006\u0010#\u001a\u00020\u001cJ\u0006\u0010$\u001a\u00020 R>\u0010\u0003\u001a&\u0012\f\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005 \u0006*\u0012\u0012\f\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005\u0018\u00010\u00040\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR>\u0010\u000b\u001a&\u0012\f\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005 \u0006*\u0012\u0012\f\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005\u0018\u00010\u00040\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\b\"\u0004\b\r\u0010\nR>\u0010\u000e\u001a&\u0012\f\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005 \u0006*\u0012\u0012\f\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005\u0018\u00010\u00040\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\b\"\u0004\b\u0010\u0010\nR\u000e\u0010\u0011\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R>\u0010\u0012\u001a&\u0012\f\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005 \u0006*\u0012\u0012\f\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005\u0018\u00010\u00040\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\b\"\u0004\b\u0014\u0010\nR\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/dtu/DTUManager;", "", "()V", "ICCID", "Lcn/mucang/android/jiakaoyi/framework/utils/ValueCache;", "", "kotlin.jvm.PlatformType", "getICCID", "()Lcn/mucang/android/jiakaoyi/framework/utils/ValueCache;", "setICCID", "(Lcn/mucang/android/jiakaoyi/framework/utils/ValueCache;)V", "IMEI", "getIMEI", "setIMEI", "PHONE_NUMBER", "getPHONE_NUMBER", "setPHONE_NUMBER", "TAG", "VER", "getVER", "setVER", "dtuModel", "Lcn/mucang/android/jiakaoyi/teachingk2/dtu/DTU_MODEL;", "getDtuModel", "()Lcn/mucang/android/jiakaoyi/teachingk2/dtu/DTU_MODEL;", "setDtuModel", "(Lcn/mucang/android/jiakaoyi/teachingk2/dtu/DTU_MODEL;)V", "isRunning", "", "latch", "Ljava/util/concurrent/CountDownLatch;", "init", "", "isValid", "isValidICCID", "isValidIMEI", "uploadICCID", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DTUManager {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f6993g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DTUManager f6989a = new DTUManager();
    private static r0<String> b = r0.i("key.dtu.version", "");
    private static r0<String> c = r0.i("key.dtu.iccid", "");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static r0<String> f6990d = r0.i("key.dtu.imei", "");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static r0<String> f6991e = r0.i("key.dtu.phone.number", "");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static DTU_MODEL f6992f = DTU_MODEL.NONE;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final CountDownLatch f6994h = new CountDownLatch(1);

    private DTUManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g() {
        DTUManager dTUManager = f6989a;
        f6993g = true;
        f.o("-DTU 开始尝试获取G806型SIM卡信息");
        if (new G806Model().a()) {
            dTUManager.l(DTU_MODEL.G806);
        } else if (new G781Model().d()) {
            dTUManager.l(DTU_MODEL.G781);
        }
        f6994h.countDown();
        f6993g = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h() {
        try {
            f6994h.await(Recorder.CHECK_INTERVAL, TimeUnit.MILLISECONDS);
            if (f6989a.a() == DTU_MODEL.NONE) {
                f.o("-DTU 开始配置G781 TCP客户端");
                if (new G781Model().b()) {
                    f.o("-DTU 配置G781成功");
                } else {
                    f.o("-DTU 配置G781失败");
                }
            }
        } catch (InterruptedException e2) {
            f.o(r.m("-DTU 获取SIM卡信息失败 ", e2.getLocalizedMessage()));
        }
    }

    public final DTU_MODEL a() {
        return f6992f;
    }

    public final r0<String> b() {
        return c;
    }

    public final r0<String> c() {
        return f6990d;
    }

    public final r0<String> d() {
        return f6991e;
    }

    public final r0<String> e() {
        return b;
    }

    public final void f() {
        if (f6993g) {
            return;
        }
        new Thread(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.dtu.b
            @Override // java.lang.Runnable
            public final void run() {
                DTUManager.g();
            }
        }).start();
        new Thread(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.dtu.a
            @Override // java.lang.Runnable
            public final void run() {
                DTUManager.h();
            }
        }).start();
    }

    public final boolean i() {
        return c.b().length() == 20;
    }

    public final void l(DTU_MODEL dtu_model) {
        r.e(dtu_model, "<set-?>");
        f6992f = dtu_model;
    }

    public final void m() throws ApiException, InternalException, HttpException {
        new DeviceConfigApi().p(c.b(), "", "");
    }
}
