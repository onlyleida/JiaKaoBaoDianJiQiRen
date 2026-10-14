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
public final class AccountActivitySetPasswordBinding implements a {
    public final Button btnOk;
    public final ImageView ivMima;
    public final EditText password;
    public final View passwordPanelBg;
    private final RelativeLayout rootView;
    public final AccountIncludeTitleBarBinding titleBar;

    private AccountActivitySetPasswordBinding(RelativeLayout relativeLayout, Button button, ImageView imageView, EditText editText, View view, AccountIncludeTitleBarBinding accountIncludeTitleBarBinding) {
        this.rootView = relativeLayout;
        this.btnOk = button;
        this.ivMima = imageView;
        this.password = editText;
        this.passwordPanelBg = view;
        this.titleBar = accountIncludeTitleBarBinding;
    }

    public static AccountActivitySetPasswordBinding bind(View view) {
        View viewFindViewById;
        View viewFindViewById2;
        int i = R.id.btn_ok;
        Button button = (Button) view.findViewById(i);
        if (button != null) {
            i = R.id.iv_mima;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null) {
                i = R.id.password;
                EditText editText = (EditText) view.findViewById(i);
                if (editText != null && (viewFindViewById = view.findViewById((i = R.id.password_panel_bg))) != null && (viewFindViewById2 = view.findViewById((i = R.id.title_bar))) != null) {
                    return new AccountActivitySetPasswordBinding((RelativeLayout) view, button, imageView, editText, viewFindViewById, AccountIncludeTitleBarBinding.bind(viewFindViewById2));
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static AccountActivitySetPasswordBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static AccountActivitySetPasswordBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.account__activity_set_password, viewGroup, false);
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
