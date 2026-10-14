package androidx.lifecycle;

/* JADX INFO: loaded from: classes.dex */
public class i0<T> extends z<T> {

    public abstract class a implements a0<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f1514a;
        private final a0<T> b;

        public a(i0 i0Var, a0<T> observer) {
            kotlin.jvm.internal.r.e(observer, "observer");
            this.b = observer;
            this.f1514a = i0Var.f();
        }

        public final int a() {
            return this.f1514a;
        }

        public final a0<T> b() {
            return this.b;
        }

        public final void c(int i) {
            this.f1514a = i;
        }
    }

    public final class b extends i0<T>.a {
        final /* synthetic */ i0 c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(i0 i0Var, a0<T> observer) {
            super(i0Var, observer);
            kotlin.jvm.internal.r.e(observer, "observer");
            this.c = i0Var;
        }

        @Override // androidx.lifecycle.a0
        public void onChanged(T t) {
            if (a() >= this.c.f()) {
                return;
            }
            c(this.c.f());
            b().onChanged(t);
        }
    }

    public final void p(i0<T>.b wrapper) {
        kotlin.jvm.internal.r.e(wrapper, "wrapper");
        super.i(wrapper);
    }

    public void q(r owner, a0<T> observer) {
        kotlin.jvm.internal.r.e(owner, "owner");
        kotlin.jvm.internal.r.e(observer, "observer");
        super.h(owner, new b(this, observer));
    }
}
