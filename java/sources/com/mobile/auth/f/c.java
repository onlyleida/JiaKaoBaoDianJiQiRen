package com.mobile.auth.f;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import com.mobile.auth.BuildConfig;
import com.mobile.auth.k.f;
import com.mobile.auth.k.p;

/* JADX INFO: loaded from: classes2.dex */
public class c implements b.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    private static c f13171a;
    private a b;
    private a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f13172d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f13173e;

    private c(Context context) {
        this.f13173e = context;
        b();
    }

    public static c a(Context context) {
        if (f13171a == null) {
            synchronized (c.class) {
                if (f13171a == null) {
                    f13171a = new c(context);
                }
            }
        }
        return f13171a;
    }

    private void b() {
        String strB = p.b("sdk_config_ver", "");
        if (TextUtils.isEmpty(strB) || !BuildConfig.CMCC_SDK_VERSION.equals(strB)) {
            b bVarA = b.a(true);
            this.f13172d = bVarA;
            this.b = bVarA.a();
            if (!TextUtils.isEmpty(strB)) {
                c();
            }
        } else {
            b bVarA2 = b.a(false);
            this.f13172d = bVarA2;
            this.b = bVarA2.b();
        }
        this.f13172d.a(this);
        this.c = this.f13172d.a();
    }

    private void c() {
        f.b("UmcConfigManager", "delete localConfig");
        this.f13172d.c();
    }

    public a a() {
        try {
            return this.b.clone();
        } catch (CloneNotSupportedException unused) {
            return this.c;
        }
    }

    public void a(com.cmic.sso.sdk.a aVar) {
        this.f13172d.a(this.f13173e, aVar);
    }

    @Override // com.mobile.auth.f.b.c
    public void a(a aVar) {
        this.b = aVar;
    }
}
