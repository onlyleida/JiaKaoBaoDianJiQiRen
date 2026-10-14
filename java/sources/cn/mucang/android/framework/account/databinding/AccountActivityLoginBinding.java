package cn.mucang.android.framework.account.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.framework.account.R;

/* JADX INFO: loaded from: classes.dex */
public final class AccountActivityLoginBinding implements a {
    public final TextView accountAppeal;
    public final AccountActivityLoginThirdLayoutBinding accountLoginThirdLayoutIn;
    public final AccountIncludeProtocolBinding accountProtocolIn;
    public final Button btnOk;
    public final TextView canNotLogin;
    public final ImageView ivPassword;
    public final ImageView ivPhoneNumber;
    public final TextView loginSms;
    public final EditText password;
    public final View passwordPanelBg;
    public final RelativeLayout phoneLoginMask;
    private final RelativeLayout rootView;
    public final AccountIncludeTitleBarBinding titleBar;
    public final EditText username;
    public final View usernamePanelBg;

    private AccountActivityLoginBinding(RelativeLayout relativeLayout, TextView textView, AccountActivityLoginThirdLayoutBinding accountActivityLoginThirdLayoutBinding, AccountIncludeProtocolBinding accountIncludeProtocolBinding, Button button, TextView textView2, ImageView imageView, ImageView imageView2, TextView textView3, EditText editText, View view, RelativeLayout relativeLayout2, AccountIncludeTitleBarBinding accountIncludeTitleBarBinding, EditText editText2, View view2) {
        this.rootView = relativeLayout;
        this.accountAppeal = textView;
        this.accountLoginThirdLayoutIn = accountActivityLoginThirdLayoutBinding;
        this.accountProtocolIn = accountIncludeProtocolBinding;
        this.btnOk = button;
        this.canNotLogin = textView2;
        this.ivPassword = imageView;
        this.ivPhoneNumber = imageView2;
        this.loginSms = textView3;
        this.password = editText;
        this.passwordPanelBg = view;
        this.phoneLoginMask = relativeLayout2;
        this.titleBar = accountIncludeTitleBarBinding;
        this.username = editText2;
        this.usernamePanelBg = view2;
    }

    public static AccountActivityLoginBinding bind(View view) {
        View viewFindViewById;
        View viewFindViewById2;
        View viewFindViewById3;
        View viewFindViewById4;
        int i = R.id.account_appeal;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null && (viewFindViewById = view.findViewById((i = R.id.account__login_third_layout_in))) != null) {
            AccountActivityLoginThirdLayoutBinding accountActivityLoginThirdLayoutBindingBind = AccountActivityLoginThirdLayoutBinding.bind(viewFindViewById);
            i = R.id.account__protocol_in;
            View viewFindViewById5 = view.findViewById(i);
            if (viewFindViewById5 != null) {
                AccountIncludeProtocolBinding accountIncludeProtocolBindingBind = AccountIncludeProtocolBinding.bind(viewFindViewById5);
                i = R.id.btn_ok;
                Button button = (Button) view.findViewById(i);
                if (button != null) {
                    i = R.id.can_not_login;
                    TextView textView2 = (TextView) view.findViewById(i);
                    if (textView2 != null) {
                        i = R.id.iv_password;
                        ImageView imageView = (ImageView) view.findViewById(i);
                        if (imageView != null) {
                            i = R.id.iv_phone_number;
                            ImageView imageView2 = (ImageView) view.findViewById(i);
                            if (imageView2 != null) {
                                i = R.id.login_sms;
                                TextView textView3 = (TextView) view.findViewById(i);
                                if (textView3 != null) {
                                    i = R.id.password;
                                    EditText editText = (EditText) view.findViewById(i);
                                    if (editText != null && (viewFindViewById2 = view.findViewById((i = R.id.password_panel_bg))) != null) {
                                        i = R.id.phone_login_mask;
                                        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(i);
                                        if (relativeLayout != null && (viewFindViewById3 = view.findViewById((i = R.id.title_bar))) != null) {
                                            AccountIncludeTitleBarBinding accountIncludeTitleBarBindingBind = AccountIncludeTitleBarBinding.bind(viewFindViewById3);
                                            i = R.id.username;
                                            EditText editText2 = (EditText) view.findViewById(i);
                                            if (editText2 != null && (viewFindViewById4 = view.findViewById((i = R.id.username_panel_bg))) != null) {
                                                return new AccountActivityLoginBinding((RelativeLayout) view, textView, accountActivityLoginThirdLayoutBindingBind, accountIncludeProtocolBindingBind, button, textView2, imageView, imageView2, textView3, editText, viewFindViewById2, relativeLayout, accountIncludeTitleBarBindingBind, editText2, viewFindViewById4);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static AccountActivityLoginBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static AccountActivityLoginBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.account__activity_login, viewGroup, false);
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
