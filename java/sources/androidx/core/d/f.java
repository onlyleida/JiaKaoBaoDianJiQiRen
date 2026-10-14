package androidx.core.d;

import android.content.Context;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Handler;
import androidx.core.util.h;

/* JADX INFO: loaded from: classes.dex */
public class f {

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f1080a;
        private final b[] b;

        @Deprecated
        public a(int i, b[] bVarArr) {
            this.f1080a = i;
            this.b = bVarArr;
        }

        static a a(int i, b[] bVarArr) {
            return new a(i, bVarArr);
        }

        public b[] b() {
            return this.b;
        }

        public int c() {
            return this.f1080a;
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Uri f1081a;
        private final int b;
        private final int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f1082d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f1083e;

        @Deprecated
        public b(Uri uri, int i, int i2, boolean z, int i3) {
            h.f(uri);
            this.f1081a = uri;
            this.b = i;
            this.c = i2;
            this.f1082d = z;
            this.f1083e = i3;
        }

        static b a(Uri uri, int i, int i2, boolean z, int i3) {
            return new b(uri, i, i2, z, i3);
        }

        public int b() {
            return this.f1083e;
        }

        public int c() {
            return this.b;
        }

        public Uri d() {
            return this.f1081a;
        }

        public int e() {
            return this.c;
        }

        public boolean f() {
            return this.f1082d;
        }
    }

    public static class c {
        public void a(int i) {
            throw null;
        }

        public void b(Typeface typeface) {
            throw null;
        }
    }

    public static Typeface a(Context context, d dVar, int i, boolean z, int i2, Handler handler, c cVar) {
        androidx.core.d.a aVar = new androidx.core.d.a(cVar, handler);
        return z ? e.e(context, dVar, aVar, i, i2) : e.d(context, dVar, i, null, aVar);
    }
}
