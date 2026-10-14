package cn.mucang.android.framework.account.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.viewbinding.a;
import cn.mucang.android.framework.account.R;

/* JADX INFO: loaded from: classes.dex */
public final class AccountActivityLoginSsoBinding implements a {
    public final Button btnOk;
    public final EditText codeInput;
    public final RelativeLayout codeInputClear;
    public final View codePanelBg;
    public final EditText password;
    public final RelativeLayout passwordClear;
    public final View passwordPanelBg;
    public final CheckBox rememberPassword;
    public final CheckBox rememberUsername;
    private final RelativeLayout rootView;
    public final LinearLayout step1Panel;
    public final RelativeLayout step2Panel;
    public final AccountIncludeTitleBarBinding titleBar;
    public final EditText username;
    public final RelativeLayout usernameClear;
    public final View usernamePanelBg;

    private AccountActivityLoginSsoBinding(RelativeLayout relativeLayout, Button button, EditText editText, RelativeLayout relativeLayout2, View view, EditText editText2, RelativeLayout relativeLayout3, View view2, CheckBox checkBox, CheckBox checkBox2, LinearLayout linearLayout, RelativeLayout relativeLayout4, AccountIncludeTitleBarBinding accountIncludeTitleBarBinding, EditText editText3, RelativeLayout relativeLayout5, View view3) {
        this.rootView = relativeLayout;
        this.btnOk = button;
        this.codeInput = editText;
        this.codeInputClear = relativeLayout2;
        this.codePanelBg = view;
        this.password = editText2;
        this.passwordClear = relativeLayout3;
        this.passwordPanelBg = view2;
        this.rememberPassword = checkBox;
        this.rememberUsername = checkBox2;
        this.step1Panel = linearLayout;
        this.step2Panel = relativeLayout4;
        this.titleBar = accountIncludeTitleBarBinding;
        this.username = editText3;
        this.usernameClear = relativeLayout5;
        this.usernamePanelBg = view3;
    }

    public static AccountActivityLoginSsoBinding bind(View view) {
        View viewFindViewById;
        View viewFindViewById2;
        View viewFindViewById3;
        View viewFindViewById4;
        int i = R.id.btn_ok;
        Button button = (Button) view.findViewById(i);
        if (button != null) {
            i = R.id.code_input;
            EditText editText = (EditText) view.findViewById(i);
            if (editText != null) {
                i = R.id.code_input_clear;
                RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(i);
                if (relativeLayout != null && (viewFindViewById = view.findViewById((i = R.id.code_panel_bg))) != null) {
                    i = R.id.password;
                    EditText editText2 = (EditText) view.findViewById(i);
                    if (editText2 != null) {
                        i = R.id.password_clear;
                        RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(i);
                        if (relativeLayout2 != null && (viewFindViewById2 = view.findViewById((i = R.id.password_panel_bg))) != null) {
                            i = R.id.remember_password;
                            CheckBox checkBox = (CheckBox) view.findViewById(i);
                            if (checkBox != null) {
                                i = R.id.remember_username;
                                CheckBox checkBox2 = (CheckBox) view.findViewById(i);
                                if (checkBox2 != null) {
                                    i = R.id.step1_panel;
                                    LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                                    if (linearLayout != null) {
                                        i = R.id.step2_panel;
                                        RelativeLayout relativeLayout3 = (RelativeLayout) view.findViewById(i);
                                        if (relativeLayout3 != null && (viewFindViewById3 = view.findViewById((i = R.id.title_bar))) != null) {
                                            AccountIncludeTitleBarBinding accountIncludeTitleBarBindingBind = AccountIncludeTitleBarBinding.bind(viewFindViewById3);
                                            i = R.id.username;
                                            EditText editText3 = (EditText) view.findViewById(i);
                                            if (editText3 != null) {
                                                i = R.id.username_clear;
                                                RelativeLayout relativeLayout4 = (RelativeLayout) view.findViewById(i);
                                                if (relativeLayout4 != null && (viewFindViewById4 = view.findViewById((i = R.id.username_panel_bg))) != null) {
                                                    return new AccountActivityLoginSsoBinding((RelativeLayout) view, button, editText, relativeLayout, viewFindViewById, editText2, relativeLayout2, viewFindViewById2, checkBox, checkBox2, linearLayout, relativeLayout3, accountIncludeTitleBarBindingBind, editText3, relativeLayout4, viewFindViewById4);
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

    public static AccountActivityLoginSsoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static AccountActivityLoginSsoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.account__activity_login_sso, viewGroup, false);
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
