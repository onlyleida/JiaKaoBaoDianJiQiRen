package com.amap.api.mapcore.util;

import android.content.Context;

/* JADX INFO: loaded from: classes5.dex */
public class l8 extends k8 {
    private Context b;
    private boolean c;

    public l8(Context context, boolean z) {
        this.c = false;
        this.b = context;
        this.c = z;
    }

    @Override // com.amap.api.mapcore.util.k8
    protected boolean c() {
        return g5.V(this.b) == 1 || this.c;
    }
}
