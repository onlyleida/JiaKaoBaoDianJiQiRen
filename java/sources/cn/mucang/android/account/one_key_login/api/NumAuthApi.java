package cn.mucang.android.account.one_key_login.api;

import cn.mucang.android.account.api.data.NumAuthResponse;
import cn.mucang.android.account.g.b;
import cn.mucang.android.core.api.ApiResponse;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.core.utils.r0;
import kotlin.Metadata;
import kotlin.collections.u;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.account.j.p.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0014J\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u00042\u0006\u0010\t\u001a\u00020\u0004¨\u0006\n"}, d2 = {"Lcn/mucang/android/account/one_key_login/api/NumAuthApi;", "Lcn/mucang/android/account/api/AccountCacheBaseApi;", "()V", "getApiHost", "", "getSignKey", "numberAuth", "Lcn/mucang/android/account/api/data/NumAuthResponse;", "token", "phoneNum", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class NumAuthApi extends b {
    public final NumAuthResponse b(String str, String phoneNum) throws ApiException, InternalException, HttpException {
        r.e(phoneNum, "phoneNum");
        ApiResponse apiResponseHttpPost = httpPost("/api/open/verify/verify-phone.htm", u.m(new MucangNameValuePair("phone", phoneNum), new MucangNameValuePair("accessCode", str), new MucangNameValuePair("outId", r0.b(16))));
        if (apiResponseHttpPost == null || !apiResponseHttpPost.isSuccess()) {
            return null;
        }
        return (NumAuthResponse) apiResponseHttpPost.getData(NumAuthResponse.class);
    }

    @Override // cn.mucang.android.account.g.b, cn.mucang.android.core.api.a
    protected String getApiHost() {
        return MucangConfig.v() ? "https://dypns.ttt.mucang.cn" : "https://dypns.mucang.cn";
    }

    @Override // cn.mucang.android.account.g.b, cn.mucang.android.core.api.a
    protected String getSignKey() {
        return "*#06#b253PIJ2b5ZvhZedmqeCfHNF";
    }
}
