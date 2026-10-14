package androidx.core.d;

import android.graphics.Typeface;
import android.os.Handler;

/* JADX INFO: loaded from: classes.dex */
class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f.c f1063a;
    private final Handler b;

    /* JADX INFO: renamed from: androidx.core.d.a$a, reason: collision with other inner class name */
    class RunnableC0027a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ f.c f1064a;
        final /* synthetic */ Typeface b;

        RunnableC0027a(a aVar, f.c cVar, Typeface typeface) {
            this.f1064a = cVar;
            this.b = typeface;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f1064a.b(this.b);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ f.c f1065a;
        final /* synthetic */ int b;

        b(a aVar, f.c cVar, int i) {
            this.f1065a = cVar;
            this.b = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f1065a.a(this.b);
        }
    }

    a(f.c cVar, Handler handler) {
        this.f1063a = cVar;
        this.b = handler;
    }

    private void a(int i) {
        this.b.post(new b(this, this.f1063a, i));
    }

    private void c(Typeface typeface) {
        this.b.post(new RunnableC0027a(this, this.f1063a, typeface));
    }

    void b(e.C0028e c0028e) {
        if (c0028e.a()) {
            c(c0028e.f1079a);
        } else {
            a(c0028e.b);
        }
    }
}
