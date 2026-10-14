package cn.mucang.android.framework.account.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.framework.account.R;

/* JADX INFO: loaded from: classes.dex */
public final class AccountActivitySafeBinding implements a {
    public final RelativeLayout account;
    public final ImageView accountArrowRight;
    public final TextView accountSafeWxBindTv;
    public final ImageView accountSafeWxIv;
    public final RelativeLayout accountSafeWxRl;
    public final TextView accountSafeXiaomiBindTv;
    public final ImageView accountSafeXiaomiIv;
    public final RelativeLayout accountSafeXiaomiRl;
    public final TextView accountText;
    public final RelativeLayout authRealName;
    public final RelativeLayout layoutUnregisterAccount;
    public final RelativeLayout password;
    public final ImageView passwordArrowRight;
    public final TextView passwordText;
    public final ImageView realNameArrowRight;
    public final TextView realNameText;
    private final RelativeLayout rootView;
    public final AccountIncludeTitleBarBinding titleBar;
    public final ImageView unregisterAccountArrowRight;

    private AccountActivitySafeBinding(RelativeLayout relativeLayout, RelativeLayout relativeLayout2, ImageView imageView, TextView textView, ImageView imageView2, RelativeLayout relativeLayout3, TextView textView2, ImageView imageView3, RelativeLayout relativeLayout4, TextView textView3, RelativeLayout relativeLayout5, RelativeLayout relativeLayout6, RelativeLayout relativeLayout7, ImageView imageView4, TextView textView4, ImageView imageView5, TextView textView5, AccountIncludeTitleBarBinding accountIncludeTitleBarBinding, ImageView imageView6) {
        this.rootView = relativeLayout;
        this.account = relativeLayout2;
        this.accountArrowRight = imageView;
        this.accountSafeWxBindTv = textView;
        this.accountSafeWxIv = imageView2;
        this.accountSafeWxRl = relativeLayout3;
        this.accountSafeXiaomiBindTv = textView2;
        this.accountSafeXiaomiIv = imageView3;
        this.accountSafeXiaomiRl = relativeLayout4;
        this.accountText = textView3;
        this.authRealName = relativeLayout5;
        this.layoutUnregisterAccount = relativeLayout6;
        this.password = relativeLayout7;
        this.passwordArrowRight = imageView4;
        this.passwordText = textView4;
        this.realNameArrowRight = imageView5;
        this.realNameText = textView5;
        this.titleBar = accountIncludeTitleBarBinding;
        this.unregisterAccountArrowRight = imageView6;
    }

    public static AccountActivitySafeBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.account;
        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(i);
        if (relativeLayout != null) {
            i = R.id.account_arrow_right;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null) {
                i = R.id.account_safe_wx_bind_tv;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    i = R.id.account_safe_wx_iv;
                    ImageView imageView2 = (ImageView) view.findViewById(i);
                    if (imageView2 != null) {
                        i = R.id.account_safe_wx_rl;
                        RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(i);
                        if (relativeLayout2 != null) {
                            i = R.id.account_safe_xiaomi_bind_tv;
                            TextView textView2 = (TextView) view.findViewById(i);
                            if (textView2 != null) {
                                i = R.id.account_safe_xiaomi_iv;
                                ImageView imageView3 = (ImageView) view.findViewById(i);
                                if (imageView3 != null) {
                                    i = R.id.account_safe_xiaomi_rl;
                                    RelativeLayout relativeLayout3 = (RelativeLayout) view.findViewById(i);
                                    if (relativeLayout3 != null) {
                                        i = R.id.account_text;
                                        TextView textView3 = (TextView) view.findViewById(i);
                                        if (textView3 != null) {
                                            i = R.id.auth_real_name;
                                            RelativeLayout relativeLayout4 = (RelativeLayout) view.findViewById(i);
                                            if (relativeLayout4 != null) {
                                                i = R.id.layout_unregister_account;
                                                RelativeLayout relativeLayout5 = (RelativeLayout) view.findViewById(i);
                                                if (relativeLayout5 != null) {
                                                    i = R.id.password;
                                                    RelativeLayout relativeLayout6 = (RelativeLayout) view.findViewById(i);
                                                    if (relativeLayout6 != null) {
                                                        i = R.id.password_arrow_right;
                                                        ImageView imageView4 = (ImageView) view.findViewById(i);
                                                        if (imageView4 != null) {
                                                            i = R.id.password_text;
                                                            TextView textView4 = (TextView) view.findViewById(i);
                                                            if (textView4 != null) {
                                                                i = R.id.real_name_arrow_right;
                                                                ImageView imageView5 = (ImageView) view.findViewById(i);
                                                                if (imageView5 != null) {
                                                                    i = R.id.real_name_text;
                                                                    TextView textView5 = (TextView) view.findViewById(i);
                                                                    if (textView5 != null && (viewFindViewById = view.findViewById((i = R.id.title_bar))) != null) {
                                                                        AccountIncludeTitleBarBinding accountIncludeTitleBarBindingBind = AccountIncludeTitleBarBinding.bind(viewFindViewById);
                                                                        i = R.id.unregister_account_arrow_right;
                                                                        ImageView imageView6 = (ImageView) view.findViewById(i);
                                                                        if (imageView6 != null) {
                                                                            return new AccountActivitySafeBinding((RelativeLayout) view, relativeLayout, imageView, textView, imageView2, relativeLayout2, textView2, imageView3, relativeLayout3, textView3, relativeLayout4, relativeLayout5, relativeLayout6, imageView4, textView4, imageView5, textView5, accountIncludeTitleBarBindingBind, imageView6);
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
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static AccountActivitySafeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static AccountActivitySafeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.account__activity_safe, viewGroup, false);
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
