package cn.mucang.android.jiakaoyi.teachingk2.push;

import com.amap.api.maps.model.MyLocationStyle;
import kotlin.Metadata;
import kotlin.Result;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.push.o0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004J\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/push/PushApi;", "Lcn/mucang/android/jiakaoyi/framework/api/JBaseApi;", "()V", "enablePush", "", "enable", "getPushUrl", "Lcn/mucang/android/jiakaoyi/teachingk2/push/AliPushUrl;", "uploadError", MyLocationStyle.ERROR_CODE, "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class PushApi extends cn.mucang.android.jiakaoyi.framework.p002e.n {
    public final boolean m(boolean z) {
        Object objM139constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(Boolean.valueOf(httpGet(kotlin.jvm.internal.r.m("/api/open/application-config/video-config.htm?content=", Integer.valueOf(z ? 1 : 0))).isSuccess()));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
        }
        if (Result.m142exceptionOrNullimpl(objM139constructorimpl) != null) {
            objM139constructorimpl = Boolean.FALSE;
        }
        return ((Boolean) objM139constructorimpl).booleanValue();
    }

    public final AliPushUrl n() {
        return (AliPushUrl) httpGet("/api/open/control-center/get-push-url.htm").getData(AliPushUrl.class);
    }

    public final boolean o(int i) {
        Object objM139constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(Boolean.valueOf(httpGet(kotlin.jvm.internal.r.m("/api/open/control-center/camera-error-upload.htm?errorCode=", Integer.valueOf(i))).isSuccess()));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
        }
        if (Result.m142exceptionOrNullimpl(objM139constructorimpl) != null) {
            objM139constructorimpl = Boolean.FALSE;
        }
        return ((Boolean) objM139constructorimpl).booleanValue();
    }
}
