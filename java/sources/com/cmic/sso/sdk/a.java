package com.cmic.sso.sdk;

import com.mobile.auth.k.f;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ConcurrentHashMap<String, Object> f11630a;

    public a(int i) {
        this.f11630a = new ConcurrentHashMap<>(i);
    }

    public int a(String str) {
        return a(str, 0);
    }

    public int a(String str, int i) {
        return (str == null || !this.f11630a.containsKey(str)) ? i : ((Integer) this.f11630a.get(str)).intValue();
    }

    public long a(String str, long j) {
        return (str == null || !this.f11630a.containsKey(str)) ? j : ((Long) this.f11630a.get(str)).longValue();
    }

    public com.mobile.auth.f.a a() {
        com.mobile.auth.f.a aVar = (com.mobile.auth.f.a) this.f11630a.get("current_config");
        if (aVar != null) {
            return aVar;
        }
        f.a("UmcConfigBean为空", "请核查");
        return new com.mobile.auth.f.a.b().a();
    }

    public String a(String str, String str2) {
        return (str == null || !this.f11630a.containsKey(str)) ? str2 : (String) this.f11630a.get(str);
    }

    public void a(com.mobile.auth.f.a aVar) {
        if (aVar != null) {
            this.f11630a.put("current_config", aVar);
        }
    }

    public boolean a(String str, boolean z) {
        return (str == null || !this.f11630a.containsKey(str)) ? z : ((Boolean) this.f11630a.get(str)).booleanValue();
    }

    public long b(String str) {
        if (str == null || !this.f11630a.containsKey(str)) {
            return 0L;
        }
        return ((Long) this.f11630a.get(str)).longValue();
    }

    public void b(String str, int i) {
        if (str != null) {
            this.f11630a.put(str, Integer.valueOf(i));
        }
    }

    public void b(String str, long j) {
        if (str != null) {
            this.f11630a.put(str, Long.valueOf(j));
        }
    }

    public void b(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        this.f11630a.put(str, str2);
    }

    public void b(String str, boolean z) {
        if (str != null) {
            this.f11630a.put(str, Boolean.valueOf(z));
        }
    }

    public String c(String str) {
        return a(str, "");
    }
}
