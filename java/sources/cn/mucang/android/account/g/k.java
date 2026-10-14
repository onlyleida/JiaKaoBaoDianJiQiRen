package cn.mucang.android.account.g;

import cn.mucang.android.account.api.data.CheckSmsResponse;
import cn.mucang.android.account.api.data.PopupCaptchaResponse;
import cn.mucang.android.account.api.data.UserInfoResponse;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.encode.Digests;
import cn.mucang.android.core.http.MucangNameValuePair;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class k extends a {
    public CheckSmsResponse f(String str, String str2, String str3, boolean z) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("phoneNumber", str));
        arrayList.add(new MucangNameValuePair("captchaId", str2));
        arrayList.add(new MucangNameValuePair("captchaCode", str3));
        arrayList.add(new MucangNameValuePair("skipCaptcha", String.valueOf(z)));
        return (CheckSmsResponse) httpPost("/api/open/v3/login-sms/check.htm", (List<MucangNameValuePair>) arrayList, true).getData(CheckSmsResponse.class);
    }

    public CheckSmsResponse g(String str, String str2, String str3, boolean z) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("phoneNumber", str));
        arrayList.add(new MucangNameValuePair("captchaId", str2));
        arrayList.add(new MucangNameValuePair("captchaCode", str3));
        arrayList.add(new MucangNameValuePair("skipCaptcha", String.valueOf(z)));
        arrayList.add(new MucangNameValuePair("voiceCode", Boolean.TRUE.toString()));
        return (CheckSmsResponse) httpPost("/api/open/v3/login-sms/check.htm", (List<MucangNameValuePair>) arrayList, true).getData(CheckSmsResponse.class);
    }

    public PopupCaptchaResponse h() throws ApiException, InternalException, HttpException {
        return (PopupCaptchaResponse) httpGet("/api/open/v3/login-sms/request-captcha.htm").getData(PopupCaptchaResponse.class);
    }

    public void i(String str, String str2, String str3) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("password", Digests.md5(str)));
        arrayList.add(new MucangNameValuePair("smsId", str2));
        arrayList.add(new MucangNameValuePair("smsToken", str3));
        httpPost("/api/open/v3/login-sms/set-password.htm", arrayList);
    }

    public UserInfoResponse j(String str, String str2, String str3) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("smsId", str));
        arrayList.add(new MucangNameValuePair("smsCode", str2));
        arrayList.add(new MucangNameValuePair("phoneNumber", str3));
        return (UserInfoResponse) httpPost("/api/open/v3/login-sms/login.htm", (List<MucangNameValuePair>) arrayList, true).getData(UserInfoResponse.class);
    }
}
