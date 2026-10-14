package cn.mucang.android.framework.account.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.framework.account.R;

/* JADX INFO: loaded from: classes.dex */
public final class AccountActivityAuthRealNameBinding implements a {
    public final EditText idCardNumber;
    public final TextView ignore;
    public final Button okBtn;
    public final TextView otherWay;
    public final EditText realNameEt;
    private final ScrollView rootView;
    public final AccountIncludeTitleBarBinding titleBar;
    public final TextView tvCardNumber;
    public final TextView tvCardType;
    public final TextView tvName;

    private AccountActivityAuthRealNameBinding(ScrollView scrollView, EditText editText, TextView textView, Button button, TextView textView2, EditText editText2, AccountIncludeTitleBarBinding accountIncludeTitleBarBinding, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = scrollView;
        this.idCardNumber = editText;
        this.ignore = textView;
        this.okBtn = button;
        this.otherWay = textView2;
        this.realNameEt = editText2;
        this.titleBar = accountIncludeTitleBarBinding;
        this.tvCardNumber = textView3;
        this.tvCardType = textView4;
        this.tvName = textView5;
    }

    public static AccountActivityAuthRealNameBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.id_card_number;
        EditText editText = (EditText) view.findViewById(i);
        if (editText != null) {
            i = R.id.ignore;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.ok_btn;
                Button button = (Button) view.findViewById(i);
                if (button != null) {
                    i = R.id.other_way;
                    TextView textView2 = (TextView) view.findViewById(i);
                    if (textView2 != null) {
                        i = R.id.real_name_et;
                        EditText editText2 = (EditText) view.findViewById(i);
                        if (editText2 != null && (viewFindViewById = view.findViewById((i = R.id.title_bar))) != null) {
                            AccountIncludeTitleBarBinding accountIncludeTitleBarBindingBind = AccountIncludeTitleBarBinding.bind(viewFindViewById);
                            i = R.id.tv_card_number;
                            TextView textView3 = (TextView) view.findViewById(i);
                            if (textView3 != null) {
                                i = R.id.tv_card_type;
                                TextView textView4 = (TextView) view.findViewById(i);
                                if (textView4 != null) {
                                    i = R.id.tv_name;
                                    TextView textView5 = (TextView) view.findViewById(i);
                                    if (textView5 != null) {
                                        return new AccountActivityAuthRealNameBinding((ScrollView) view, editText, textView, button, textView2, editText2, accountIncludeTitleBarBindingBind, textView3, textView4, textView5);
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

    public static AccountActivityAuthRealNameBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static AccountActivityAuthRealNameBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.account__activity_auth_real_name, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public ScrollView getRoot() {
        return this.rootView;
    }
}
