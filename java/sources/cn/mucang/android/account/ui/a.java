package cn.mucang.android.account.ui;

import android.app.Dialog;
import android.content.Context;
import android.widget.TextView;
import cn.mucang.android.framework.account.R;

/* JADX INFO: loaded from: classes.dex */
public class a extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TextView f2315a;

    public a(Context context) {
        super(context, R.style.Account__Dialog_Transparent);
        a();
        setCanceledOnTouchOutside(false);
    }

    private void a() {
        setContentView(R.layout.account__dialog_loading);
        this.f2315a = (TextView) findViewById(R.id.text);
    }

    public void b(String str) {
        this.f2315a.setText(str);
        show();
    }
}
