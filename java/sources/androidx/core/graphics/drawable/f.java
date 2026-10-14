package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
final class f extends Drawable.ConstantState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f1129a;
    Drawable.ConstantState b;
    ColorStateList c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    PorterDuff.Mode f1130d;

    f(f fVar) {
        this.c = null;
        this.f1130d = d.f1123g;
        if (fVar != null) {
            this.f1129a = fVar.f1129a;
            this.b = fVar.b;
            this.c = fVar.c;
            this.f1130d = fVar.f1130d;
        }
    }

    boolean a() {
        return this.b != null;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        int i = this.f1129a;
        Drawable.ConstantState constantState = this.b;
        return i | (constantState != null ? constantState.getChangingConfigurations() : 0);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable() {
        return newDrawable(null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable(Resources resources) {
        return Build.VERSION.SDK_INT >= 21 ? new e(this, resources) : new d(this, resources);
    }
}
