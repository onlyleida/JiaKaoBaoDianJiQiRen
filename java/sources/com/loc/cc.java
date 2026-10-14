package com.loc;

import android.content.Context;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes4.dex */
public final class cc extends cf {
    private Context b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f12658d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f12659e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f12660f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f12657a = "iKey";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f12661g = 0;

    public cc(Context context, boolean z, int i, int i2, String str) {
        a(context, z, i, i2, str, 0);
    }

    public cc(Context context, boolean z, int i, int i2, String str, int i3) {
        a(context, z, i, i2, str, i3);
    }

    private void a(Context context, boolean z, int i, int i2, String str, int i3) {
        this.b = context;
        this.f12658d = z;
        this.f12659e = i;
        this.f12660f = i2;
        this.f12657a = str;
        this.f12661g = i3;
    }

    @Override // com.loc.cf
    public final void a(int i) {
        if (n.o(this.b) == 1) {
            return;
        }
        String strA = w.a(System.currentTimeMillis(), "yyyyMMdd");
        String strA2 = ak.a(this.b, this.f12657a);
        if (!TextUtils.isEmpty(strA2)) {
            String[] strArrSplit = strA2.split("\\|");
            if (strArrSplit == null || strArrSplit.length < 2) {
                ak.b(this.b, this.f12657a);
            } else if (strA.equals(strArrSplit[0])) {
                i += Integer.parseInt(strArrSplit[1]);
            }
        }
        ak.a(this.b, this.f12657a, strA + "|" + i);
    }

    @Override // com.loc.cf
    protected final boolean a() {
        if (n.o(this.b) == 1) {
            return true;
        }
        if (!this.f12658d) {
            return false;
        }
        String strA = ak.a(this.b, this.f12657a);
        if (TextUtils.isEmpty(strA)) {
            return true;
        }
        String[] strArrSplit = strA.split("\\|");
        if (strArrSplit != null && strArrSplit.length >= 2) {
            return !w.a(System.currentTimeMillis(), "yyyyMMdd").equals(strArrSplit[0]) || Integer.parseInt(strArrSplit[1]) < this.f12660f;
        }
        ak.b(this.b, this.f12657a);
        return true;
    }

    @Override // com.loc.cf
    public final int b() {
        int i;
        int i2 = Integer.MAX_VALUE;
        if ((n.o(this.b) != 1 && (i = this.f12659e) > 0) || ((i = this.f12661g) > 0 && i < Integer.MAX_VALUE)) {
            i2 = i;
        }
        cf cfVar = this.c;
        return cfVar != null ? Math.max(i2, cfVar.b()) : i2;
    }
}
