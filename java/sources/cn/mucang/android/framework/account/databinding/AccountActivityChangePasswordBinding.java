package cn.mucang.android.framework.account.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.framework.account.R;

/* JADX INFO: loaded from: classes.dex */
public final class AccountActivityChangePasswordBinding implements a {
    public final Button btnOk;
    public final LinearLayout forgotMask;
    public final TextView forgotPasswordBtn;
    public final EditText newPassword;
    public final EditText oldPassword;
    private final RelativeLayout rootView;
    public final AccountIncludeTitleBarBinding titleBar;
    public final TextView tvNew;
    public final TextView tvOld;

    private AccountActivityChangePasswordBinding(RelativeLayout relativeLayout, Button button, LinearLayout linearLayout, TextView textView, EditText editText, EditText editText2, AccountIncludeTitleBarBinding accountIncludeTitleBarBinding, TextView textView2, TextView textView3) {
        this.rootView = relativeLayout;
        this.btnOk = button;
        this.forgotMask = linearLayout;
        this.forgotPasswordBtn = textView;
        this.newPassword = editText;
        this.oldPassword = editText2;
        this.titleBar = accountIncludeTitleBarBinding;
        this.tvNew = textView2;
        this.tvOld = textView3;
    }

    public static AccountActivityChangePasswordBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.btn_ok;
        Button button = (Button) view.findViewById(i);
        if (button != null) {
            i = R.id.forgot_mask;
            LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
            if (linearLayout != null) {
                i = R.id.forgot_password_btn;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    i = R.id.new_password;
                    EditText editText = (EditText) view.findViewById(i);
                    if (editText != null) {
                        i = R.id.old_password;
                        EditText editText2 = (EditText) view.findViewById(i);
                        if (editText2 != null && (viewFindViewById = view.findViewById((i = R.id.title_bar))) != null) {
                            AccountIncludeTitleBarBinding accountIncludeTitleBarBindingBind = AccountIncludeTitleBarBinding.bind(viewFindViewById);
                            i = R.id.tv_new;
                            TextView textView2 = (TextView) view.findViewById(i);
                            if (textView2 != null) {
                                i = R.id.tv_old;
                                TextView textView3 = (TextView) view.findViewById(i);
                                if (textView3 != null) {
                                    return new AccountActivityChangePasswordBinding((RelativeLayout) view, button, linearLayout, textView, editText, editText2, accountIncludeTitleBarBindingBind, textView2, textView3);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static AccountActivityChangePasswordBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static AccountActivityChangePasswordBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.account__activity_change_password, viewGroup, false);
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
