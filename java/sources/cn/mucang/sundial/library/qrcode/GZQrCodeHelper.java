package cn.mucang.sundial.library.qrcode;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.sundial.library.qrcode.api.GZQrCodeApi;
import cn.mucang.sundial.library.qrcode.listener.GZScanLoginStatusListener;
import cn.mucang.sundial.library.qrcode.model.GZQrAuthUser;
import cn.mucang.sundial.library.qrcode.model.GZQrCodeModel;
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

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 !2\u00020\u0001:\u0002!\"B\u0007¢\u0006\u0004\b \u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u001f\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\u000b\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u0015\u0010\u000f\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\r\u0010\u0011\u001a\u00020\u0002¢\u0006\u0004\b\u0011\u0010\u0004R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0015\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0018\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010\u001d\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010\u001f\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010\u0019¨\u0006#"}, d2 = {"Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;", "", "Lkotlin/v;", "init", "()V", "", "delayFlag", "Lcn/mucang/sundial/library/qrcode/listener/GZScanLoginStatusListener;", "scanListener", "getResult", "(ZLcn/mucang/sundial/library/qrcode/listener/GZScanLoginStatusListener;)V", "isSignIn", "Lcn/mucang/sundial/library/qrcode/model/GZQrCodeModel;", "getQrCode", "(Z)Lcn/mucang/sundial/library/qrcode/model/GZQrCodeModel;", "startListenLoginStatus", "(Lcn/mucang/sundial/library/qrcode/listener/GZScanLoginStatusListener;)V", "stopListenLoginStatus", "qrCodeModel", "Lcn/mucang/sundial/library/qrcode/model/GZQrCodeModel;", "Lcn/mucang/sundial/library/qrcode/api/GZQrCodeApi;", "qrCodeApi", "Lcn/mucang/sundial/library/qrcode/api/GZQrCodeApi;", "", "startCount", "I", "Ljava/util/concurrent/ScheduledExecutorService;", "executorService", "Ljava/util/concurrent/ScheduledExecutorService;", "stopThreadFlag", "Z", "mRetryNum", "<init>", "Companion", "QrCodeHelperHolder", "library_release"}, k = 1, mv = {1, 1, 15})
public final class GZQrCodeHelper {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int MAX_RETRY_NUM = 120;
    public static final int SCAN_RESULT_CANCEL = 3;
    public static final int SCAN_RESULT_LOGIN_SUCCESS = 2;
    public static final int SCAN_RESULT_SCAN_SUCCESS = 1;
    public static final int SCAN_RESULT_TIMEOUT = 20040;
    public static final int SCAN_RESULT_WAITING = 0;
    private ScheduledExecutorService executorService;
    private int mRetryNum;
    private final GZQrCodeApi qrCodeApi = new GZQrCodeApi();
    private GZQrCodeModel qrCodeModel;
    private int startCount;
    private boolean stopThreadFlag;

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0010\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\u0006\u0010\u0007R\u0016\u0010\t\u001a\u00020\b8\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0016\u0010\u000b\u001a\u00020\b8\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\nR\u0016\u0010\f\u001a\u00020\b8\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\nR\u0016\u0010\r\u001a\u00020\b8\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\nR\u0016\u0010\u000e\u001a\u00020\b8\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000e\u0010\nR\u0016\u0010\u000f\u001a\u00020\b8\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000f\u0010\n¨\u0006\u0011"}, d2 = {"Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$Companion;", "", "Lkotlin/v;", "doInit", "()V", "Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;", "getInstance", "()Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;", "", "MAX_RETRY_NUM", "I", "SCAN_RESULT_CANCEL", "SCAN_RESULT_LOGIN_SUCCESS", "SCAN_RESULT_SCAN_SUCCESS", "SCAN_RESULT_TIMEOUT", "SCAN_RESULT_WAITING", "<init>", "library_release"}, k = 1, mv = {1, 1, 15})
    public static final class Companion {
        private Companion() {
        }

        public final void doInit() {
            getInstance();
        }

        public final GZQrCodeHelper getInstance() {
            return QrCodeHelperHolder.INSTANCE.getQrCodeHelper();
        }

