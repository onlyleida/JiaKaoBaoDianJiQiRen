package cn.mucang.android.account.g;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import com.mobile.auth.gatewayauth.Constant;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class e extends a {
    public boolean f(String str, String str2) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair(Constant.PROTOCOL_WEBVIEW_NAME, str));
        arrayList.add(new MucangNameValuePair("cardNo", str2));
        arrayList.add(new MucangNameValuePair("type", "idCard"));
        return httpPost("/certified/update.htm", (List<MucangNameValuePair>) arrayList, true).isSuccess();
    }

    public boolean g(String str, String str2) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair(Constant.PROTOCOL_WEBVIEW_NAME, str));
        arrayList.add(new MucangNameValuePair("cardNo", str2));
        arrayList.add(new MucangNameValuePair("type", "idCard"));
        return httpPost("/certified/submit.htm", (List<MucangNameValuePair>) arrayList, true).isSuccess();
    }
}
