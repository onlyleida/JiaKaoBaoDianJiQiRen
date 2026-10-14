package cn.mucang.android.jiakaoyi.teachingk2.assist.intercept;

import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.jiakaoyi.uilib.AutoTeachEvent;
import com.amap.api.fence.GeoFence;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.assist.c.e, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\nR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/assist/intercept/ErrorEventInterceptor;", "Lcn/mucang/android/jiakaoyi/teachingk2/assist/intercept/BaseErrorHandler;", "()V", "TAG", "", "intercept", "", GeoFence.BUNDLE_KEY_FENCESTATUS, "", "interceptTransform", "Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ErrorEventInterceptor extends BaseErrorHandler {
    public static final ErrorEventInterceptor b = new ErrorEventInterceptor();

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.assist.c.e$a */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f6120a;

        static {
            int[] iArr = new int[AutoTeachEvent.values().length];
            iArr[AutoTeachEvent.P0Error.ordinal()] = 1;
            iArr[AutoTeachEvent.CarBrake.ordinal()] = 2;
            iArr[AutoTeachEvent.GpsError.ordinal()] = 3;
            iArr[AutoTeachEvent.NetError.ordinal()] = 4;
            iArr[AutoTeachEvent.ServerError.ordinal()] = 5;
            f6120a = iArr;
        }
    }

    private ErrorEventInterceptor() {
    }

    public static final boolean e(int i) {
        ErrorEventInterceptor errorEventInterceptor = b;
        if (!errorEventInterceptor.a()) {
            return false;
        }
        if (i != -1 && i != 0 && i != 1) {
            if (i == 2) {
                String strA = k0.a(R.string.teachbase_newwork_disconnect);
                r.d(strA, "getString(R.string.teachbase_newwork_disconnect)");
                errorEventInterceptor.c(strA, true);
            } else {
                if (i != 3) {
                    return false;
                }
                String strA2 = k0.a(R.string.teachbase_service_disconnect);
                r.d(strA2, "getString(R.string.teachbase_service_disconnect)");
                errorEventInterceptor.c(strA2, true);
            }
        }
        return true;
    }

    public final boolean f(AutoTeachEvent event) {
        r.e(event, "event");
        int i = a.f6120a[event.ordinal()];
        if (i == 1) {
            return e(-1);
        }
        if (i == 2) {
            return e(0);
        }
        if (i == 3) {
            return e(1);
        }
        if (i == 4) {
            return e(2);
        }
        if (i != 5) {
            return false;
        }
        return e(3);
    }
}
