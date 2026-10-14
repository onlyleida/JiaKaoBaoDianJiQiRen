package com.noober.background.view;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatEditText;
import com.noober.background.BackgroundFactory;

/* JADX INFO: loaded from: classes6.dex */
public class BLEditText extends AppCompatEditText {
    public BLEditText(Context context) {
        super(context);
    }

    private void init(Context context, AttributeSet attributeSet) {
        BackgroundFactory.setViewBackground(context, attributeSet, this);
    }

    public BLEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet);
    }

    public BLEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context, attributeSet);
    }
}
