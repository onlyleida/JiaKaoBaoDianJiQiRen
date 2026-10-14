package com.amap.api.mapcore.util;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class f3 extends x3<a> {
    private a b;

    static final class a extends y3<a> {
        ByteBuffer b;
        ShortBuffer c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        FloatBuffer f10784d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f10785e;

        a() {
        }

        void b(int i) {
            if (i < 32768) {
                i = 32768;
            }
            this.b = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
            this.f10785e = i;
            this.c = null;
            this.f10784d = null;
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [T extends com.amap.api.mapcore.util.y3<?>, T extends com.amap.api.mapcore.util.y3<T>] */
    public a c(int i) {
        a aVar = (a) this.f11337a;
        if (aVar == null) {
            aVar = new a();
        } else {
            this.f11337a = aVar.f11366a;
            aVar.f11366a = null;
        }
        if (aVar.f10785e < i) {
            aVar.b(i);
        }
        y3.a(this.b, aVar);
        this.b = aVar;
        return aVar;
    }

    public void d() {
        this.b = b(this.b);
    }

    public ShortBuffer e(int i) {
        a aVarC = c(i * 2);
        ShortBuffer shortBuffer = aVarC.c;
        if (shortBuffer == null) {
            aVarC.b.clear();
            aVarC.c = aVarC.b.asShortBuffer();
        } else {
            shortBuffer.clear();
        }
        return aVarC.c;
    }

    public FloatBuffer f(int i) {
        a aVarC = c(i * 4);
        FloatBuffer floatBuffer = aVarC.f10784d;
        if (floatBuffer == null) {
            aVarC.b.clear();
            aVarC.f10784d = aVarC.b.asFloatBuffer();
        } else {
            floatBuffer.clear();
        }
        aVarC.f10784d.clear();
        return aVarC.f10784d;
    }
}
