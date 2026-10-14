package cn.mucang.jiakaoyi.uilib.sso;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.sso.r, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\b\u0010\u0007\u001a\u00020\u0006H\u0014J\b\u0010\b\u001a\u00020\u0006H\u0014J\u0006\u0010\t\u001a\u00020\n¨\u0006\u000b"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginApi;", "Lcn/mucang/android/core/api/BaseApi;", "()V", "check", "Lcn/mucang/jiakaoyi/uilib/sso/SsoUserModel;", "token", "", "getApiHost", "getSignKey", "prepare", "Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginModel;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SsoLoginApi extends cn.mucang.android.core.api.a {
    public final SsoUserModel b(String str) throws ApiException, InternalException, HttpException {
        Object data = httpGet(kotlin.jvm.internal.r.m("/api/open/login/check.htm?token=", str)).getData((Class<Object>) SsoUserModel.class);
        kotlin.jvm.internal.r.d(data, "httpGet(\"/api/open/login…SsoUserModel::class.java)");
        return (SsoUserModel) data;
    }

    public final SsoLoginModel c() throws ApiException, InternalException, HttpException {
        Object data = httpGet("/api/open/login/prepare.htm?ssoName=robot-teach").getData((Class<Object>) SsoLoginModel.class);
        kotlin.jvm.internal.r.d(data, "httpGet(\"/api/open/login…soLoginModel::class.java)");
        return (SsoLoginModel) data;
    }

    @Override // cn.mucang.android.core.api.a
    protected String getApiHost() {
        return "https://sso.kakamobi.com";
    }

    @Override // cn.mucang.android.core.api.a
    protected String getSignKey() {
        return "*#06#jn09j6SViad3SZaCekV5mIpG";
    }
}
