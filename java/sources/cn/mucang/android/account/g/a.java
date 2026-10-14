package cn.mucang.android.account.g;

import cn.mucang.android.account.AccountManager;
import cn.mucang.android.account.data.AuthUser;
import cn.mucang.android.core.api.ApiResponse;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class a extends cn.mucang.android.core.api.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f2152a = "https://auth.mucang.cn";
    public static String b = "*#06#i3lrRYudcZZ2fIx9fI6VqJV8";

    public a() {
        Iterator<cn.mucang.android.core.api.request.d.a> it = d().iterator();
        while (it.hasNext()) {
            addRequestInterceptor(it.next());
        }
        Iterator<cn.mucang.android.core.api.request.d.b> it2 = e().iterator();
        while (it2.hasNext()) {
            addResponseInterceptor(it2.next());
        }
    }

    public static Map<String, String> c() {
        AuthUser authUserG = AccountManager.h().g();
        if (authUserG == null) {
            return null;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("authToken", authUserG.getAuthToken());
        linkedHashMap.put("_authVersion", "1.4");
        return linkedHashMap;
    }

    public static List<cn.mucang.android.core.api.request.d.a> d() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new cn.mucang.android.account.g.r.a());
        return arrayList;
    }

    public static List<cn.mucang.android.core.api.request.d.b> e() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new cn.mucang.android.account.g.r.b());
        return arrayList;
    }

    public ApiResponse b(String str) throws ApiException, InternalException, HttpException {
        return httpGet(str);
    }

    @Override // cn.mucang.android.core.api.a
    protected String getApiHost() {
        return f2152a;
    }

    @Override // cn.mucang.android.core.api.a
    protected Map<String, String> getExtraParams() {
        return c();
    }

    @Override // cn.mucang.android.core.api.a
    protected String getSignKey() {
        return "*#06#i3lrRYudcZZ2fIx9fI6VqJV8";
    }
}
