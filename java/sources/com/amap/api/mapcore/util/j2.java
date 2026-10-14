package com.amap.api.mapcore.util;

import android.content.Context;
import com.amap.api.maps.MapsInitializer;
import com.autonavi.base.amap.api.mapcore.IAMapDelegate;

/* JADX INFO: loaded from: classes5.dex */
public class j2 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f10933a;
    private IAMapDelegate b;
    private i2 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f10934d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f10935e;

    public interface a {
        void a(byte[] bArr, int i);
    }

    public j2(Context context, a aVar, int i, String str) {
        this.f10935e = 0;
        this.f10933a = context;
        this.f10934d = aVar;
        this.f10935e = i;
        if (this.c == null) {
            this.c = new i2(context, "", i != 0);
        }
        this.c.m(str);
    }

    public void a() {
        this.f10933a = null;
        if (this.c != null) {
            this.c = null;
        }
    }

    public void b(String str) {
        i2 i2Var = this.c;
        if (i2Var != null) {
            i2Var.o(str);
        }
    }

    public void c() {
        q3.a().b(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        i2.a aVarI;
        byte[] bArr;
        try {
            if (MapsInitializer.getNetWorkEnable()) {
                i2 i2Var = this.c;
                if (i2Var != null && (aVarI = i2Var.i()) != null && (bArr = aVarI.f10897a) != null) {
                    a aVar = this.f10934d;
                    if (aVar != null) {
                        aVar.a(bArr, this.f10935e);
                    } else {
                        IAMapDelegate iAMapDelegate = this.b;
                        if (iAMapDelegate != null) {
                            iAMapDelegate.setCustomMapStyle(iAMapDelegate.getMapConfig().isCustomStyleEnable(), aVarI.f10897a);
                        }
                    }
                }
                e6.g(this.f10933a, r3.u0());
                IAMapDelegate iAMapDelegate2 = this.b;
                if (iAMapDelegate2 != null) {
                    iAMapDelegate2.setRunLowFrame(false);
                }
            }
        } catch (Throwable th) {
            e6.r(th, "CustomStyleTask", "download customStyle");
            th.printStackTrace();
        }
    }

    public j2(Context context, IAMapDelegate iAMapDelegate) {
        this.f10935e = 0;
        this.f10933a = context;
        this.b = iAMapDelegate;
        if (this.c == null) {
            this.c = new i2(context, "");
        }
    }
}
