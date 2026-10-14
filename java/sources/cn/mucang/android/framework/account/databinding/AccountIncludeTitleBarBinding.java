package cn.mucang.android.framework.account.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.framework.account.R;

/* JADX INFO: loaded from: classes.dex */
public final class AccountIncludeTitleBarBinding implements a {
    private final RelativeLayout rootView;
    public final TextView titleBarCenter;
    public final LinearLayout titleBarLeft;
    public final TextView tvUnknownSendSmsCode;

    private AccountIncludeTitleBarBinding(RelativeLayout relativeLayout, TextView textView, LinearLayout linearLayout, TextView textView2) {
        this.rootView = relativeLayout;
        this.titleBarCenter = textView;
        this.titleBarLeft = linearLayout;
        this.tvUnknownSendSmsCode = textView2;
    }

    public static AccountIncludeTitleBarBinding bind(View view) {
        int i = R.id.title_bar_center;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.title_bar_left;
            LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
            if (linearLayout != null) {
                i = R.id.tv_unknown_send_sms_code;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    return new AccountIncludeTitleBarBinding((RelativeLayout) view, textView, linearLayout, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static AccountIncludeTitleBarBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static AccountIncludeTitleBarBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.account__include_title_bar, viewGroup, false);
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
