package cn.mucang.android.framework.account.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.framework.account.R;

/* JADX INFO: loaded from: classes.dex */
public final class AccountActivityLoginThirdLayoutBinding implements a {
    public final TextView accountLoginThirdTip;
    public final ImageView accountLoginThirdWeixinIv;
    public final ImageView accountLoginThirdXiaomiIv;
    private final LinearLayout rootView;

    private AccountActivityLoginThirdLayoutBinding(LinearLayout linearLayout, TextView textView, ImageView imageView, ImageView imageView2) {
        this.rootView = linearLayout;
        this.accountLoginThirdTip = textView;
        this.accountLoginThirdWeixinIv = imageView;
        this.accountLoginThirdXiaomiIv = imageView2;
    }

    public static AccountActivityLoginThirdLayoutBinding bind(View view) {
        int i = R.id.account_login_third_tip;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.account_login_third_weixin_iv;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null) {
                i = R.id.account_login_third_xiaomi_iv;
                ImageView imageView2 = (ImageView) view.findViewById(i);
                if (imageView2 != null) {
                    return new AccountActivityLoginThirdLayoutBinding((LinearLayout) view, textView, imageView, imageView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static AccountActivityLoginThirdLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static AccountActivityLoginThirdLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.account__activity_login_third_layout, viewGroup, false);
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
