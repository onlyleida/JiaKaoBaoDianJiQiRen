package cn.mucang.android.account.g;

import cn.mucang.android.account.api.data.CheckSmsResponse;
import cn.mucang.android.account.api.data.CheckType;
import cn.mucang.android.account.api.data.CommonResponse;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import com.mobile.auth.gatewayauth.Constant;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class g extends a {
    public CheckSmsResponse f(String str, String str2, CheckType checkType, String str3, String str4, int i) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("phoneNumber", str));
        arrayList.add(new MucangNameValuePair("sessionId", str2));
        if (checkType != null) {
            arrayList.add(new MucangNameValuePair("checkType", checkType.name()));
        }
        arrayList.add(new MucangNameValuePair("captchaId", str3));
        arrayList.add(new MucangNameValuePair("captchaCode", str4));
        return (CheckSmsResponse) httpPost(i == 0 ? "/api/open/v3/change-phone-by-certified/check.htm" : "/api/open/v3/change-phone/check-new.htm", (List<MucangNameValuePair>) arrayList, true).getData(CheckSmsResponse.class);
    }

    public CheckSmsResponse g(CheckType checkType, String str, String str2) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        if (checkType != null) {
            arrayList.add(new MucangNameValuePair("checkType", checkType.name()));
        }
        arrayList.add(new MucangNameValuePair("captchaId", str));
        arrayList.add(new MucangNameValuePair("captchaCode", str2));
        return (CheckSmsResponse) httpPost("/api/open/v3/change-phone/check-old.htm", arrayList).getData(CheckSmsResponse.class);
    }

    public String h(String str, String str2) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair(Constant.PROTOCOL_WEBVIEW_NAME, str));
        arrayList.add(new MucangNameValuePair("cardNo", str2));
        return ((CommonResponse) httpPost("/api/open/v3/change-phone-by-certified/check-certified.htm", (List<MucangNameValuePair>) arrayList, true).getData(CommonResponse.class)).getSessionId();
    }

    public String i(String str, String str2, int i) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("sessionId", str));
        arrayList.add(new MucangNameValuePair("smsCode", str2));
        return ((CommonResponse) httpPost(i == 0 ? "/api/open/v3/change-phone-by-certified/submit.htm" : "/api/open/v3/change-phone/submit.htm", arrayList).getData(CommonResponse.class)).getPhoneNumber();
    }

    public String j(String str, String str2) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("smsId", str));
        arrayList.add(new MucangNameValuePair("smsCode", str2));
        return ((CommonResponse) httpPost("/api/open/v3/change-phone/get-sms-token.htm", arrayList).getData(CommonResponse.class)).getSessionId();
    }
}
