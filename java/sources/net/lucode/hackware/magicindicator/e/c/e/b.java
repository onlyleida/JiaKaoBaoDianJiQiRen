package net.lucode.hackware.magicindicator.e.c.e;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextUtils;
import android.widget.TextView;

/* JADX INFO: loaded from: classes6.dex */
public class b extends TextView implements net.lucode.hackware.magicindicator.e.c.b.b {
    protected int mNormalColor;
    protected int mSelectedColor;

    public b(Context context) {
        super(context, null);
        init(context);
    }

    private void init(Context context) {
        setGravity(17);
        int iA = net.lucode.hackware.magicindicator.e.b.a(context, 10.0d);
        setPadding(iA, 0, iA, 0);
        setSingleLine();
        setEllipsize(TextUtils.TruncateAt.END);
    }

    @Override // net.lucode.hackware.magicindicator.e.c.b.b
    public int getContentBottom() {
        Paint.FontMetrics fontMetrics = getPaint().getFontMetrics();
        return (int) ((getHeight() / 2) + ((fontMetrics.bottom - fontMetrics.top) / 2.0f));
    }

    @Override // net.lucode.hackware.magicindicator.e.c.b.b
    public int getContentLeft() {
        Rect rect = new Rect();
        getPaint().getTextBounds(getText().toString(), 0, getText().length(), rect);
        return (getLeft() + (getWidth() / 2)) - (rect.width() / 2);
    }

    @Override // net.lucode.hackware.magicindicator.e.c.b.b
    public int getContentRight() {
        Rect rect = new Rect();
        getPaint().getTextBounds(getText().toString(), 0, getText().length(), rect);
        return getLeft() + (getWidth() / 2) + (rect.width() / 2);
    }

    @Override // net.lucode.hackware.magicindicator.e.c.b.b
    public int getContentTop() {
        Paint.FontMetrics fontMetrics = getPaint().getFontMetrics();
        return (int) ((getHeight() / 2) - ((fontMetrics.bottom - fontMetrics.top) / 2.0f));
    }

    public int getNormalColor() {
        return this.mNormalColor;
    }

    public int getSelectedColor() {
        return this.mSelectedColor;
    }

    public void onDeselected(int i, int i2) {
        setTextColor(this.mNormalColor);
    }

    public void onEnter(int i, int i2, float f2, boolean z) {
    }

    public void onLeave(int i, int i2, float f2, boolean z) {
    }

    public void onSelected(int i, int i2) {
        setTextColor(this.mSelectedColor);
    }

    public void setNormalColor(int i) {
        this.mNormalColor = i;
    }

    public void setSelectedColor(int i) {
        this.mSelectedColor = i;
    }
}
