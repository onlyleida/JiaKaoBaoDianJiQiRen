package com.serenegiant.widget;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.Checkable;
import android.widget.ImageButton;
import androidx.appcompat.widget.j;

/* JADX INFO: loaded from: classes6.dex */
public class CheckableImageButton extends j implements Checkable {
    private static final boolean DEBUG = false;
    private boolean mIsChecked;
    private static final String TAG = CheckableImageButton.class.getSimpleName();
    private static final int[] CHECKED_STATE_SET = {R.attr.state_checked};

    public CheckableImageButton(Context context) {
        this(context, null, 0);
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.mIsChecked;
    }

    @Override // android.widget.ImageView, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            ImageButton.mergeDrawableStates(iArrOnCreateDrawableState, CHECKED_STATE_SET);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (this.mIsChecked != z) {
            this.mIsChecked = z;
            refreshDrawableState();
        }
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.mIsChecked);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
