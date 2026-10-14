package com.loc;

import android.content.Context;
import android.os.Handler;

/* JADX INFO: loaded from: classes4.dex */
public final class ev extends eo<dx> {
    public ev(Context context, String str, Handler handler) {
        super(context, str, handler);
    }

    private static String a(dx dxVar) {
        return dxVar == null ? "" : dxVar.a();
    }

    /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
    private static void a2(dx dxVar, long j) {
        if (dxVar != null) {
            dxVar.f12745f = j;
        }
    }

    /* JADX INFO: renamed from: b, reason: avoid collision after fix types in other method */
    private static int b2(dx dxVar) {
        if (dxVar == null) {
            return -113;
        }
        return dxVar.c;
    }

    /* JADX INFO: renamed from: c, reason: avoid collision after fix types in other method */
    private static long c2(dx dxVar) {
        if (dxVar == null) {
            return 0L;
        }
        return dxVar.f12745f;
    }

    @Override // com.loc.eo
    final /* bridge */ /* synthetic */ void a(dx dxVar, long j) {
        a2(dxVar, j);
    }

    @Override // com.loc.eo
    final long b() {
        return el.f12802e;
    }

    @Override // com.loc.eo
    public final /* synthetic */ String b(dx dxVar) {
        return a(dxVar);
    }

    @Override // com.loc.eo
    final /* synthetic */ int c(dx dxVar) {
        return b2(dxVar);
    }

    @Override // com.loc.eo
    final long c() {
        return el.f12803f;
    }

    @Override // com.loc.eo
    final /* synthetic */ long d(dx dxVar) {
        return c2(dxVar);
    }
}
