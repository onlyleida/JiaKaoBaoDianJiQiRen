package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.ViewGroup;
import android.view.Window;
import androidx.core.view.ViewPropertyAnimatorCompat;

/* JADX INFO: loaded from: classes.dex */
public interface y {
    boolean a();

    boolean b();

    boolean c();

    void collapseActionView();

    void d(Menu menu, androidx.appcompat.view.menu.m.a aVar);

    boolean e();

    void f();

    boolean g();

    Context getContext();

    CharSequence getTitle();

    boolean h();

    void i(int i);

    Menu j();

    int k();

    ViewPropertyAnimatorCompat l(int i, long j);

    ViewGroup m();

    void n(boolean z);

    void o();

    void p(boolean z);

    void q();

    void r(j0 j0Var);

    void s(int i);

    void setIcon(int i);

    void setIcon(Drawable drawable);

    void setVisibility(int i);

    void setWindowCallback(Window.Callback callback);

    void setWindowTitle(CharSequence charSequence);

    void t(androidx.appcompat.view.menu.m.a aVar, androidx.appcompat.view.menu.g.a aVar2);

    int u();

    void v();
}
