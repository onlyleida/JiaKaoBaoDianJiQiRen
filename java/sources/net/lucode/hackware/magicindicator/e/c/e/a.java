package net.lucode.hackware.magicindicator.e.c.e;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public class a extends b {
    public a(Context context) {
        super(context);
    }

    @Override // net.lucode.hackware.magicindicator.e.c.e.b, net.lucode.hackware.magicindicator.e.c.b.d
    public void onDeselected(int i, int i2) {
    }

    @Override // net.lucode.hackware.magicindicator.e.c.e.b, net.lucode.hackware.magicindicator.e.c.b.d
    public void onEnter(int i, int i2, float f2, boolean z) {
        setTextColor(net.lucode.hackware.magicindicator.e.a.a(f2, this.mNormalColor, this.mSelectedColor));
    }

    @Override // net.lucode.hackware.magicindicator.e.c.e.b, net.lucode.hackware.magicindicator.e.c.b.d
    public void onLeave(int i, int i2, float f2, boolean z) {
        setTextColor(net.lucode.hackware.magicindicator.e.a.a(f2, this.mSelectedColor, this.mNormalColor));
    }

    @Override // net.lucode.hackware.magicindicator.e.c.e.b, net.lucode.hackware.magicindicator.e.c.b.d
    public void onSelected(int i, int i2) {
    }
}
