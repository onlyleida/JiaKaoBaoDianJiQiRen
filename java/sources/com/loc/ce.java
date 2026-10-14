package com.loc;

import android.content.Context;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes4.dex */
public final class ce extends cf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int f12663a;
    protected long b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f12664d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f12665e;

    public ce(Context context, int i, String str, cf cfVar) {
        super(cfVar);
        this.f12663a = i;
        this.f12664d = str;
        this.f12665e = context;
    }

    @Override // com.loc.cf
    public final void a(boolean z) {
        super.a(z);
        if (z) {
            String str = this.f12664d;
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.b = jCurrentTimeMillis;
            ak.a(this.f12665e, str, String.valueOf(jCurrentTimeMillis));
        }
    }

    @Override // com.loc.cf
    protected final boolean a() {
        if (this.b == 0) {
            String strA = ak.a(this.f12665e, this.f12664d);
            this.b = TextUtils.isEmpty(strA) ? 0L : Long.parseLong(strA);
        }
        return System.currentTimeMillis() - this.b >= ((long) this.f12663a);
    }
}
