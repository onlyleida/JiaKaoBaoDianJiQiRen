package cn.mucang.android.core.api.verify;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.api.verify.geetest.GeetestCheckInfo;
import cn.mucang.android.core.http.MucangNameValuePair;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class c extends cn.mucang.android.core.api.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f2441a = "https://auth.mucang.cn";
    public static String b = "*#06#i3lrRYudcZZ2fIx9fI6VqJV8";

    public static Map<String, String> b() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("_authVersion", "1.4");
        return linkedHashMap;
    }

    public GeetestCheckInfo c() throws ApiException, InternalException, HttpException {
        return (GeetestCheckInfo) httpGet("/api/open/v2/geetest-captcha/refresh.htm").getData(GeetestCheckInfo.class);
    }

    public void d(String str, String str2, String str3, String str4) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("reqId", str));
        arrayList.add(new MucangNameValuePair("challenge", str2));
        arrayList.add(new MucangNameValuePair("validate", str3));
        arrayList.add(new MucangNameValuePair("seccode", str4));
        httpPost("/api/open/v2/geetest-captcha/validate.htm", arrayList);
    }

    @Override // cn.mucang.android.core.api.a
    protected String getApiHost() {
        return f2441a;
    }

    @Override // cn.mucang.android.core.api.a
    protected Map<String, String> getExtraParams() {
        return b();
    }

    @Override // cn.mucang.android.core.api.a
    protected String getSignKey() {
        return b;
    }
}
