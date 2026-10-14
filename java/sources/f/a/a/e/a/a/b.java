package f.a.a.e.a.a;

import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import cn.mucang.android.framework.core.R;
import cn.mucang.android.ui.framework.activity.title.CommonTitleView;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private FrameLayout f14527a;
    private cn.mucang.android.ui.framework.activity.title.a b;
    private View c;

    protected abstract String g();

    @Override // f.a.a.e.a.a.a
    protected int getLayoutId() {
        return R.layout.ui_framework__activity_base_title;
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return g();
    }

    protected void h() {
        this.b = CommonTitleView.b(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected <V extends cn.mucang.android.ui.framework.activity.title.a> void i(V v) {
        this.b = v;
        this.f14527a.removeAllViews();
        this.f14527a.addView((View) v);
    }

    @Override // f.a.a.e.a.a.a, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f14527a = (FrameLayout) findViewById(R.id.ui_framework__base_title_container);
        this.c = findViewById(R.id.ui_framework__title_shadow);
        h();
        i(this.b);
        setTitle(g());
    }

    @Override // android.app.Activity
    public void setTitle(CharSequence charSequence) {
        this.b.setTitle(charSequence);
    }
}
