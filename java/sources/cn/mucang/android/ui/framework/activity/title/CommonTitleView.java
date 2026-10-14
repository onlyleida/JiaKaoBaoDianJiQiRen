package cn.mucang.android.ui.framework.activity.title;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.mucang.android.core.utils.d;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t0;
import cn.mucang.android.framework.core.R;
import cn.mucang.android.ui.framework.mvp.b;

/* JADX INFO: loaded from: classes4.dex */
public class CommonTitleView extends RelativeLayout implements b, cn.mucang.android.ui.framework.activity.title.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected TextView f8969a;
    protected ImageView b;

    class a implements View.OnClickListener {
        a(CommonTitleView commonTitleView) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Activity activityA = d.a(view);
            if (activityA != null) {
                try {
                    activityA.onBackPressed();
                } catch (Exception unused) {
                    activityA.finish();
                }
            }
        }
    }

    public CommonTitleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void a() {
        this.b.setOnClickListener(new a(this));
    }

    public static CommonTitleView b(Context context) {
        return (CommonTitleView) t0.a(context, R.layout.ui_framework__view_common_title);
    }

    @Override // cn.mucang.android.ui.framework.mvp.b
    public View getView() {
        return this;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f8969a = (TextView) findViewById(R.id.ui_framework__common_title_view_title);
        this.b = (ImageView) findViewById(R.id.ui_framework__common_title_view_left_button);
        a();
    }

    @Override // cn.mucang.android.ui.framework.activity.title.a
    public void setTitle(CharSequence charSequence) {
        this.f8969a.setText(charSequence);
    }

    public void setTitle(int i) {
        this.f8969a.setText(n0.c(i));
    }
}
