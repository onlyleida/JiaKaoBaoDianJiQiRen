package cn.mucang.android.ui.framework.fragment.viewpager.tabhost.bubble;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.mucang.android.framework.core.R;

/* JADX INFO: loaded from: classes4.dex */
public class BubbleView extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TextView f8976a;

    public BubbleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public TextView getTextView() {
        return this.f8976a;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f8976a = (TextView) findViewById(R.id.tab_bubble);
    }
}
