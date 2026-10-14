package cn.mucang.android.framework.account.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.framework.account.R;

/* JADX INFO: loaded from: classes.dex */
public final class AccountActivityValidationBinding implements a {
    public final AccountIncludeProtocolBinding accountProtocolIn;
    public final LinearLayout accountProtocolLl;
    public final LinearLayout bindTitleView;
    public final Button btnResendInput;
    public final TextView btnSendVoiceCode;
    public final TextView changeMobile;
    public final AccountActivityValidationFromForgetPasswordBinding checkFromForgetPassword;
    public final RelativeLayout checkFromView;
    public final View codeDividerLine;
    public final EditText codeInput;
    public final TextView finishedText;
    public final ImageView ivPhoneCode;
    public final ImageView ivPhoneNumber;
    public final ImageView ivPhoneNumber2;
    public final Button okBtn;
    public final RelativeLayout panelInputUsername;
    public final RelativeLayout panelShowUsername;
    public final TextView regUsernameShow;
    private final RelativeLayout rootView;
    public final AccountIncludeTitleBarBinding titleBar;
    public final EditText usernameInput;

    private AccountActivityValidationBinding(RelativeLayout relativeLayout, AccountIncludeProtocolBinding accountIncludeProtocolBinding, LinearLayout linearLayout, LinearLayout linearLayout2, Button button, TextView textView, TextView textView2, AccountActivityValidationFromForgetPasswordBinding accountActivityValidationFromForgetPasswordBinding, RelativeLayout relativeLayout2, View view, EditText editText, TextView textView3, ImageView imageView, ImageView imageView2, ImageView imageView3, Button button2, RelativeLayout relativeLayout3, RelativeLayout relativeLayout4, TextView textView4, AccountIncludeTitleBarBinding accountIncludeTitleBarBinding, EditText editText2) {
        this.rootView = relativeLayout;
        this.accountProtocolIn = accountIncludeProtocolBinding;
        this.accountProtocolLl = linearLayout;
        this.bindTitleView = linearLayout2;
        this.btnResendInput = button;
        this.btnSendVoiceCode = textView;
        this.changeMobile = textView2;
        this.checkFromForgetPassword = accountActivityValidationFromForgetPasswordBinding;
        this.checkFromView = relativeLayout2;
        this.codeDividerLine = view;
        this.codeInput = editText;
        this.finishedText = textView3;
        this.ivPhoneCode = imageView;
        this.ivPhoneNumber = imageView2;
        this.ivPhoneNumber2 = imageView3;
        this.okBtn = button2;
        this.panelInputUsername = relativeLayout3;
        this.panelShowUsername = relativeLayout4;
        this.regUsernameShow = textView4;
        this.titleBar = accountIncludeTitleBarBinding;
        this.usernameInput = editText2;
    }

    public static AccountActivityValidationBinding bind(View view) {
        View viewFindViewById;
        View viewFindViewById2;
        View viewFindViewById3;
        int i = R.id.account__protocol_in;
        View viewFindViewById4 = view.findViewById(i);
        if (viewFindViewById4 != null) {
            AccountIncludeProtocolBinding accountIncludeProtocolBindingBind = AccountIncludeProtocolBinding.bind(viewFindViewById4);
            i = R.id.account__protocol_ll;
            LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
            if (linearLayout != null) {
                i = R.id.bind_title_view;
                LinearLayout linearLayout2 = (LinearLayout) view.findViewById(i);
                if (linearLayout2 != null) {
                    i = R.id.btn_resend_input;
                    Button button = (Button) view.findViewById(i);
                    if (button != null) {
                        i = R.id.btn_send_voice_code;
                        TextView textView = (TextView) view.findViewById(i);
                        if (textView != null) {
                            i = R.id.change_mobile;
                            TextView textView2 = (TextView) view.findViewById(i);
                            if (textView2 != null && (viewFindViewById = view.findViewById((i = R.id.check_from_forget_password))) != null) {
                                AccountActivityValidationFromForgetPasswordBinding accountActivityValidationFromForgetPasswordBindingBind = AccountActivityValidationFromForgetPasswordBinding.bind(viewFindViewById);
                                i = R.id.check_from_view;
                                RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(i);
                                if (relativeLayout != null && (viewFindViewById2 = view.findViewById((i = R.id.code_divider_line))) != null) {
                                    i = R.id.code_input;
                                    EditText editText = (EditText) view.findViewById(i);
                                    if (editText != null) {
                                        i = R.id.finished_text;
                                        TextView textView3 = (TextView) view.findViewById(i);
                                        if (textView3 != null) {
                                            i = R.id.iv_phone_code;
                                            ImageView imageView = (ImageView) view.findViewById(i);
                                            if (imageView != null) {
                                                i = R.id.iv_phone_number;
                                                ImageView imageView2 = (ImageView) view.findViewById(i);
                                                if (imageView2 != null) {
                                                    i = R.id.iv_phone_number2;
                                                    ImageView imageView3 = (ImageView) view.findViewById(i);
                                                    if (imageView3 != null) {
                                                        i = R.id.ok_btn;
                                                        Button button2 = (Button) view.findViewById(i);
                                                        if (button2 != null) {
                                                            i = R.id.panel_input_username;
                                                            RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(i);
                                                            if (relativeLayout2 != null) {
                                                                i = R.id.panel_show_username;
                                                                RelativeLayout relativeLayout3 = (RelativeLayout) view.findViewById(i);
                                                                if (relativeLayout3 != null) {
                                                                    i = R.id.reg_username_show;
                                                                    TextView textView4 = (TextView) view.findViewById(i);
                                                                    if (textView4 != null && (viewFindViewById3 = view.findViewById((i = R.id.title_bar))) != null) {
                                                                        AccountIncludeTitleBarBinding accountIncludeTitleBarBindingBind = AccountIncludeTitleBarBinding.bind(viewFindViewById3);
                                                                        i = R.id.username_input;
                                                                        EditText editText2 = (EditText) view.findViewById(i);
                                                                        if (editText2 != null) {
                                                                            return new AccountActivityValidationBinding((RelativeLayout) view, accountIncludeProtocolBindingBind, linearLayout, linearLayout2, button, textView, textView2, accountActivityValidationFromForgetPasswordBindingBind, relativeLayout, viewFindViewById2, editText, textView3, imageView, imageView2, imageView3, button2, relativeLayout2, relativeLayout3, textView4, accountIncludeTitleBarBindingBind, editText2);
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
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static AccountActivityValidationBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static AccountActivityValidationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.account__activity_validation, viewGroup, false);
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
