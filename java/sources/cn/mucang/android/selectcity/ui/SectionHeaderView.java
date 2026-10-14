package cn.mucang.android.selectcity.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import cn.mucang.android.framework.select.city.R;

/* JADX INFO: loaded from: classes4.dex */
public class SectionHeaderView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TextView f8952a;

    public SectionHeaderView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void a(Context context, AttributeSet attributeSet, int i) {
        TextView textView = (TextView) LayoutInflater.from(context).inflate(R.layout.select_city__section_header, (ViewGroup) this, false);
        this.f8952a = textView;
        addView(textView);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SectionHeaderView, i, 0);
        int i2 = R.styleable.SectionHeaderView_android_text;
        if (typedArrayObtainStyledAttributes.hasValue(i2)) {
            this.f8952a.setText(typedArrayObtainStyledAttributes.getString(i2));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public void setHeaderTitle(String str) {
        this.f8952a.setText(str);
    }

    public SectionHeaderView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet, i);
    }
}
