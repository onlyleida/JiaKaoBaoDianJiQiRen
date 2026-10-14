package cn.mucang.android.account.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.mucang.android.framework.account.R;

/* JADX INFO: loaded from: classes.dex */
public class CaptchaView extends RelativeLayout implements cn.mucang.android.ui.framework.mvp.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ImageView f2308a;
    private ProgressBar b;
    private TextView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f2309d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private EditText f2310e;

    public CaptchaView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ImageView getCaptcha() {
        return this.f2308a;
    }

    public EditText getCode() {
        return this.f2310e;
    }

    public TextView getError() {
        return this.c;
    }

    public ProgressBar getProgress() {
        return this.b;
    }

    public View getRefresh() {
        return this.f2309d;
    }

    @Override // cn.mucang.android.ui.framework.mvp.b
    public View getView() {
        return this;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f2308a = (ImageView) findViewById(R.id.captcha_view);
        this.b = (ProgressBar) findViewById(R.id.captcha_progress);
        this.c = (TextView) findViewById(R.id.captcha_error);
        this.f2309d = findViewById(R.id.captcha_refresh);
        this.f2310e = (EditText) findViewById(R.id.captcha_code);
    }
}
