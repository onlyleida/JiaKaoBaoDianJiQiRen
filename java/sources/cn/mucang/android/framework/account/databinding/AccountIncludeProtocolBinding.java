package cn.mucang.android.framework.account.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.framework.account.R;

/* JADX INFO: loaded from: classes.dex */
public final class AccountIncludeProtocolBinding implements a {
    public final CheckBox checkBox;
    private final LinearLayout rootView;
    public final TextView tvProtocol;

    private AccountIncludeProtocolBinding(LinearLayout linearLayout, CheckBox checkBox, TextView textView) {
        this.rootView = linearLayout;
        this.checkBox = checkBox;
        this.tvProtocol = textView;
    }

    public static AccountIncludeProtocolBinding bind(View view) {
        int i = R.id.check_box;
        CheckBox checkBox = (CheckBox) view.findViewById(i);
        if (checkBox != null) {
            i = R.id.tv_protocol;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                return new AccountIncludeProtocolBinding((LinearLayout) view, checkBox, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static AccountIncludeProtocolBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static AccountIncludeProtocolBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.account__include_protocol, viewGroup, false);
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
