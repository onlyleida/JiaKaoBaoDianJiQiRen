package com.google.android.material.tabs;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.q0;
import com.google.android.material.R;

/* JADX INFO: loaded from: classes3.dex */
public class TabItem extends View {
    public final int customLayout;
    public final Drawable icon;
    public final CharSequence text;

    public TabItem(Context context) {
        this(context, null);
    }

    public TabItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        q0 q0VarU = q0.u(context, attributeSet, R.styleable.TabItem);
        this.text = q0VarU.p(R.styleable.TabItem_android_text);
        this.icon = q0VarU.g(R.styleable.TabItem_android_icon);
        this.customLayout = q0VarU.n(R.styleable.TabItem_android_layout, 0);
        q0VarU.w();
    }
}
