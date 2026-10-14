package cn.mucang.android.jiakaoyi.teachingk2.level;

import com.mobile.auth.BuildConfig;
import com.mobile.auth.gatewayauth.Constant;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.level.r, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B'\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\n¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelItemStatus;", "", Constant.PROTOCOL_WEBVIEW_NAME, "", BuildConfig.FLAVOR_feat, "userData", "status", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V", "getName", "()Ljava/lang/String;", "getStandard", "getStatus", "()I", "getUserData", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LevelItemStatus {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f7277a;
    private final String b;
    private final int c;

    public LevelItemStatus(String str, String standard, String userData, int i) {
        kotlin.jvm.internal.r.e(standard, "standard");
        kotlin.jvm.internal.r.e(userData, "userData");
        this.f7277a = str;
        this.b = userData;
        this.c = i;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getF7277a() {
        return this.f7277a;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final int getC() {
        return this.c;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final String getB() {
        return this.b;
    }
}
