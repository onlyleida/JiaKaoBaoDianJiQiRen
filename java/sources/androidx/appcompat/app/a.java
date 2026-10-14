package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.R;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    public interface b {
        void a(boolean z);
    }

    @Deprecated
    public static abstract class c {
        public abstract CharSequence a();

        public abstract View b();

        public abstract Drawable c();

        public abstract CharSequence d();

        public abstract void e();
    }

    public boolean g() {
        return false;
    }

    public abstract boolean h();

    public abstract void i(boolean z);

    public abstract int j();

    public abstract Context k();

    public boolean l() {
        return false;
    }

    public void m(Configuration configuration) {
    }

    void n() {
    }

    public abstract boolean o(int i, KeyEvent keyEvent);

    public boolean p(KeyEvent keyEvent) {
        return false;
    }

    public boolean q() {
        return false;
    }

    public abstract void r(boolean z);

    public abstract void s(boolean z);

    public abstract void t(CharSequence charSequence);

    public androidx.appcompat.d.b u(androidx.appcompat.d.b.a aVar) {
        return null;
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.a$a, reason: collision with other inner class name */
    public static class C0007a extends ViewGroup.MarginLayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f115a;

        public C0007a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f115a = 0;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ActionBarLayout);
            this.f115a = typedArrayObtainStyledAttributes.getInt(R.styleable.ActionBarLayout_android_layout_gravity, 0);
            typedArrayObtainStyledAttributes.recycle();
        }

        public C0007a(int i, int i2) {
            super(i, i2);
            this.f115a = 0;
            this.f115a = 8388627;
        }

        public C0007a(C0007a c0007a) {
            super((ViewGroup.MarginLayoutParams) c0007a);
            this.f115a = 0;
            this.f115a = c0007a.f115a;
        }

        public C0007a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f115a = 0;
        }
    }
}
