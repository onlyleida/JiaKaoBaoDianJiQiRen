package com.unity3d.splash.services.core.configuration;

import android.content.SharedPreferences;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f14373a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f14374d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Map f14375e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String[] f14376f = {"com.unity3d.splash.services.core.configuration.CoreModuleConfiguration", "com.unity3d.splash.services.ads.configuration.AdsModuleConfiguration"};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Class[] f14377g;

    private void a() {
        ArrayList arrayList = new ArrayList();
        for (String str : c()) {
            c cVarB = b(str);
            if (cVarB != null && cVarB.a() != null) {
                arrayList.addAll(Arrays.asList(cVarB.a()));
            }
        }
        this.f14377g = (Class[]) arrayList.toArray(new Class[arrayList.size()]);
    }

    public c b(String str) {
        Map map = this.f14375e;
        if (map != null && map.containsKey(str)) {
            return (c) this.f14375e.get(str);
        }
        try {
            c cVar = (c) Class.forName(str).newInstance();
            if (cVar != null) {
                if (this.f14375e == null) {
                    HashMap map2 = new HashMap();
                    this.f14375e = map2;
                    map2.put(str, cVar);
                }
                return cVar;
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public String[] c() {
        return this.f14376f;
    }

    public Class[] d() {
        if (this.f14377g == null) {
            a();
        }
        return this.f14377g;
    }

    public String e() {
        return this.f14374d;
    }

    public String f() {
        return this.b;
    }

    public String g() {
        return this.f14373a;
    }

    public String h() {
        return this.c;
    }

    protected void i() throws MalformedURLException {
        SharedPreferences sharedPreferences = com.unity3d.splash.services.c.b.a.b().getSharedPreferences("game_detail", 0);
        this.f14373a = sharedPreferences.getString("url", null);
        this.b = sharedPreferences.getString("hash", null);
        this.c = sharedPreferences.getString("version", null);
        String str = this.f14373a;
        if (str == null || str.isEmpty()) {
            throw new MalformedURLException("Invalid data. Web view URL is null or empty");
        }
    }

    public void j(String str) {
    }

    public void k(String str) {
        this.f14374d = str;
    }
}
