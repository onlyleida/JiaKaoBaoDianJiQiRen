package com.amap.api.mapcore.util;

import java.io.File;

/* JADX INFO: loaded from: classes5.dex */
public class g8 extends k8 {
    private int b;
    private String c;

    public g8(int i, String str, k8 k8Var) {
        super(k8Var);
        this.b = i;
        this.c = str;
    }

    @Override // com.amap.api.mapcore.util.k8
    protected boolean c() {
        return g(this.c) >= this.b;
    }

    public int g(String str) {
        try {
            File file = new File(str);
            if (file.exists()) {
                return file.list().length;
            }
            return 0;
        } catch (Throwable th) {
            e6.r(th, "fus", "gfn");
            return 0;
        }
    }
}
