package cn.mucang.android.account.g;

import cn.mucang.android.account.api.data.CheckSmsResponse;
import cn.mucang.android.account.api.data.CommonResponse;
import cn.mucang.android.account.api.data.UserInfoResponse;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.encode.Digests;
import cn.mucang.android.core.http.MucangNameValuePair;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class i extends a {
    public CheckSmsResponse f(String str, String str2, String str3) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("phoneNumber", str));
        arrayList.add(new MucangNameValuePair("captchaId", str2));
        arrayList.add(new MucangNameValuePair("captchaCode", str3));
        return (CheckSmsResponse) httpPost("/forgot-password/check.htm", (List<MucangNameValuePair>) arrayList, true).getData(CheckSmsResponse.class);
    }

    public CheckSmsResponse g(String str) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("smsId", str));
        return (CheckSmsResponse) httpPost("/forgot-password/resend-sms.htm", arrayList).getData(CheckSmsResponse.class);
    }

    public UserInfoResponse h(String str, String str2, String str3) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("password", Digests.md5(str)));
        arrayList.add(new MucangNameValuePair("smsId", str2));
        arrayList.add(new MucangNameValuePair("smsToken", str3));
        return (UserInfoResponse) httpPost("/forgot-password/submit.htm", arrayList).getData(UserInfoResponse.class);
    }

    public String i(String str, String str2) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("smsId", str));
        arrayList.add(new MucangNameValuePair("smsCode", str2));
        return ((CommonResponse) httpPost("/forgot-password/verify-sms.htm", arrayList).getData(CommonResponse.class)).getSmsToken();
    }
}
