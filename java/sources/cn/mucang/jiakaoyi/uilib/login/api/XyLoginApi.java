package cn.mucang.jiakaoyi.uilib.login.api;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.jiakaoyi.framework.p002e.n;
import cn.mucang.jiakaoyi.uilib.login.model.DeviceType;
import cn.mucang.jiakaoyi.uilib.login.model.LoginData;
import cn.mucang.jiakaoyi.uilib.login.model.LoginType;
import cn.mucang.jiakaoyi.uilib.login.model.XyUserModel;
import com.alibaba.fastjson.JSON;
import kotlin.Metadata;
import kotlin.collections.u;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.login.o.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0014J \u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\rJ\u0006\u0010\u000e\u001a\u00020\u000f¨\u0006\u0010"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/login/api/XyLoginApi;", "Lcn/mucang/android/jiakaoyi/framework/api/JBaseApi;", "()V", "getApiHost", "", "getSignKey", "login", "Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;", "loginType", "Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;", "deviceType", "Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;", "data", "Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;", "logout", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class XyLoginApi extends n {
    @Override // cn.mucang.android.jiakaoyi.framework.p002e.n, cn.mucang.android.core.api.a
    protected String getApiHost() {
        return MucangConfig.v() ? "https://xy-user-login.ttt.mucang.cn" : "https://xy-user-login.kakamobi.cn";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.p002e.n, cn.mucang.android.core.api.a
    protected String getSignKey() {
        return "*#06#k4qFSEaWl6moQoWRlpF1pHJH";
    }

    public final XyUserModel m(LoginType loginType, DeviceType deviceType, LoginData data) throws ApiException, InternalException, HttpException {
        r.e(loginType, "loginType");
        r.e(data, "data");
        Object data2 = httpPost("/api/open/login/submit.htm", u.p(new MucangNameValuePair("loginType", loginType.toString()), new MucangNameValuePair("deviceType", String.valueOf(deviceType)), new MucangNameValuePair("data", JSON.toJSONString(data)))).getData((Class<Object>) XyUserModel.class);
        r.d(data2, "httpPost(\n            \"/…(XyUserModel::class.java)");
        return (XyUserModel) data2;
    }

    public final boolean n() throws ApiException, InternalException, HttpException {
        return httpGet("/api/open/login/logout.htm").isSuccess();
    }
}
