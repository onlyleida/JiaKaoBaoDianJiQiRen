package cn.mucang.android.account.qrcode;

import android.graphics.Bitmap;
import cn.mucang.android.account.p001qrcode.model.QrAuthUser;
import cn.mucang.android.account.p001qrcode.model.QrCodeModel;
import cn.mucang.android.account.qrcode.api.QrCodeApi;
import cn.mucang.android.account.qrcode.listener.ScanLoginStatusListener;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.utils.s0;
import cn.mucang.sundial.library.qrcode.GZQrCodeHelper;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.text.t;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.account.m.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u001e2\u00020\u0001:\u0002\u001e\u001fB\u0005¢\u0006\u0002\u0010\u0002J\n\u0010\r\u001a\u0004\u0018\u00010\nH\u0007J\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0007J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\b\u0010\u0018\u001a\u00020\u0014H\u0002J\u000e\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0017J\u0012\u0010\u001a\u001a\u00020\u00142\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0007J\u0006\u0010\u001d\u001a\u00020\u0014R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcn/mucang/android/account/qrcode/QrCodeHelper;", "", "()V", "executorService", "Ljava/util/concurrent/ScheduledExecutorService;", "mRetryNum", "", "qrCodeApi", "Lcn/mucang/android/account/qrcode/api/QrCodeApi;", "qrCodeModel", "Lcn/mucang/android/account/qrcode/model/QrCodeModel;", "stopThreadFlag", "", "getQrCode", "getQrCodeBitmap", "Landroid/graphics/Bitmap;", "width", "", "height", "getResult", "", "delayFlag", "scanListener", "Lcn/mucang/android/account/qrcode/listener/ScanLoginStatusListener;", "init", "startListenLoginStatus", "startScanPage", "from", "", "stopListenLoginStatus", "Companion", "QrCodeHelperHolder", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class QrCodeHelper {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f2245f = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f2246a;
    private boolean b;
    private final QrCodeApi c = new QrCodeApi();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private QrCodeModel f2247d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ScheduledExecutorService f2248e;

    /* JADX INFO: renamed from: cn.mucang.android.account.m.b$a */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\n\u001a\u00020\u000bH\u0007J\b\u0010\f\u001a\u00020\rH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/account/qrcode/QrCodeHelper$Companion;", "", "()V", "MAX_RETRY_NUM", "", "SCAN_RESULT_CANCEL", "SCAN_RESULT_LOGIN_SUCCESS", "SCAN_RESULT_SCAN_SUCCESS", "SCAN_RESULT_TIMEOUT", "SCAN_RESULT_WAITING", "doInit", "", "getInstance", "Lcn/mucang/android/account/qrcode/QrCodeHelper;", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final QrCodeHelper a() {
            return b.f2249a.a();
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.account.m.b$b */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÂ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/account/qrcode/QrCodeHelper$QrCodeHelperHolder;", "", "()V", "qrCodeHelper", "Lcn/mucang/android/account/qrcode/QrCodeHelper;", "getQrCodeHelper", "()Lcn/mucang/android/account/qrcode/QrCodeHelper;", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f2249a = new b();
        private static final QrCodeHelper b;

        static {
            QrCodeHelper qrCodeHelper = new QrCodeHelper();
            b = qrCodeHelper;
            qrCodeHelper.f();
        }

        private b() {
        }

        public final QrCodeHelper a() {
            return b;
        }
    }

    private final void d(boolean z, final ScanLoginStatusListener scanLoginStatusListener) {
        int i = this.f2246a + 1;
        this.f2246a = i;
        if (i >= 30) {
            scanLoginStatusListener.onCallback(GZQrCodeHelper.SCAN_RESULT_TIMEOUT, null);
            return;
        }
        if (this.b) {
            return;
        }
        long j = z ? 2L : 0L;
        ScheduledExecutorService scheduledExecutorService = this.f2248e;
        if (scheduledExecutorService == null || scheduledExecutorService == null) {
            return;
        }
        scheduledExecutorService.schedule(new Runnable() { // from class: cn.mucang.android.account.m.a
            @Override // java.lang.Runnable
            public final void run() {
                QrCodeHelper.e(this.f2244a, scanLoginStatusListener);
            }
        }, j, TimeUnit.SECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(QrCodeHelper this$0, ScanLoginStatusListener scanListener) {
        String token;
        r.e(this$0, "this$0");
        r.e(scanListener, "$scanListener");
        QrCodeModel qrCodeModel = this$0.f2247d;
        String str = "";
        if (qrCodeModel != null && (token = qrCodeModel.getToken()) != null) {
            str = token;
        }
        if (t.r(str)) {
            scanListener.onCallback(GZQrCodeHelper.SCAN_RESULT_TIMEOUT, null);
            return;
        }
        if (this$0.b) {
            return;
        }
        try {
            QrAuthUser qrAuthUserH = this$0.c.h(str);
            if (qrAuthUserH == null) {
                this$0.d(true, scanListener);
                return;
            }
            scanListener.onCallback(qrAuthUserH.getScanLoginStatus(), qrAuthUserH);
            if (qrAuthUserH.getScanLoginStatus() == 0 || qrAuthUserH.getScanLoginStatus() == 1) {
                this$0.d(true, scanListener);
            }
        } catch (Exception e2) {
            if ((e2 instanceof ApiException) && ((ApiException) e2).getErrorCode() == 20040) {
                scanListener.onCallback(GZQrCodeHelper.SCAN_RESULT_TIMEOUT, null);
            } else {
                this$0.d(true, scanListener);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f() {
        this.f2246a = 0;
    }

    public final QrCodeModel b() {
        this.b = false;
        try {
            Result.Companion companion = Result.INSTANCE;
            this.f2247d = this.c.j();
            Result.m139constructorimpl(v.f15822a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(k.a(th));
        }
        return this.f2247d;
    }

    public final Bitmap c(float f2, float f3) {
        f.a.a.a.p.b bVarA;
        b();
        QrCodeModel qrCodeModel = this.f2247d;
        if (qrCodeModel == null) {
            return null;
        }
        String protocolUrl = qrCodeModel == null ? null : qrCodeModel.getProtocolUrl();
        if ((protocolUrl == null || t.r(protocolUrl)) || (bVarA = f.a.a.a.p.a.a()) == null) {
            return null;
        }
        QrCodeModel qrCodeModel2 = this.f2247d;
        return bVarA.createQRImage(qrCodeModel2 != null ? qrCodeModel2.getProtocolUrl() : null, s0.a(f2), s0.a(f3));
    }

    public final void h(ScanLoginStatusListener scanListener) {
        r.e(scanListener, "scanListener");
        this.b = false;
        this.f2246a = 0;
        if (this.f2248e == null) {
            this.f2248e = Executors.newSingleThreadScheduledExecutor();
        }
        d(false, scanListener);
    }

    public final void i() {
        v vVar;
        this.b = true;
        try {
            Result.Companion companion = Result.INSTANCE;
            ScheduledExecutorService scheduledExecutorService = this.f2248e;
            if (scheduledExecutorService == null) {
                vVar = null;
            } else {
                scheduledExecutorService.shutdown();
                vVar = v.f15822a;
            }
            Result.m139constructorimpl(vVar);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(k.a(th));
        }
        this.f2248e = null;
    }
}
