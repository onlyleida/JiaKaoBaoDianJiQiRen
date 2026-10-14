package cn.mucang.android.core.identity;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.l0;
import cn.mucang.android.core.utils.u;
import com.amap.api.maps.model.MyLocationStyle;
import com.bun.miitmdid.core.ErrorCode;
import com.bun.miitmdid.core.MdidSdkHelper;
import com.bun.miitmdid.interfaces.IIdentifierListener;
import com.bun.miitmdid.interfaces.IdSupplier;
import java.util.HashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.t;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.core.identity.j, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0002J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\n\u0010\u001a\u001a\u0004\u0018\u00010\u0004H\u0007J\u0018\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\b\u0010\u001e\u001a\u00020\u0016H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcn/mucang/android/core/identity/OaIdFetcher;", "", "()V", "CONFIG_KEY", "", "TAG", "config", "Lcn/mucang/android/core/identity/OaidConfig;", "doneRunnable", "Ljava/lang/Runnable;", "getDoneRunnable", "()Ljava/lang/Runnable;", "setDoneRunnable", "(Ljava/lang/Runnable;)V", "loadingState", "Ljava/util/concurrent/atomic/AtomicBoolean;", "oaId", "supportState", "codeToMsg", "code", "", "doReload", "", "doSaveFromMSA", "idSupplier", "Lcom/bun/miitmdid/interfaces/IdSupplier;", "getOAID", "postErrorEvent", "duration", "", "reloadFromMsa", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class OaIdFetcher {
    private static volatile String c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Runnable f2566f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final OaIdFetcher f2563a = new OaIdFetcher();
    private static final OaidConfig b = new OaidConfig("MdidSdkHelper.InitSdk");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final AtomicBoolean f2564d = new AtomicBoolean(false);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final AtomicBoolean f2565e = new AtomicBoolean(true);

    private OaIdFetcher() {
    }

    private final String a(int i) {
        switch (i) {
            case ErrorCode.INIT_ERROR_BEGIN /* 1008610 */:
                return "初始化出错";
            case ErrorCode.INIT_ERROR_MANUFACTURER_NOSUPPORT /* 1008611 */:
                return "不支持的设备厂商";
            case ErrorCode.INIT_ERROR_DEVICE_NOSUPPORT /* 1008612 */:
                return "不支持的设备";
            case ErrorCode.INIT_ERROR_LOAD_CONFIGFILE /* 1008613 */:
                return "加载配置文件出错";
            case ErrorCode.INIT_ERROR_RESULT_DELAY /* 1008614 */:
                return "异步获取";
            case ErrorCode.INIT_HELPER_CALL_ERROR /* 1008615 */:
                return "反射调用出错";
            default:
                return "未知错误";
        }
    }

    private final synchronized void b() {
        if (c == null) {
            AtomicBoolean atomicBoolean = f2564d;
            if (!atomicBoolean.get()) {
                atomicBoolean.set(true);
                MucangConfig.f(new Runnable() { // from class: cn.mucang.android.core.identity.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        OaIdFetcher.c();
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c() {
        boolean z = true;
        try {
            OaIdFetcher oaIdFetcher = f2563a;
            c = OaidStorage.f2568a.get();
            try {
                String str = c;
                if (str != null && !t.r(str)) {
                    z = false;
                }
                if (z) {
                    OaidConfig oaidConfig = b;
                    if (oaidConfig.d()) {
                        oaidConfig.a();
                        oaIdFetcher.m();
                        oaidConfig.b();
                    }
                    f2564d.set(false);
                    OaidStorage.c();
                    u.f(new Runnable() { // from class: cn.mucang.android.core.identity.b
                        @Override // java.lang.Runnable
                        public final void run() {
                            OaIdFetcher.d();
                        }
                    });
                }
            } catch (Throwable th) {
                try {
                    cn.mucang.android.core.utils.t.e("oaid", "OAID:从MSA加载失败", th);
                    b.c();
                } finally {
                    f2564d.set(false);
                    OaidStorage.c();
                    u.f(new Runnable() { // from class: cn.mucang.android.core.identity.b
                        @Override // java.lang.Runnable
                        public final void run() {
                            OaIdFetcher.d();
                        }
                    });
                }
            }
        } catch (Throwable th2) {
            try {
                cn.mucang.android.core.utils.t.e("oaid", "OAID:从Storage加载失败", th2);
                try {
                    String str2 = c;
                    if (str2 != null && !t.r(str2)) {
                        z = false;
                    }
                    if (z) {
                        OaidConfig oaidConfig2 = b;
                        if (oaidConfig2.d()) {
                            oaidConfig2.a();
                            f2563a.m();
                            oaidConfig2.b();
                        }
                    }
                } catch (Throwable th3) {
                    try {
                        cn.mucang.android.core.utils.t.e("oaid", "OAID:从MSA加载失败", th3);
                        b.c();
                    } finally {
                        f2564d.set(false);
                        OaidStorage.c();
                        u.f(new Runnable() { // from class: cn.mucang.android.core.identity.b
                            @Override // java.lang.Runnable
                            public final void run() {
                                OaIdFetcher.d();
                            }
                        });
                    }
                }
            } catch (Throwable th4) {
                try {
                    String str3 = c;
                    if (str3 != null && !t.r(str3)) {
                        z = false;
                    }
                    if (z) {
                        OaidConfig oaidConfig3 = b;
                        if (oaidConfig3.d()) {
                            oaidConfig3.a();
                            f2563a.m();
                            oaidConfig3.b();
                        }
                    }
                } catch (Throwable th5) {
                    try {
                        cn.mucang.android.core.utils.t.e("oaid", "OAID:从MSA加载失败", th5);
                        b.c();
                    } finally {
                        f2564d.set(false);
                        OaidStorage.c();
                        u.f(new Runnable() { // from class: cn.mucang.android.core.identity.b
                            @Override // java.lang.Runnable
                            public final void run() {
                                OaIdFetcher.d();
                            }
                        });
                    }
                }
                throw th4;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d() {
        Runnable runnableF = f2563a.f();
        if (runnableF == null) {
            return;
        }
        runnableF.run();
    }

    private final void e(IdSupplier idSupplier) {
        try {
            String oaid = idSupplier.getOAID();
            if (oaid == null || oaid.length() == 0) {
                l0.a("core", "OAID:支持但是为空");
            } else {
                c = idSupplier.getOAID();
                OaidStorage.f2568a.b(c);
            }
        } catch (Exception e2) {
            cn.mucang.android.core.utils.t.e("oaid", "OAID:storage保存失败", e2);
        }
    }

    public static final String g() {
        if (c != null || f2564d.get() || !f2565e.get()) {
            return c;
        }
        f2563a.b();
        return null;
    }

    private final void l(int i, long j) {
        HashMap map = new HashMap();
        map.put(MyLocationStyle.ERROR_CODE, String.valueOf(i));
        l0.b("core", "OAID:MdidSdkHelper初始化失败", map, j);
    }

    private final void m() throws InterruptedException {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final long jCurrentTimeMillis = System.currentTimeMillis();
        int iInitSdk = MdidSdkHelper.InitSdk(MucangConfig.getContext(), true, new IIdentifierListener() { // from class: cn.mucang.android.core.identity.c
            @Override // com.bun.miitmdid.interfaces.IIdentifierListener
            public final void OnSupport(boolean z, IdSupplier idSupplier) {
                OaIdFetcher.n(countDownLatch, jCurrentTimeMillis, z, idSupplier);
            }
        });
        if (1008614 != iInitSdk) {
            l(iInitSdk, System.currentTimeMillis() - jCurrentTimeMillis);
            countDownLatch.countDown();
            f2565e.set(false);
        }
        String strA = a(iInitSdk);
        cn.mucang.android.core.utils.t.d("oaid", "OAID:初始化，code:" + iInitSdk + ",msg:" + strA);
        l0.a("core", "OAID:初始化，code:" + iInitSdk + ",msg:" + strA);
        countDownLatch.await();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(final CountDownLatch lock, long j, boolean z, final IdSupplier idSupplier) {
        r.e(lock, "$lock");
        if (z && idSupplier != null && idSupplier.isSupported()) {
            cn.mucang.android.core.utils.t.a("oaid", r.m("OAID:duration:", Long.valueOf(System.currentTimeMillis() - j)));
            MucangConfig.A(new Callable() { // from class: cn.mucang.android.core.identity.d
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return OaIdFetcher.o(idSupplier, lock);
                }
            });
        } else {
            cn.mucang.android.core.utils.t.d("oaid", "OAID:异步获取数据无效");
            lock.countDown();
            f2565e.set(false);
            l0.a("core", "OAID:异步获取数据无效");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final v o(IdSupplier idSupplier, CountDownLatch lock) {
        r.e(lock, "$lock");
        OaIdFetcher oaIdFetcher = f2563a;
        r.d(idSupplier, "idSupplier");
        oaIdFetcher.e(idSupplier);
        lock.countDown();
        return v.f15822a;
    }

    public final Runnable f() {
        return f2566f;
    }

    public final void p(Runnable runnable) {
        f2566f = runnable;
    }
}
