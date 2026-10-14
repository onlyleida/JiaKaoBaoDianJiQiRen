package com.loc;

import android.content.Context;
import android.os.Handler;

/* JADX INFO: loaded from: classes4.dex */
public final class eq extends eo<er> {
    public eq(Context context, String str, Handler handler) {
        super(context, str, handler);
    }

    private static String a(er erVar) {
        return erVar == null ? "" : erVar.b();
    }

    /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
    private static void a2(er erVar, long j) {
        if (erVar != null) {
            erVar.t = j;
        }
    }

    /* JADX INFO: renamed from: b, reason: avoid collision after fix types in other method */
    private static int b2(er erVar) {
        if (erVar == null) {
            return 99;
        }
        return erVar.s;
    }

    /* JADX INFO: renamed from: c, reason: avoid collision after fix types in other method */
    private static long c2(er erVar) {
        if (erVar == null) {
            return 0L;
        }
        return erVar.t;
    }

    @Override // com.loc.eo
    final /* bridge */ /* synthetic */ void a(er erVar, long j) {
        a2(erVar, j);
    }

    @Override // com.loc.eo
    final long b() {
        return el.f12804g;
    }

    @Override // com.loc.eo
    public final /* synthetic */ String b(er erVar) {
        return a(erVar);
    }

    @Override // com.loc.eo
    final /* synthetic */ int c(er erVar) {
        return b2(erVar);
    }

    @Override // com.loc.eo
    final long c() {
        return el.f12805h;
    }

    @Override // com.loc.eo
    final /* synthetic */ long d(er erVar) {
        return c2(erVar);
    }
}
