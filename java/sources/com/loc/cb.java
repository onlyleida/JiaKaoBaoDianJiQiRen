package com.loc;

import java.io.File;

/* JADX INFO: loaded from: classes4.dex */
public final class cb extends cf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f12656a;
    private String b;

    public cb(String str, cf cfVar) {
        super(cfVar);
        this.f12656a = 30;
        this.b = str;
    }

    private static int a(String str) {
        try {
            File file = new File(str);
            if (file.exists()) {
                return file.list().length;
            }
            return 0;
        } catch (Throwable th) {
            am.b(th, "fus", "gfn");
            return 0;
        }
    }

    @Override // com.loc.cf
    protected final boolean a() {
        return a(this.b) >= this.f12656a;
    }
}
