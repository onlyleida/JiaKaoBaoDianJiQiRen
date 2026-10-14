package com.noober.background.view;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import com.noober.background.BackgroundFactory;

/* JADX INFO: loaded from: classes6.dex */
public class BLTextView extends AppCompatTextView {
    public BLTextView(Context context) {
        super(context);
    }

    private void init(Context context, AttributeSet attributeSet) {
        BackgroundFactory.setViewBackground(context, attributeSet, this);
    }

    public BLTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet);
    }

    public BLTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context, attributeSet);
    }
}