        public /* synthetic */ Companion(o oVar) {
            this();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\bÂ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$QrCodeHelperHolder;", "", "Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;", "qrCodeHelper", "Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;", "getQrCodeHelper", "()Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
    private static final class QrCodeHelperHolder {
        public static final QrCodeHelperHolder INSTANCE = new QrCodeHelperHolder();
        private static final GZQrCodeHelper qrCodeHelper;

        static {
            GZQrCodeHelper gZQrCodeHelper = new GZQrCodeHelper();
            qrCodeHelper = gZQrCodeHelper;
            gZQrCodeHelper.init();
        }

        private QrCodeHelperHolder() {
        }

        public final GZQrCodeHelper getQrCodeHelper() {
            return qrCodeHelper;
        }
    }

    public static final void doInit() {
        INSTANCE.doInit();
    }

    public static final GZQrCodeHelper getInstance() {
        return INSTANCE.getInstance();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void getResult(boolean delayFlag, final GZScanLoginStatusListener scanListener) {
        int i = this.mRetryNum + 1;
        this.mRetryNum = i;
        if (i >= 120) {
            scanListener.onCallback(SCAN_RESULT_TIMEOUT, null);
            return;
        }
        if (this.stopThreadFlag) {
            return;
        }
        long j = delayFlag ? 2L : 0L;
        ScheduledExecutorService scheduledExecutorService = this.executorService;
        if (scheduledExecutorService == null || scheduledExecutorService == null) {
            return;
        }
        scheduledExecutorService.schedule(new Runnable() { // from class: cn.mucang.sundial.library.qrcode.GZQrCodeHelper.getResult.1
            @Override // java.lang.Runnable
            public final void run() {
                String qrToken;
                GZQrCodeModel gZQrCodeModel = GZQrCodeHelper.this.qrCodeModel;
                if (gZQrCodeModel == null || (qrToken = gZQrCodeModel.getQrToken()) == null) {
                    qrToken = "";
                }
                if (t.r(qrToken)) {
                    scanListener.onCallback(GZQrCodeHelper.SCAN_RESULT_TIMEOUT, null);
                    return;
                }
                if (GZQrCodeHelper.this.stopThreadFlag) {
                    return;
                }
                try {
                    GZQrAuthUser loginStatusResult = GZQrCodeHelper.this.qrCodeApi.getLoginStatusResult(qrToken);
                    if (loginStatusResult == null) {
                        GZQrCodeHelper.this.getResult(true, scanListener);
                        return;
                    }
                    scanListener.onCallback(loginStatusResult.getScanLoginStatus(), loginStatusResult);
                    if (loginStatusResult.getScanLoginStatus() == 0 || loginStatusResult.getScanLoginStatus() == 1) {
                        GZQrCodeHelper.this.getResult(true, scanListener);
                    }
                } catch (Exception e2) {
                    if ((e2 instanceof ApiException) && ((ApiException) e2).getErrorCode() == 20040) {
                        scanListener.onCallback(GZQrCodeHelper.SCAN_RESULT_TIMEOUT, null);
                    } else {
                        GZQrCodeHelper.this.getResult(true, scanListener);
                    }
                }
            }
        }, j, TimeUnit.SECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void init() {
        this.mRetryNum = 0;
    }

    public final GZQrCodeModel getQrCode(boolean isSignIn) {
        this.stopThreadFlag = false;
        try {
            Result.Companion companion = Result.INSTANCE;
            this.qrCodeModel = this.qrCodeApi.getQrCode(isSignIn);
            Result.m139constructorimpl(v.f15822a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(k.a(th));
        }
        return this.qrCodeModel;
    }

    public final void startListenLoginStatus(GZScanLoginStatusListener scanListener) {
        r.e(scanListener, "scanListener");
        this.stopThreadFlag = false;
        this.mRetryNum = 0;
        this.startCount++;
        if (this.executorService == null) {
            this.executorService = Executors.newSingleThreadScheduledExecutor();
        }
        getResult(false, scanListener);
    }

    public final void stopListenLoginStatus() {
        v vVar;
        this.stopThreadFlag = true;
        try {
            Result.Companion companion = Result.INSTANCE;
            ScheduledExecutorService scheduledExecutorService = this.executorService;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.shutdown();
                vVar = v.f15822a;
            } else {
                vVar = null;
            }
            Result.m139constructorimpl(vVar);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(k.a(th));
        }
        this.executorService = null;
    }
}
