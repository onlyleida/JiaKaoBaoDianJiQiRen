package cn.mucang.android.framework.account.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.framework.account.R;

/* JADX INFO: loaded from: classes.dex */
public final class AccountActivityCheckUserBinding implements a {
    public final TextView cardTv;
    public final EditText idCardNumber;
    public final Button okBtn;
    public final EditText realName;
    public final TextView realNameTv;
    private final LinearLayout rootView;
    public final AccountIncludeTitleBarBinding titleBar;
    public final TextView toAuthRealName;

    private AccountActivityCheckUserBinding(LinearLayout linearLayout, TextView textView, EditText editText, Button button, EditText editText2, TextView textView2, AccountIncludeTitleBarBinding accountIncludeTitleBarBinding, TextView textView3) {
        this.rootView = linearLayout;
        this.cardTv = textView;
        this.idCardNumber = editText;
        this.okBtn = button;
        this.realName = editText2;
        this.realNameTv = textView2;
        this.titleBar = accountIncludeTitleBarBinding;
        this.toAuthRealName = textView3;
    }

    public static AccountActivityCheckUserBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.card_tv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.id_card_number;
            EditText editText = (EditText) view.findViewById(i);
            if (editText != null) {
                i = R.id.ok_btn;
                Button button = (Button) view.findViewById(i);
                if (button != null) {
                    i = R.id.real_name;
                    EditText editText2 = (EditText) view.findViewById(i);
                    if (editText2 != null) {
                        i = R.id.real_name_tv;
                        TextView textView2 = (TextView) view.findViewById(i);
                        if (textView2 != null && (viewFindViewById = view.findViewById((i = R.id.title_bar))) != null) {
                            AccountIncludeTitleBarBinding accountIncludeTitleBarBindingBind = AccountIncludeTitleBarBinding.bind(viewFindViewById);
                            i = R.id.to_auth_real_name;
                            TextView textView3 = (TextView) view.findViewById(i);
                            if (textView3 != null) {
                                return new AccountActivityCheckUserBinding((LinearLayout) view, textView, editText, button, editText2, textView2, accountIncludeTitleBarBindingBind, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static AccountActivityCheckUserBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static AccountActivityCheckUserBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.account__activity_check_user, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public LinearLayout getRoot() {
        return this.rootView;
    }
}
