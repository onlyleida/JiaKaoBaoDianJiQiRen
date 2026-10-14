package androidx.appcompat.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.Toolbar;
import java.lang.ref.WeakReference;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f119a = -100;
    private static final androidx.collection.b<WeakReference<f>> b = new androidx.collection.b<>();
    private static final Object c = new Object();

    f() {
    }

    static void a(f fVar) {
        synchronized (c) {
            y(fVar);
            b.add(new WeakReference<>(fVar));
        }
    }

    public static f e(Activity activity, e eVar) {
        return new AppCompatDelegateImpl(activity, eVar);
    }

    public static f f(Dialog dialog, e eVar) {
        return new AppCompatDelegateImpl(dialog, eVar);
    }

    public static int i() {
        return f119a;
    }

    static void x(f fVar) {
        synchronized (c) {
            y(fVar);
        }
    }

    private static void y(f fVar) {
        synchronized (c) {
            Iterator<WeakReference<f>> it = b.iterator();
            while (it.hasNext()) {
                f fVar2 = it.next().get();
                if (fVar2 == fVar || fVar2 == null) {
                    it.remove();
                }
            }
        }
    }

    public abstract void A(int i);

    public abstract void B(View view);

    public abstract void C(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void D(Toolbar toolbar);

    public void E(int i) {
    }

    public abstract void F(CharSequence charSequence);

    public abstract androidx.appcompat.d.b G(androidx.appcompat.d.b.a aVar);

    public abstract void b(View view, ViewGroup.LayoutParams layoutParams);

    @Deprecated
    public void c(Context context) {
    }

    public Context d(Context context) {
        c(context);
        return context;
    }

    public abstract View g(View view, String str, Context context, AttributeSet attributeSet);

    public abstract <T extends View> T h(int i);

    public abstract b j();

    public int k() {
        return -100;
    }

    public abstract MenuInflater l();

    public abstract a m();

    public abstract void n();

    public abstract void o();

    public abstract void p(Configuration configuration);

    public abstract void q(Bundle bundle);

    public abstract void r();

    public abstract void s(Bundle bundle);

    public abstract void t();

    public abstract void u(Bundle bundle);

    public abstract void v();

    public abstract void w();

    public abstract boolean z(int i);
}
