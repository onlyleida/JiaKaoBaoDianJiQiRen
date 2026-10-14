package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public abstract class j<E> extends f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Activity f1372a;
    private final Context b;
    private final Handler c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final FragmentManager f1373d;

    j(d dVar) {
        this(dVar, dVar, new Handler(), 0);
    }

    @Override // androidx.fragment.app.f
    public View c(int i) {
        return null;
    }

    @Override // androidx.fragment.app.f
    public boolean d() {
        return true;
    }

    Activity e() {
        return this.f1372a;
    }

    Context f() {
        return this.b;
    }

    Handler g() {
        return this.c;
    }

    public void h(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public abstract E i();

    public LayoutInflater j() {
        return LayoutInflater.from(this.b);
    }

    @Deprecated
    public void k(Fragment fragment, String[] strArr, int i) {
    }

    public boolean l(Fragment fragment) {
        return true;
    }

    public boolean m(String str) {
        return false;
    }

    public void n(Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i, Bundle bundle) {
        if (i != -1) {
            throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
        }
        androidx.core.a.a.l(this.b, intent, bundle);
    }

    @Deprecated
    public void o(Fragment fragment, @SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        if (i != -1) {
            throw new IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host");
        }
        androidx.core.app.a.v(this.f1372a, intentSender, i, intent, i2, i3, i4, bundle);
    }

    public void p() {
    }

    j(Activity activity, Context context, Handler handler, int i) {
        this.f1373d = new m();
        this.f1372a = activity;
        androidx.core.util.h.g(context, "context == null");
        this.b = context;
        androidx.core.util.h.g(handler, "handler == null");
        this.c = handler;
    }
}
