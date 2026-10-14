package cn.mucang.android.account.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: classes.dex */
public abstract class b extends RelativeLayout implements cn.mucang.android.ui.framework.mvp.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Button f2316a;
    protected EditText b;
    protected EditText c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected Button f2317d;

    public b(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public abstract EditText getCodeInput();

    public abstract Button getOkBtn();

    public abstract Button getResendInput();

    public abstract EditText getUsernameInput();

    public abstract /* synthetic */ View getView();
}
