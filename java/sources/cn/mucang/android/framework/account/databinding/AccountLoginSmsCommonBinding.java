package cn.mucang.android.framework.account.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import androidx.viewbinding.a;
import cn.mucang.android.account.ui.LoginSmsCommonView;
import cn.mucang.android.framework.account.R;

/* JADX INFO: loaded from: classes.dex */
public final class AccountLoginSmsCommonBinding implements a {
    public final AccountIncludeProtocolBinding accountProtocolIn;
    public final Button btnOk;
    public final Button btnResendInput;
    public final View codeDividerLine;
    public final EditText codeInput;
    public final ImageView ivPhoneCode;
    public final ImageView ivPhoneNumber;
    private final LoginSmsCommonView rootView;
    public final LoginSmsCommonView smsCommon;
    public final EditText usernameInput;

    private AccountLoginSmsCommonBinding(LoginSmsCommonView loginSmsCommonView, AccountIncludeProtocolBinding accountIncludeProtocolBinding, Button button, Button button2, View view, EditText editText, ImageView imageView, ImageView imageView2, LoginSmsCommonView loginSmsCommonView2, EditText editText2) {
        this.rootView = loginSmsCommonView;
        this.accountProtocolIn = accountIncludeProtocolBinding;
        this.btnOk = button;
        this.btnResendInput = button2;
        this.codeDividerLine = view;
        this.codeInput = editText;
        this.ivPhoneCode = imageView;
        this.ivPhoneNumber = imageView2;
        this.smsCommon = loginSmsCommonView2;
        this.usernameInput = editText2;
    }

    public static AccountLoginSmsCommonBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.account__protocol_in;
        View viewFindViewById2 = view.findViewById(i);
        if (viewFindViewById2 != null) {
            AccountIncludeProtocolBinding accountIncludeProtocolBindingBind = AccountIncludeProtocolBinding.bind(viewFindViewById2);
            i = R.id.btn_ok;
            Button button = (Button) view.findViewById(i);
            if (button != null) {
                i = R.id.btn_resend_input;
                Button button2 = (Button) view.findViewById(i);
                if (button2 != null && (viewFindViewById = view.findViewById((i = R.id.code_divider_line))) != null) {
                    i = R.id.code_input;
                    EditText editText = (EditText) view.findViewById(i);
                    if (editText != null) {
                        i = R.id.iv_phone_code;
                        ImageView imageView = (ImageView) view.findViewById(i);
                        if (imageView != null) {
                            i = R.id.iv_phone_number;
                            ImageView imageView2 = (ImageView) view.findViewById(i);
                            if (imageView2 != null) {
                                LoginSmsCommonView loginSmsCommonView = (LoginSmsCommonView) view;
                                i = R.id.username_input;
                                EditText editText2 = (EditText) view.findViewById(i);
                                if (editText2 != null) {
                                    return new AccountLoginSmsCommonBinding(loginSmsCommonView, accountIncludeProtocolBindingBind, button, button2, viewFindViewById, editText, imageView, imageView2, loginSmsCommonView, editText2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static AccountLoginSmsCommonBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static AccountLoginSmsCommonBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.account__login_sms_common, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public LoginSmsCommonView getRoot() {
        return this.rootView;
    }
}
