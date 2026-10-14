package cn.mucang.android.jiakaoyi.teachingk2.autoshuttle.model;

import com.tencent.open.SocialConstants;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.autoshuttle.t.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/model/CarCheckResult;", "", "driveEnable", "", SocialConstants.PARAM_SEND_MSG, "", "(ZLjava/lang/String;)V", "getDriveEnable", "()Z", "setDriveEnable", "(Z)V", "getMsg", "()Ljava/lang/String;", "setMsg", "(Ljava/lang/String;)V", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CarCheckResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f6265a;
    private String b;

    public CarCheckResult(boolean z, String str) {
        this.f6265a = z;
        this.b = str;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final boolean getF6265a() {
        return this.f6265a;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getB() {
        return this.b;
    }
}
