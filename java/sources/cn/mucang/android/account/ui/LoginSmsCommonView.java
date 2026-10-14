package cn.mucang.android.account.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import cn.mucang.android.framework.account.R;

/* JADX INFO: loaded from: classes.dex */
public class LoginSmsCommonView extends b implements cn.mucang.android.ui.framework.mvp.b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f2311e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextView f2312f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected CheckBox f2313g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private View f2314h;

    public LoginSmsCommonView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void a() {
        this.b = (EditText) findViewById(R.id.username_input);
        this.c = (EditText) findViewById(R.id.code_input);
        this.f2316a = (Button) findViewById(R.id.btn_resend_input);
        this.f2317d = (Button) findViewById(R.id.btn_ok);
        this.f2311e = (TextView) findViewById(R.id.btn_send_voice_code);
        this.f2312f = (TextView) findViewById(R.id.tv_protocol);
        this.f2313g = (CheckBox) findViewById(R.id.check_box);
        this.f2314h = findViewById(R.id.account__protocol_in);
    }

    public TextView getBtnSendSmsCode() {
        return this.f2311e;
    }

    public CheckBox getCheckBox() {
        return this.f2313g;
    }

    @Override // cn.mucang.android.account.ui.b
    public EditText getCodeInput() {
        return this.c;
    }

    @Override // cn.mucang.android.account.ui.b
    public Button getOkBtn() {
        return this.f2317d;
    }

    public View getProtocolIn() {
        return this.f2314h;
    }

    public TextView getProtocolTv() {
        return this.f2312f;
    }

    @Override // cn.mucang.android.account.ui.b
    public Button getResendInput() {
        return this.f2316a;
    }

    @Override // cn.mucang.android.account.ui.b
    public EditText getUsernameInput() {
        return this.b;
    }

    @Override // cn.mucang.android.account.ui.b, cn.mucang.android.ui.framework.mvp.b
    public View getView() {
        return this;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        a();
    }

    public void setBtnSendSmsCode(TextView textView) {
        this.f2311e = textView;
    }
}
