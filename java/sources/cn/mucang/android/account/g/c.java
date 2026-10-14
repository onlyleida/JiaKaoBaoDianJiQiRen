package cn.mucang.android.account.g;

import cn.mucang.android.account.api.data.CheckSmsResponse;
import cn.mucang.android.account.api.data.CheckType;
import cn.mucang.android.account.api.data.UserInfoResponse;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class c extends a {
    public CheckSmsResponse f(String str, String str2, String str3, String str4, CheckType checkType) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("openId", str));
        arrayList.add(new MucangNameValuePair("unionId", str2));
        arrayList.add(new MucangNameValuePair("phoneNumber", str4));
        arrayList.add(new MucangNameValuePair("thirdParty", str3));
        if (checkType != null) {
            arrayList.add(new MucangNameValuePair("checkType", checkType.name()));
        }
        return (CheckSmsResponse) httpPost("/bind/check.htm", (List<MucangNameValuePair>) arrayList, true).getData(CheckSmsResponse.class);
    }

    public CheckSmsResponse g(String str, String str2, String str3, String str4, CheckType checkType) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("openId", str));
        arrayList.add(new MucangNameValuePair("unionId", str2));
        arrayList.add(new MucangNameValuePair("phoneNumber", str4));
        arrayList.add(new MucangNameValuePair("thirdParty", str3));
        if (checkType != null) {
            arrayList.add(new MucangNameValuePair("checkType", checkType.name()));
        }
        arrayList.add(new MucangNameValuePair("voiceCode", Boolean.TRUE.toString()));
        return (CheckSmsResponse) httpPost("/bind/check.htm", (List<MucangNameValuePair>) arrayList, true).getData(CheckSmsResponse.class);
    }

    public UserInfoResponse h(String str, String str2) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("smsId", str));
        arrayList.add(new MucangNameValuePair("smsCode", str2));
        return (UserInfoResponse) httpPost("/bind/submit.htm", arrayList).getData(UserInfoResponse.class);
    }
}
