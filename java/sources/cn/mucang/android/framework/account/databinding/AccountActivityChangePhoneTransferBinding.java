package cn.mucang.android.framework.account.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.viewbinding.a;
import cn.mucang.android.framework.account.R;

/* JADX INFO: loaded from: classes.dex */
public final class AccountActivityChangePhoneTransferBinding implements a {
    public final RelativeLayout changeMobile;
    private final LinearLayout rootView;
    public final AccountIncludeTitleBarBinding titleBar;
    public final RelativeLayout toAuthRealName;

    private AccountActivityChangePhoneTransferBinding(LinearLayout linearLayout, RelativeLayout relativeLayout, AccountIncludeTitleBarBinding accountIncludeTitleBarBinding, RelativeLayout relativeLayout2) {
        this.rootView = linearLayout;
        this.changeMobile = relativeLayout;
        this.titleBar = accountIncludeTitleBarBinding;
        this.toAuthRealName = relativeLayout2;
    }

    public static AccountActivityChangePhoneTransferBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.change_mobile;
        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(i);
        if (relativeLayout != null && (viewFindViewById = view.findViewById((i = R.id.title_bar))) != null) {
            AccountIncludeTitleBarBinding accountIncludeTitleBarBindingBind = AccountIncludeTitleBarBinding.bind(viewFindViewById);
            int i2 = R.id.to_auth_real_name;
            RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(i2);
            if (relativeLayout2 != null) {
                return new AccountActivityChangePhoneTransferBinding((LinearLayout) view, relativeLayout, accountIncludeTitleBarBindingBind, relativeLayout2);
            }
            i = i2;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static AccountActivityChangePhoneTransferBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static AccountActivityChangePhoneTransferBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.account__activity_change_phone_transfer, viewGroup, false);
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
