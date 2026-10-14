package com.loc;

import android.content.Context;

/* JADX INFO: loaded from: classes4.dex */
public final class cg extends cf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f12666a;
    private boolean b;

    public cg(Context context) {
        this.b = false;
        this.f12666a = context;
        this.b = false;
    }

    @Override // com.loc.cf
    protected final boolean a() {
        return n.o(this.f12666a) == 1 || this.b;
    }
}
