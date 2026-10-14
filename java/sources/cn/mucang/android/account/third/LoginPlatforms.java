package cn.mucang.android.account.third;

import com.tencent.connect.common.Constants;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.account.third.v, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0010B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000b\u001a\u00020\u0004H\u0007J\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\tJ\u0010\u0010\u000f\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/account/third/LoginPlatforms;", "", "()V", Constants.SOURCE_QQ, "", "WECHAT", "XIAOMI", "platforms", "", "Lcn/mucang/android/account/third/LoginPlatform;", "getPlatform", "thirdPartyValue", "registerPlatform", "", Constants.PARAM_PLATFORM, "requirePlatform", "Platform", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LoginPlatforms {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LoginPlatforms f2300a;
    private static final Map<String, u> b;

    static {
        LoginPlatforms loginPlatforms = new LoginPlatforms();
        f2300a = loginPlatforms;
        b = new LinkedHashMap();
        loginPlatforms.b(new w());
        loginPlatforms.b(new a0());
    }

    private LoginPlatforms() {
    }

    public final u a(String thirdPartyValue) {
        kotlin.jvm.internal.r.e(thirdPartyValue, "thirdPartyValue");
        return b.get(thirdPartyValue);
    }

    public final void b(u platform) {
        kotlin.jvm.internal.r.e(platform, "platform");
        Map<String, u> map = b;
        String strF = platform.f();
        kotlin.jvm.internal.r.d(strF, "platform.thirdPartyValue");
        map.put(strF, platform);
    }

    public final u c(String thirdPartyValue) {
        kotlin.jvm.internal.r.e(thirdPartyValue, "thirdPartyValue");
        u uVar = b.get(thirdPartyValue);
        if (uVar != null) {
            return uVar;
        }
        throw new IllegalArgumentException(kotlin.jvm.internal.r.m("找不到指定的登录平台：", thirdPartyValue));
    }
}
