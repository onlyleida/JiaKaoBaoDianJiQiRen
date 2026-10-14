package cn.mucang.android.framework.account.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.viewbinding.a;
import cn.mucang.android.framework.account.R;

/* JADX INFO: loaded from: classes.dex */
public final class AccountActivityForgotPasswordBinding implements a {
    public final AccountIncludeProtocolBinding accountProtocolIn;
    public final Button btnOk;
    public final AccountWidgetCaptchaBinding captcha;
    public final ImageView ivPhoneNumber;
    private final RelativeLayout rootView;
    public final AccountIncludeTitleBarBinding titleBar;
    public final EditText username;
    public final View usernamePanelBg;

    private AccountActivityForgotPasswordBinding(RelativeLayout relativeLayout, AccountIncludeProtocolBinding accountIncludeProtocolBinding, Button button, AccountWidgetCaptchaBinding accountWidgetCaptchaBinding, ImageView imageView, AccountIncludeTitleBarBinding accountIncludeTitleBarBinding, EditText editText, View view) {
        this.rootView = relativeLayout;
        this.accountProtocolIn = accountIncludeProtocolBinding;
        this.btnOk = button;
        this.captcha = accountWidgetCaptchaBinding;
        this.ivPhoneNumber = imageView;
        this.titleBar = accountIncludeTitleBarBinding;
        this.username = editText;
        this.usernamePanelBg = view;
    }

    public static AccountActivityForgotPasswordBinding bind(View view) {
        View viewFindViewById;
        View viewFindViewById2;
        View viewFindViewById3;
        int i = R.id.account__protocol_in;
        View viewFindViewById4 = view.findViewById(i);
        if (viewFindViewById4 != null) {
            AccountIncludeProtocolBinding accountIncludeProtocolBindingBind = AccountIncludeProtocolBinding.bind(viewFindViewById4);
            i = R.id.btn_ok;
            Button button = (Button) view.findViewById(i);
            if (button != null && (viewFindViewById = view.findViewById((i = R.id.captcha))) != null) {
                AccountWidgetCaptchaBinding accountWidgetCaptchaBindingBind = AccountWidgetCaptchaBinding.bind(viewFindViewById);
                i = R.id.iv_phone_number;
                ImageView imageView = (ImageView) view.findViewById(i);
                if (imageView != null && (viewFindViewById2 = view.findViewById((i = R.id.title_bar))) != null) {
                    AccountIncludeTitleBarBinding accountIncludeTitleBarBindingBind = AccountIncludeTitleBarBinding.bind(viewFindViewById2);
                    i = R.id.username;
                    EditText editText = (EditText) view.findViewById(i);
                    if (editText != null && (viewFindViewById3 = view.findViewById((i = R.id.username_panel_bg))) != null) {
                        return new AccountActivityForgotPasswordBinding((RelativeLayout) view, accountIncludeProtocolBindingBind, button, accountWidgetCaptchaBindingBind, imageView, accountIncludeTitleBarBindingBind, editText, viewFindViewById3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static AccountActivityForgotPasswordBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static AccountActivityForgotPasswordBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.account__activity_forgot_password, viewGroup, false);
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
