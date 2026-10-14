package androidx.loader.a;

import android.os.Bundle;
import android.util.Log;
import androidx.collection.h;
import androidx.lifecycle.a0;
import androidx.lifecycle.j0;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import androidx.lifecycle.r;
import androidx.lifecycle.z;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
class b extends androidx.loader.a.a {
    static boolean c = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final r f1527a;
    private final c b;

    /* JADX WARN: Unexpected interfaces in signature: [java.lang.Object<D>] */
    public static class a<D> extends z<D> {
        private final int l;
        private final Bundle m;
        private final androidx.loader.content.a<D> n;
        private r o;
        private C0044b<D> p;
        private androidx.loader.content.a<D> q;

        @Override // androidx.lifecycle.LiveData
        protected void j() {
            if (b.c) {
                Log.v("LoaderManager", "  Starting: " + this);
            }
            this.n.d();
            throw null;
        }

        @Override // androidx.lifecycle.LiveData
        protected void k() {
            if (b.c) {
                Log.v("LoaderManager", "  Stopping: " + this);
            }
            this.n.e();
            throw null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.lifecycle.LiveData
        public void m(a0<? super D> a0Var) {
            super.m(a0Var);
            this.o = null;
        }

        @Override // androidx.lifecycle.z, androidx.lifecycle.LiveData
        public void o(D d2) {
            super.o(d2);
            androidx.loader.content.a<D> aVar = this.q;
            if (aVar == null) {
                return;
            }
            aVar.c();
            throw null;
        }

        androidx.loader.content.a<D> p(boolean z) {
            if (b.c) {
                Log.v("LoaderManager", "  Destroying: " + this);
            }
            this.n.a();
            throw null;
        }

        public void q(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.print(str);
            printWriter.print("mId=");
            printWriter.print(this.l);
            printWriter.print(" mArgs=");
            printWriter.println(this.m);
            printWriter.print(str);
            printWriter.print("mLoader=");
            printWriter.println(this.n);
            this.n.b(str + "  ", fileDescriptor, printWriter, strArr);
            throw null;
        }

        void r() {
            r rVar = this.o;
            C0044b<D> c0044b = this.p;
            if (rVar == null || c0044b == null) {
                return;
            }
            super.m(c0044b);
            h(rVar, c0044b);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #");
            sb.append(this.l);
            sb.append(" : ");
            androidx.core.util.b.a(this.n, sb);
            sb.append("}}");
            return sb.toString();
        }
    }

    /* JADX INFO: renamed from: androidx.loader.a.b$b, reason: collision with other inner class name */
    static class C0044b<D> implements a0<D> {
    }

    static class c extends j0 {
        private static final m0.b b = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private h<a> f1528a = new h<>();

        static class a implements m0.b {
            a() {
            }

            @Override // androidx.lifecycle.m0.b
            public <T extends j0> T create(Class<T> cls) {
                return new c();
            }
        }

        c() {
        }

        static c b(n0 n0Var) {
            return (c) new m0(n0Var, b).a(c.class);
        }

        public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            if (this.f1528a.k() > 0) {
                printWriter.print(str);
                printWriter.println("Loaders:");
                String str2 = str + "    ";
                if (this.f1528a.k() <= 0) {
                    return;
                }
                a aVarL = this.f1528a.l(0);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(this.f1528a.i(0));
                printWriter.print(": ");
                printWriter.println(aVarL.toString());
                aVarL.q(str2, fileDescriptor, printWriter, strArr);
                throw null;
            }
        }

        void c() {
            int iK = this.f1528a.k();
            for (int i = 0; i < iK; i++) {
                this.f1528a.l(i).r();
            }
        }

        @Override // androidx.lifecycle.j0
        protected void onCleared() {
            super.onCleared();
            if (this.f1528a.k() <= 0) {
                this.f1528a.c();
            } else {
                this.f1528a.l(0).p(true);
                throw null;
            }
        }
    }

    b(r rVar, n0 n0Var) {
        this.f1527a = rVar;
        this.b = c.b(n0Var);
    }

    @Override // androidx.loader.a.a
    @Deprecated
    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.b.a(str, fileDescriptor, printWriter, strArr);
    }

    @Override // androidx.loader.a.a
    public void c() {
        this.b.c();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        androidx.core.util.b.a(this.f1527a, sb);
        sb.append("}}");
        return sb.toString();
    }
}
