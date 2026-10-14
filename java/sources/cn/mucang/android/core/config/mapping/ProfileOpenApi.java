package cn.mucang.android.core.config.mapping;

import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.core.config.mapping.j, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0014J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004¨\u0006\b"}, d2 = {"Lcn/mucang/android/core/config/mapping/ProfileOpenApi;", "Lcn/mucang/android/core/api/BaseApi;", "()V", "getApiHost", "", "getSignKey", "getTokenByCode", "code", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ProfileOpenApi extends cn.mucang.android.core.api.a {
    public final String b(String code) {
        r.e(code, "code");
        String string = httpGet(r.m("/api/open/app/token.htm?code=", code)).getJsonObject().getJSONObject("data").getString("value");
        r.d(string, "httpGet(\"/api/open/app/t…      .getString(\"value\")");
        return string;
    }

    @Override // cn.mucang.android.core.api.a
    protected String getApiHost() {
        return "https://sentinel.mucang.cn/sso-sentinel";
    }

    @Override // cn.mucang.android.core.api.a
    protected String getSignKey() {
        return "*#06#b253PIJ2b5ZvhZedmqeCfHNF";
    }
}
