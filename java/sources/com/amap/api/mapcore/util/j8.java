package com.amap.api.mapcore.util;

import android.content.Context;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes5.dex */
public class j8 extends k8 {
    private int b;
    private long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f10943d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f10944e;

    public j8(Context context, int i, String str, k8 k8Var) {
        super(k8Var);
        this.b = i;
        this.f10943d = str;
        this.f10944e = context;
    }

    private long g(String str) {
        String strA = c6.a(this.f10944e, str);
        if (TextUtils.isEmpty(strA)) {
            return 0L;
        }
        return Long.parseLong(strA);
    }

    private void h(String str, long j) {
        this.c = j;
        c6.c(this.f10944e, str, String.valueOf(j));
    }

    @Override // com.amap.api.mapcore.util.k8
    public void b(boolean z) {
        super.b(z);
        if (z) {
            h(this.f10943d, System.currentTimeMillis());
        }
    }

    @Override // com.amap.api.mapcore.util.k8
    protected boolean c() {
        if (this.c == 0) {
            this.c = g(this.f10943d);
        }
        return System.currentTimeMillis() - this.c >= ((long) this.b);
    }
}
