package androidx.appcompat.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Build;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class n0 extends ContextWrapper {
    private static final Object c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static ArrayList<WeakReference<n0>> f473d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Resources f474a;
    private final Resources.Theme b;

    private n0(Context context) {
        super(context);
        if (!v0.b()) {
            this.f474a = new p0(this, context.getResources());
            this.b = null;
            return;
        }
        v0 v0Var = new v0(this, context.getResources());
        this.f474a = v0Var;
        Resources.Theme themeNewTheme = v0Var.newTheme();
        this.b = themeNewTheme;
        themeNewTheme.setTo(context.getTheme());
    }

    private static boolean a(Context context) {
        if ((context instanceof n0) || (context.getResources() instanceof p0) || (context.getResources() instanceof v0)) {
            return false;
        }
        return Build.VERSION.SDK_INT < 21 || v0.b();
    }

    public static Context b(Context context) {
        if (!a(context)) {
            return context;
        }
        synchronized (c) {
            ArrayList<WeakReference<n0>> arrayList = f473d;
            if (arrayList == null) {
                f473d = new ArrayList<>();
            } else {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    WeakReference<n0> weakReference = f473d.get(size);
                    if (weakReference == null || weakReference.get() == null) {
                        f473d.remove(size);
                    }
                }
                for (int size2 = f473d.size() - 1; size2 >= 0; size2--) {
                    WeakReference<n0> weakReference2 = f473d.get(size2);
                    n0 n0Var = weakReference2 != null ? weakReference2.get() : null;
                    if (n0Var != null && n0Var.getBaseContext() == context) {
                        return n0Var;
                    }
                }
            }
            n0 n0Var2 = new n0(context);
            f473d.add(new WeakReference<>(n0Var2));
            return n0Var2;
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return this.f474a.getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return this.f474a;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.b;
        return theme == null ? super.getTheme() : theme;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        Resources.Theme theme = this.b;
        if (theme == null) {
            super.setTheme(i);
        } else {
            theme.applyStyle(i, true);
        }
    }
}
