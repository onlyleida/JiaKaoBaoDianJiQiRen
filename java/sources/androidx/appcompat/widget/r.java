package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.SeekBar;
import androidx.appcompat.R;

/* JADX INFO: loaded from: classes.dex */
public class r extends SeekBar {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final s f480a;

    public r(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.seekBarStyle);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        this.f480a.h();
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        this.f480a.i();
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f480a.g(canvas);
    }

    public r(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        l0.a(this, getContext());
        s sVar = new s(this);
        this.f480a = sVar;
        sVar.c(attributeSet, i);
    }
}
