package cn.mucang.android.core.api.verify;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class d extends cn.mucang.android.core.api.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f2442a = "https://auth.mucang.cn";
    public static String b = "*#06#i3lrRYudcZZ2fIx9fI6VqJV8";

    public static Map<String, String> c() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("_authVersion", "1.4");
        return linkedHashMap;
    }

    public SmsCheckInfo b() throws ApiException, InternalException, HttpException {
        return (SmsCheckInfo) httpPost("/api/open/v2/verify-phone/check.htm", new ArrayList()).getData(SmsCheckInfo.class);
    }

    public void d(String str, String str2) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("smsId", str));
        arrayList.add(new MucangNameValuePair("smsCode", str2));
        httpPost("/api/open/v2/verify-phone/submit.htm", arrayList);
    }

    @Override // cn.mucang.android.core.api.a
    protected String getApiHost() {
        return f2442a;
    }

    @Override // cn.mucang.android.core.api.a
    protected Map<String, String> getExtraParams() {
        return c();
    }

    @Override // cn.mucang.android.core.api.a
    protected String getSignKey() {
        return b;
    }
}
