package com.coloros.ocs.base.common;

import android.app.PendingIntent;
import g.b.a.a.c.c;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f11664a;

    public a(int i) {
        this(i, null);
    }

    public String toString() {
        c.a aVarA = c.a(this);
        aVarA.a("statusCode", com.coloros.ocs.base.common.e.a.a(this.f11664a));
        return aVarA.toString();
    }

    protected a(int i, PendingIntent pendingIntent) {
        this.f11664a = i;
    }
}
