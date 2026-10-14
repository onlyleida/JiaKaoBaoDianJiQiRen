package com.amap.api.mapcore.util;

import android.content.Context;

/* JADX INFO: loaded from: classes5.dex */
public class o extends n {

    public static abstract class a implements n.a {
        @Override // com.amap.api.mapcore.util.n.a
        public boolean a(n nVar) {
            return d((o) nVar);
        }

        @Override // com.amap.api.mapcore.util.n.a
        public void b(n nVar) {
            f((o) nVar);
        }

        @Override // com.amap.api.mapcore.util.n.a
        public boolean c(n nVar) {
            return e((o) nVar);
        }

        public abstract boolean d(o oVar);

        public abstract boolean e(o oVar);

        public abstract void f(o oVar);
    }

    public o(Context context, a aVar) {
        super(context, aVar);
    }

    public float s() {
        return (float) (((Math.atan2(o(), n()) - Math.atan2(l(), k())) * 180.0d) / 3.141592653589793d);
    }
}
