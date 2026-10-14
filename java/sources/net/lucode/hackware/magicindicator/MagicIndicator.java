package net.lucode.hackware.magicindicator;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes6.dex */
public class MagicIndicator extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private net.lucode.hackware.magicindicator.d.a f16140a;

    public MagicIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void a(int i) {
        net.lucode.hackware.magicindicator.d.a aVar = this.f16140a;
        if (aVar != null) {
            aVar.onPageScrollStateChanged(i);
        }
    }

    public void b(int i, float f2, int i2) {
        net.lucode.hackware.magicindicator.d.a aVar = this.f16140a;
        if (aVar != null) {
            aVar.onPageScrolled(i, f2, i2);
        }
    }

    public void c(int i) {
        net.lucode.hackware.magicindicator.d.a aVar = this.f16140a;
        if (aVar != null) {
            aVar.onPageSelected(i);
        }
    }

    public net.lucode.hackware.magicindicator.d.a getNavigator() {
        return this.f16140a;
    }

    public void setNavigator(net.lucode.hackware.magicindicator.d.a aVar) {
        net.lucode.hackware.magicindicator.d.a aVar2 = this.f16140a;
        if (aVar2 == aVar) {
            return;
        }
        if (aVar2 != null) {
            aVar2.onDetachFromMagicIndicator();
        }
        this.f16140a = aVar;
        removeAllViews();
        if (this.f16140a instanceof View) {
            addView((View) this.f16140a, new FrameLayout.LayoutParams(-1, -1));
            this.f16140a.onAttachToMagicIndicator();
        }
    }
}
