package com.loc;

/* JADX INFO: loaded from: classes4.dex */
public abstract class cf {
    cf c;

    public cf() {
    }

    public cf(cf cfVar) {
        this.c = cfVar;
    }

    public void a(int i) {
        cf cfVar = this.c;
        if (cfVar != null) {
            cfVar.a(i);
        }
    }

    public void a(boolean z) {
        cf cfVar = this.c;
        if (cfVar != null) {
            cfVar.a(z);
        }
    }

    protected abstract boolean a();

    public int b() {
        cf cfVar = this.c;
        return Math.min(Integer.MAX_VALUE, cfVar != null ? cfVar.b() : Integer.MAX_VALUE);
    }

    public final boolean c() {
        cf cfVar = this.c;
        if (cfVar != null ? cfVar.c() : true) {
            return a();
        }
        return false;
    }
}
