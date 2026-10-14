package cn.mucang.android.jiakaoyi.teachingk2.login.api;

import cn.mucang.android.core.api.ApiResponse;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.jiakaoyi.teachingk2.login.RobotAccount;
import cn.mucang.jiakaoyi.uilib.login.api.BaseBusinessLoginApi;
import cn.mucang.jiakaoyi.uilib.login.model.LoginType;
import cn.mucang.jiakaoyi.uilib.login.model.XyUserModel;
import com.mobile.auth.gatewayauth.Constant;
import kotlin.Metadata;
import kotlin.collections.u;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.login.q.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0010¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/login/api/RobotBusinessLoginApi;", "Lcn/mucang/jiakaoyi/uilib/login/api/BaseBusinessLoginApi;", "()V", "checkLogout", "", "coachLogin", "Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;", "password", "", "notifyLogin", "Lcn/mucang/android/core/api/ApiResponse;", "userModel", "loginType", "Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;", "updateTime", "logout", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RobotBusinessLoginApi extends BaseBusinessLoginApi {
    public final void n() throws ApiException, InternalException, HttpException {
        httpGet("/api/open/user/check-logout.htm");
    }

    public final XyUserModel o(String str) throws ApiException, InternalException, HttpException {
        Object data = httpPost("/api/open/user/admin-login.htm", u.p(new MucangNameValuePair("loginInfo", str))).getData((Class<Object>) XyUserModel.class);
        r.d(data, "httpPost(\n            \"/…(XyUserModel::class.java)");
        return (XyUserModel) data;
    }

    public final ApiResponse p(XyUserModel userModel, LoginType loginType) throws ApiException, InternalException, HttpException {
        r.e(userModel, "userModel");
        r.e(loginType, "loginType");
        ApiResponse apiResponseHttpPost = httpPost("/api/open/user/login-notice.htm", u.p(new MucangNameValuePair("loginType", loginType.getTypeId()), new MucangNameValuePair("studentId", String.valueOf(userModel.getStudentId())), new MucangNameValuePair("mucangId", userModel.getMucangId()), new MucangNameValuePair(Constant.PROTOCOL_WEBVIEW_NAME, userModel.getName()), new MucangNameValuePair("loginMode", userModel.getLoginMode())));
        r.d(apiResponseHttpPost, "httpPost(\n            \"/…,\n            )\n        )");
        return apiResponseHttpPost;
    }

    public final void q(boolean z) throws Exception {
        StringBuilder sb = new StringBuilder();
        sb.append("/api/open/user/logout-notice.htm?logout=");
        sb.append(z);
        sb.append("&debugUser=");
        XyUserModel xyUserModelE = RobotAccount.i().e();
        sb.append(xyUserModelE == null ? false : xyUserModelE.isDebugUser());
        httpGet(sb.toString());
    }
}
