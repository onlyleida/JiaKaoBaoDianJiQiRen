package cn.mucang.android.framework.account.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.framework.account.R;

/* JADX INFO: loaded from: classes.dex */
public final class AccountActivityQrcodeAuthBinding implements a {
    public final AccountIncludeProtocolBinding accountProtocol;
    public final LinearLayout accountQrcodeAppInfo;
    public final LinearLayout accountQrcodeAppTip;
    public final TextView accountQrcodeApply;
    public final LinearLayout accountQrcodeBottom;
    public final TextView accountQrcodeCancel;
    public final AccountActivityQrcodeAuthErrorBinding accountQrcodeError;
    public final Button accountQrcodeLogin;
    public final ImageView accountQrcodeLogo;
    public final TextView accountQrcodeSecurityTip;
    public final LinearLayout accountQrcodeTop;
    public final ImageView accountQrcodeUserAvatar;
    public final TextView accountQrcodeUserName;
    private final RelativeLayout rootView;
    public final AccountIncludeTitleBarBinding titleBar;

    private AccountActivityQrcodeAuthBinding(RelativeLayout relativeLayout, AccountIncludeProtocolBinding accountIncludeProtocolBinding, LinearLayout linearLayout, LinearLayout linearLayout2, TextView textView, LinearLayout linearLayout3, TextView textView2, AccountActivityQrcodeAuthErrorBinding accountActivityQrcodeAuthErrorBinding, Button button, ImageView imageView, TextView textView3, LinearLayout linearLayout4, ImageView imageView2, TextView textView4, AccountIncludeTitleBarBinding accountIncludeTitleBarBinding) {
        this.rootView = relativeLayout;
        this.accountProtocol = accountIncludeProtocolBinding;
        this.accountQrcodeAppInfo = linearLayout;
        this.accountQrcodeAppTip = linearLayout2;
        this.accountQrcodeApply = textView;
        this.accountQrcodeBottom = linearLayout3;
        this.accountQrcodeCancel = textView2;
        this.accountQrcodeError = accountActivityQrcodeAuthErrorBinding;
        this.accountQrcodeLogin = button;
        this.accountQrcodeLogo = imageView;
        this.accountQrcodeSecurityTip = textView3;
        this.accountQrcodeTop = linearLayout4;
        this.accountQrcodeUserAvatar = imageView2;
        this.accountQrcodeUserName = textView4;
        this.titleBar = accountIncludeTitleBarBinding;
    }

    public static AccountActivityQrcodeAuthBinding bind(View view) {
        View viewFindViewById;
        View viewFindViewById2;
        int i = R.id.account_protocol;
        View viewFindViewById3 = view.findViewById(i);
        if (viewFindViewById3 != null) {
            AccountIncludeProtocolBinding accountIncludeProtocolBindingBind = AccountIncludeProtocolBinding.bind(viewFindViewById3);
            i = R.id.account__qrcode_app_info;
            LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
            if (linearLayout != null) {
                i = R.id.account__qrcode_app_tip;
                LinearLayout linearLayout2 = (LinearLayout) view.findViewById(i);
                if (linearLayout2 != null) {
                    i = R.id.account__qrcode_apply;
                    TextView textView = (TextView) view.findViewById(i);
                    if (textView != null) {
                        i = R.id.account__qrcode_bottom;
                        LinearLayout linearLayout3 = (LinearLayout) view.findViewById(i);
                        if (linearLayout3 != null) {
                            i = R.id.account__qrcode_cancel;
                            TextView textView2 = (TextView) view.findViewById(i);
                            if (textView2 != null && (viewFindViewById = view.findViewById((i = R.id.account__qrcode_error))) != null) {
                                AccountActivityQrcodeAuthErrorBinding accountActivityQrcodeAuthErrorBindingBind = AccountActivityQrcodeAuthErrorBinding.bind(viewFindViewById);
                                i = R.id.account__qrcode_login;
                                Button button = (Button) view.findViewById(i);
                                if (button != null) {
                                    i = R.id.account__qrcode_logo;
                                    ImageView imageView = (ImageView) view.findViewById(i);
                                    if (imageView != null) {
                                        i = R.id.account__qrcode_security_tip;
                                        TextView textView3 = (TextView) view.findViewById(i);
                                        if (textView3 != null) {
                                            i = R.id.account__qrcode_top;
                                            LinearLayout linearLayout4 = (LinearLayout) view.findViewById(i);
                                            if (linearLayout4 != null) {
                                                i = R.id.account__qrcode_user_avatar;
                                                ImageView imageView2 = (ImageView) view.findViewById(i);
                                                if (imageView2 != null) {
                                                    i = R.id.account__qrcode_user_name;
                                                    TextView textView4 = (TextView) view.findViewById(i);
                                                    if (textView4 != null && (viewFindViewById2 = view.findViewById((i = R.id.title_bar))) != null) {
                                                        return new AccountActivityQrcodeAuthBinding((RelativeLayout) view, accountIncludeProtocolBindingBind, linearLayout, linearLayout2, textView, linearLayout3, textView2, accountActivityQrcodeAuthErrorBindingBind, button, imageView, textView3, linearLayout4, imageView2, textView4, AccountIncludeTitleBarBinding.bind(viewFindViewById2));
                                                    }
                                                }
                                            }
                                        }
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

    public static AccountActivityQrcodeAuthBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static AccountActivityQrcodeAuthBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.account__activity_qrcode_auth, viewGroup, false);
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
