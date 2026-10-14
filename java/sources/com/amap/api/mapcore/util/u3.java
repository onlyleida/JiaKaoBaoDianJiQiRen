package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.Bitmap;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes5.dex */
public abstract class u3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private v3 f11229a;
    private v3.b b;
    private boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected boolean f11230d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Object f11231e = new Object();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private c f11232f = null;

    public class a extends dq<Boolean, Void, Bitmap> {
        private final WeakReference<f2.b> m;

        public a(f2.b bVar) {
            this.m = new WeakReference<>(bVar);
        }

        private f2.b w() {
            f2.b bVar = this.m.get();
            if (this == u3.m(bVar)) {
                return bVar;
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amap.api.mapcore.util.dq
        /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
        public Bitmap d(Boolean... boolArr) {
            try {
                boolean zBooleanValue = boolArr[0].booleanValue();
                f2.b bVar = this.m.get();
                if (bVar == null) {
                    return null;
                }
                String str = bVar.f10778a + "-" + bVar.b + "-" + bVar.c;
                synchronized (u3.this.f11231e) {
                    while (u3.this.f11230d && !r()) {
                        u3.this.f11231e.wait();
                    }
                }
                Bitmap bitmapL = (u3.this.f11229a == null || r() || w() == null || u3.this.c) ? null : u3.this.f11229a.l(str);
                if (zBooleanValue && bitmapL == null && !r() && w() != null && !u3.this.c) {
                    synchronized (u3.class) {
                        bitmapL = u3.this.a(bVar);
                    }
                }
                if (bitmapL != null && u3.this.f11229a != null) {
                    u3.this.f11229a.j(str, bitmapL);
                }
                return bitmapL;
            } catch (Throwable th) {
                th.printStackTrace();
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amap.api.mapcore.util.dq
        /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
        public void f(Bitmap bitmap) {
            try {
                if (r() || u3.this.c) {
                    bitmap = null;
                }
                f2.b bVarW = w();
                if (bitmap == null || bitmap.isRecycled() || bVarW == null) {
                    return;
                }
                bVarW.c(bitmap);
                if (u3.this.f11232f != null) {
                    u3.this.f11232f.a();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amap.api.mapcore.util.dq
        /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
        public void k(Bitmap bitmap) {
            super.k(bitmap);
            synchronized (u3.this.f11231e) {
                try {
                    u3.this.f11231e.notifyAll();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
    }

    protected class b extends dq<Object, Void, Void> {
        protected b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amap.api.mapcore.util.dq
        /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
        public Void d(Object... objArr) {
            try {
                int iIntValue = ((Integer) objArr[0]).intValue();
                if (iIntValue == 0) {
                    u3.this.n();
                } else if (iIntValue == 1) {
                    u3.this.k();
                } else if (iIntValue == 2) {
                    u3.this.r();
                } else if (iIntValue == 3) {
                    u3.this.o(((Boolean) objArr[1]).booleanValue());
                } else if (iIntValue == 4) {
                    u3.this.t();
                }
                return null;
            } catch (Throwable th) {
                th.printStackTrace();
                return null;
            }
        }
    }

    public interface c {
        void a();
    }

    protected u3(Context context) {
        context.getResources();
    }

    public static void c(f2.b bVar) {
        a aVarM = m(bVar);
        if (aVarM != null) {
            aVarM.g(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static a m(f2.b bVar) {
        if (bVar != null) {
            return bVar.j;
        }
        return null;
    }

    protected abstract Bitmap a(Object obj);

    public void d(c cVar) {
        this.f11232f = cVar;
    }

    public void e(v3.b bVar) {
        this.b = bVar;
        this.f11229a = v3.d(bVar);
        new b().m(1);
    }

    public void f(String str) {
        this.b.e(str);
        new b().m(4);
    }

    public void g(boolean z) {
        this.c = z;
        l(false);
    }

    public void h(boolean z, f2.b bVar) {
        if (bVar == null) {
            return;
        }
        Bitmap bitmapC = null;
        try {
            if (this.f11229a != null) {
                bitmapC = this.f11229a.c(bVar.f10778a + "-" + bVar.b + "-" + bVar.c);
            }
            if (bitmapC != null) {
                bVar.c(bitmapC);
                return;
            }
            a aVar = new a(bVar);
            bVar.j = aVar;
            aVar.b(dq.j, Boolean.valueOf(z));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    protected void k() {
        v3 v3Var = this.f11229a;
        if (v3Var != null) {
            v3Var.i();
        }
    }

    public void l(boolean z) {
        synchronized (this.f11231e) {
            this.f11230d = z;
            if (!z) {
                try {
                    this.f11231e.notifyAll();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
    }

    protected void n() {
        v3 v3Var = this.f11229a;
        if (v3Var != null) {
            v3Var.m();
        }
    }

    protected void o(boolean z) {
        v3 v3Var = this.f11229a;
        if (v3Var != null) {
            v3Var.k(z);
            this.f11229a = null;
        }
    }

    protected void r() {
        v3 v3Var = this.f11229a;
        if (v3Var != null) {
            v3Var.q();
        }
    }

    public void s(boolean z) {
        new b().m(3, Boolean.valueOf(z));
    }

    protected void t() {
        v3 v3Var = this.f11229a;
        if (v3Var != null) {
            v3Var.k(false);
            this.f11229a.i();
        }
    }

    public void u() {
        new b().m(0);
    }
}
