package com.noober.background.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.GridLayout;
import com.noober.background.BackgroundFactory;

/* JADX INFO: loaded from: classes6.dex */
public class BLGridLayout extends GridLayout {
    public BLGridLayout(Context context) {
        super(context);
    }

    private void init(Context context, AttributeSet attributeSet) {
        BackgroundFactory.setViewBackground(context, attributeSet, this);
    }

    public BLGridLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet);
    }

    public BLGridLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context, attributeSet);
    }
}
