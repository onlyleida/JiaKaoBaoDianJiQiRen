package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RatingBar;
import androidx.appcompat.R;

/* JADX INFO: loaded from: classes.dex */
public class p extends RatingBar {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final n f477a;

    public p(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.ratingBarStyle);
    }

    @Override // android.widget.RatingBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected synchronized void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        Bitmap bitmapB = this.f477a.b();
        if (bitmapB != null) {
            setMeasuredDimension(View.resolveSizeAndState(bitmapB.getWidth() * getNumStars(), i, 0), getMeasuredHeight());
        }
    }

    public p(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        l0.a(this, getContext());
        n nVar = new n(this);
        this.f477a = nVar;
        nVar.c(attributeSet, i);
    }
}
