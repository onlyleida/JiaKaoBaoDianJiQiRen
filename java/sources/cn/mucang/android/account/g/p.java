package cn.mucang.android.account.g;

import cn.mucang.android.account.api.data.CheckSmsResponse;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class p extends a {
    public CheckSmsResponse f() throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("version", "1.1"));
        return (CheckSmsResponse) httpPost("/verify-phone/check.htm", arrayList).getData(CheckSmsResponse.class);
    }

    public void g(String str, String str2) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("smsId", str));
        arrayList.add(new MucangNameValuePair("smsCode", str2));
        httpPost("/verify-phone/submit.htm", arrayList);
    }
}
