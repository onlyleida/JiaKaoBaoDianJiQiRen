package cn.mucang.android.framework.account.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.framework.account.R;

/* JADX INFO: loaded from: classes.dex */
public final class AccountActivityLoginMultiDefaultSmsBinding implements a {
    public final TextView accountAppeal;
    public final AccountActivityLoginThirdLayoutBinding accountLoginThirdLayoutIn;
    public final TextView btnSendVoiceCode;
    public final TextView loginByAccount;
    private final RelativeLayout rootView;
    public final AccountLoginSmsCommonBinding smsCommon;
    public final AccountIncludeTitleBarBinding titleBar;

    private AccountActivityLoginMultiDefaultSmsBinding(RelativeLayout relativeLayout, TextView textView, AccountActivityLoginThirdLayoutBinding accountActivityLoginThirdLayoutBinding, TextView textView2, TextView textView3, AccountLoginSmsCommonBinding accountLoginSmsCommonBinding, AccountIncludeTitleBarBinding accountIncludeTitleBarBinding) {
        this.rootView = relativeLayout;
        this.accountAppeal = textView;
        this.accountLoginThirdLayoutIn = accountActivityLoginThirdLayoutBinding;
        this.btnSendVoiceCode = textView2;
        this.loginByAccount = textView3;
        this.smsCommon = accountLoginSmsCommonBinding;
        this.titleBar = accountIncludeTitleBarBinding;
    }

    public static AccountActivityLoginMultiDefaultSmsBinding bind(View view) {
        View viewFindViewById;
        View viewFindViewById2;
        int i = R.id.account_appeal;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null && (viewFindViewById = view.findViewById((i = R.id.account__login_third_layout_in))) != null) {
            AccountActivityLoginThirdLayoutBinding accountActivityLoginThirdLayoutBindingBind = AccountActivityLoginThirdLayoutBinding.bind(viewFindViewById);
            i = R.id.btn_send_voice_code;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.login_by_account;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null && (viewFindViewById2 = view.findViewById((i = R.id.sms_common))) != null) {
                    AccountLoginSmsCommonBinding accountLoginSmsCommonBindingBind = AccountLoginSmsCommonBinding.bind(viewFindViewById2);
                    i = R.id.title_bar;
                    View viewFindViewById3 = view.findViewById(i);
                    if (viewFindViewById3 != null) {
                        return new AccountActivityLoginMultiDefaultSmsBinding((RelativeLayout) view, textView, accountActivityLoginThirdLayoutBindingBind, textView2, textView3, accountLoginSmsCommonBindingBind, AccountIncludeTitleBarBinding.bind(viewFindViewById3));
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static AccountActivityLoginMultiDefaultSmsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static AccountActivityLoginMultiDefaultSmsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.account__activity_login_multi_default_sms, viewGroup, false);
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
