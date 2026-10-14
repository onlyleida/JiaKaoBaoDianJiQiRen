package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class v0 extends Resources {
    private static boolean b = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WeakReference<Context> f523a;

    public v0(Context context, Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.f523a = new WeakReference<>(context);
    }

    public static boolean a() {
        return b;
    }

    public static boolean b() {
        return a() && Build.VERSION.SDK_INT <= 20;
    }

    final Drawable c(int i) {
        return super.getDrawable(i);
    }

    @Override // android.content.res.Resources
    public Drawable getDrawable(int i) throws Resources.NotFoundException {
        Context context = this.f523a.get();
        return context != null ? g0.h().t(context, this, i) : super.getDrawable(i);
    }
}
