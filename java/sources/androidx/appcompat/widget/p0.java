package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
class p0 extends h0 {
    private final WeakReference<Context> b;

    public p0(Context context, Resources resources) {
        super(resources);
        this.b = new WeakReference<>(context);
    }

    @Override // androidx.appcompat.widget.h0, android.content.res.Resources
    public Drawable getDrawable(int i) throws Resources.NotFoundException {
        Drawable drawable = super.getDrawable(i);
        Context context = this.b.get();
        if (drawable != null && context != null) {
            g0.h().x(context, i, drawable);
        }
        return drawable;
    }
}
