package cn.mucang.android.framework.account.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.framework.account.R;

/* JADX INFO: loaded from: classes.dex */
public final class AccountActivityQrcodeAuthErrorBinding implements a {
    public final TextView accountQrcodeErrorMsg;
    private final LinearLayout rootView;

    private AccountActivityQrcodeAuthErrorBinding(LinearLayout linearLayout, TextView textView) {
        this.rootView = linearLayout;
        this.accountQrcodeErrorMsg = textView;
    }

    public static AccountActivityQrcodeAuthErrorBinding bind(View view) {
        int i = R.id.account__qrcode_error_msg;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            return new AccountActivityQrcodeAuthErrorBinding((LinearLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static AccountActivityQrcodeAuthErrorBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static AccountActivityQrcodeAuthErrorBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.account__activity_qrcode_auth_error, viewGroup, false);
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
