package cn.mucang.android.account.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import cn.mucang.android.framework.account.R;

/* JADX INFO: loaded from: classes.dex */
public class LoginSmsDialogView extends b {
    public LoginSmsDialogView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void a() {
        this.b = (EditText) findViewById(R.id.username_input);
        this.c = (EditText) findViewById(R.id.code_input);
        this.f2316a = (Button) findViewById(R.id.btn_resend_input);
        this.f2317d = (Button) findViewById(R.id.btn_ok);
    }

    @Override // cn.mucang.android.account.ui.b
    public EditText getCodeInput() {
        return this.c;
    }

    @Override // cn.mucang.android.account.ui.b
    public Button getOkBtn() {
        return this.f2317d;
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
}
