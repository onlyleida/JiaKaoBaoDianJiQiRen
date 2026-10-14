package com.amap.api.mapcore.util;

import android.content.Context;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes5.dex */
public class h8 extends k8 {
    private String b;
    private Context c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f10876d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f10877e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f10878f;

    public h8(Context context, boolean z, int i, int i2, String str) {
        this.b = "iKey";
        this.c = context;
        this.f10876d = z;
        this.f10877e = i;
        this.f10878f = i2;
        this.b = str;
    }

    @Override // com.amap.api.mapcore.util.k8
    public void a(int i) {
        if (g5.V(this.c) == 1) {
            return;
        }
        String strC = n5.c(System.currentTimeMillis(), "yyyyMMdd");
        String strA = c6.a(this.c, this.b);
        if (!TextUtils.isEmpty(strA)) {
            String[] strArrSplit = strA.split("\\|");
            if (strArrSplit == null || strArrSplit.length < 2) {
                c6.g(this.c, this.b);
            } else if (strC.equals(strArrSplit[0])) {
                i += Integer.parseInt(strArrSplit[1]);
            }
        }
        c6.c(this.c, this.b, strC + "|" + i);
    }

    @Override // com.amap.api.mapcore.util.k8
    protected boolean c() {
        if (g5.V(this.c) == 1) {
            return true;
        }
        if (!this.f10876d) {
            return false;
        }
        String strA = c6.a(this.c, this.b);
        if (TextUtils.isEmpty(strA)) {
            return true;
        }
        String[] strArrSplit = strA.split("\\|");
        if (strArrSplit != null && strArrSplit.length >= 2) {
            return !n5.c(System.currentTimeMillis(), "yyyyMMdd").equals(strArrSplit[0]) || Integer.parseInt(strArrSplit[1]) < this.f10878f;
        }
        c6.g(this.c, this.b);
        return true;
    }

    @Override // com.amap.api.mapcore.util.k8
    public int d() {
        int i;
        if (g5.V(this.c) == 1 || (i = this.f10877e) <= 0) {
            i = Integer.MAX_VALUE;
        }
        k8 k8Var = this.f10965a;
        return k8Var != null ? Math.max(i, k8Var.d()) : i;
    }
}
