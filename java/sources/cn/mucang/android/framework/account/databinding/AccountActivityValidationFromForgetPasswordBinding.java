package cn.mucang.android.framework.account.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.framework.account.R;

/* JADX INFO: loaded from: classes.dex */
public final class AccountActivityValidationFromForgetPasswordBinding implements a {
    public final Button btnOkFromForgetPassword;
    public final Button btnResendInputFromForgetPassword;
    public final RelativeLayout checkFromForgetPassword;
    public final EditText codeInputFromForgetPassword;
    public final TextView phoneNumberFromForgetPassword;
    private final RelativeLayout rootView;

    private AccountActivityValidationFromForgetPasswordBinding(RelativeLayout relativeLayout, Button button, Button button2, RelativeLayout relativeLayout2, EditText editText, TextView textView) {
        this.rootView = relativeLayout;
        this.btnOkFromForgetPassword = button;
        this.btnResendInputFromForgetPassword = button2;
        this.checkFromForgetPassword = relativeLayout2;
        this.codeInputFromForgetPassword = editText;
        this.phoneNumberFromForgetPassword = textView;
    }

    public static AccountActivityValidationFromForgetPasswordBinding bind(View view) {
        int i = R.id.btn_ok_from_forget_password;
        Button button = (Button) view.findViewById(i);
        if (button != null) {
            i = R.id.btn_resend_input_from_forget_password;
            Button button2 = (Button) view.findViewById(i);
            if (button2 != null) {
                RelativeLayout relativeLayout = (RelativeLayout) view;
                i = R.id.code_input_from_forget_password;
                EditText editText = (EditText) view.findViewById(i);
                if (editText != null) {
                    i = R.id.phone_number_from_forget_password;
                    TextView textView = (TextView) view.findViewById(i);
                    if (textView != null) {
                        return new AccountActivityValidationFromForgetPasswordBinding(relativeLayout, button, button2, relativeLayout, editText, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static AccountActivityValidationFromForgetPasswordBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static AccountActivityValidationFromForgetPasswordBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.account__activity_validation_from_forget_password, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public RelativeLayout getRoot() {
        return this.rootView;
    }
}
