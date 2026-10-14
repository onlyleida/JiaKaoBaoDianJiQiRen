package androidx.appcompat.widget;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;
import androidx.appcompat.R;

/* JADX INFO: loaded from: classes.dex */
class m extends PopupWindow {
    private static final boolean b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f471a;

    static {
        b = Build.VERSION.SDK_INT < 21;
    }

    public m(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        a(context, attributeSet, i, i2);
    }

    private void a(Context context, AttributeSet attributeSet, int i, int i2) {
        q0 q0VarV = q0.v(context, attributeSet, R.styleable.PopupWindow, i, i2);
        int i3 = R.styleable.PopupWindow_overlapAnchor;
        if (q0VarV.s(i3)) {
            b(q0VarV.a(i3, false));
        }
        setBackgroundDrawable(q0VarV.g(R.styleable.PopupWindow_android_popupBackground));
        q0VarV.w();
    }

    private void b(boolean z) {
        if (b) {
            this.f471a = z;
        } else {
            androidx.core.widget.h.a(this, z);
        }
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2) {
        if (b && this.f471a) {
            i2 -= view.getHeight();
        }
        super.showAsDropDown(view, i, i2);
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int i, int i2, int i3, int i4) {
        if (b && this.f471a) {
            i2 -= view.getHeight();
        }
        super.update(view, i, i2, i3, i4);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2, int i3) {
        if (b && this.f471a) {
            i2 -= view.getHeight();
        }
        super.showAsDropDown(view, i, i2, i3);
    }
}
