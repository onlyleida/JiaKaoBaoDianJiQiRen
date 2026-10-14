package androidx.activity;

import android.annotation.SuppressLint;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.o;
import androidx.lifecycle.r;
import java.util.ArrayDeque;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class OnBackPressedDispatcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Runnable f33a;
    final ArrayDeque<b> b = new ArrayDeque<>();

    private class LifecycleOnBackPressedCancellable implements o, androidx.activity.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Lifecycle f34a;
        private final b b;
        private androidx.activity.a c;

        LifecycleOnBackPressedCancellable(Lifecycle lifecycle, b bVar) {
            this.f34a = lifecycle;
            this.b = bVar;
            lifecycle.a(this);
        }

        @Override // androidx.lifecycle.o
        public void b(r rVar, Lifecycle.Event event) {
            if (event == Lifecycle.Event.ON_START) {
                this.c = OnBackPressedDispatcher.this.b(this.b);
                return;
            }
            if (event != Lifecycle.Event.ON_STOP) {
                if (event == Lifecycle.Event.ON_DESTROY) {
                    cancel();
                }
            } else {
                androidx.activity.a aVar = this.c;
                if (aVar != null) {
                    aVar.cancel();
                }
            }
        }

        @Override // androidx.activity.a
        public void cancel() {
            this.f34a.c(this);
            this.b.e(this);
            androidx.activity.a aVar = this.c;
            if (aVar != null) {
                aVar.cancel();
                this.c = null;
            }
        }
    }

    private class a implements androidx.activity.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final b f36a;

        a(b bVar) {
            this.f36a = bVar;
        }

        @Override // androidx.activity.a
        public void cancel() {
            OnBackPressedDispatcher.this.b.remove(this.f36a);
            this.f36a.e(this);
        }
    }

    public OnBackPressedDispatcher(Runnable runnable) {
        this.f33a = runnable;
    }

    @SuppressLint({"LambdaLast"})
    public void a(r rVar, b bVar) {
        Lifecycle lifecycle = rVar.getLifecycle();
        if (lifecycle.b() == Lifecycle.State.DESTROYED) {
            return;
        }
        bVar.a(new LifecycleOnBackPressedCancellable(lifecycle, bVar));
    }

    androidx.activity.a b(b bVar) {
        this.b.add(bVar);
        a aVar = new a(bVar);
        bVar.a(aVar);
        return aVar;
    }

    public void c() {
        Iterator<b> itDescendingIterator = this.b.descendingIterator();
        while (itDescendingIterator.hasNext()) {
            b next = itDescendingIterator.next();
            if (next.c()) {
                next.b();
                return;
            }
        }
        Runnable runnable = this.f33a;
        if (runnable != null) {
            runnable.run();
        }
    }
}
