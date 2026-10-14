package cn.mucang.android.account.utils;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.EditText;
import cn.mucang.android.core.utils.n0;

/* JADX INFO: loaded from: classes.dex */
public class e implements TextWatcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private EditText f2255a;
    private Button b;

    public e(EditText editText, Button button) {
        this.f2255a = editText;
        this.b = button;
        if (n0.g(editText.getText().toString())) {
            a();
        } else {
            b();
        }
    }

    public void a() {
        this.b.setAlpha(1.0f);
        this.b.setEnabled(true);
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        if (n0.g(this.f2255a.getText().toString())) {
            a();
        } else {
            b();
        }
    }

    public void b() {
        this.b.setAlpha(0.5f);
        this.b.setEnabled(false);
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
