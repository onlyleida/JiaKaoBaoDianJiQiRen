package cn.mucang.android.framework.account.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.account.ui.CaptchaView;
import cn.mucang.android.framework.account.R;

/* JADX INFO: loaded from: classes.dex */
public final class AccountWidgetCaptchaBinding implements a {
    public final CaptchaView captcha;
    public final EditText captchaCode;
    public final FrameLayout captchaContainer;
    public final TextView captchaError;
    public final ProgressBar captchaProgress;
    public final TextView captchaRefresh;
    public final RelativeLayout captchaRl;
    public final ImageView captchaView;
    public final ImageView ivPhoneCode;
    private final CaptchaView rootView;

    private AccountWidgetCaptchaBinding(CaptchaView captchaView, CaptchaView captchaView2, EditText editText, FrameLayout frameLayout, TextView textView, ProgressBar progressBar, TextView textView2, RelativeLayout relativeLayout, ImageView imageView, ImageView imageView2) {
        this.rootView = captchaView;
        this.captcha = captchaView2;
        this.captchaCode = editText;
        this.captchaContainer = frameLayout;
        this.captchaError = textView;
        this.captchaProgress = progressBar;
        this.captchaRefresh = textView2;
        this.captchaRl = relativeLayout;
        this.captchaView = imageView;
        this.ivPhoneCode = imageView2;
    }

    public static AccountWidgetCaptchaBinding bind(View view) {
        CaptchaView captchaView = (CaptchaView) view;
        int i = R.id.captcha_code;
        EditText editText = (EditText) view.findViewById(i);
        if (editText != null) {
            i = R.id.captcha_container;
            FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
            if (frameLayout != null) {
                i = R.id.captcha_error;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    i = R.id.captcha_progress;
                    ProgressBar progressBar = (ProgressBar) view.findViewById(i);
                    if (progressBar != null) {
                        i = R.id.captcha_refresh;
                        TextView textView2 = (TextView) view.findViewById(i);
                        if (textView2 != null) {
                            i = R.id.captcha_rl;
                            RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(i);
                            if (relativeLayout != null) {
                                i = R.id.captcha_view;
                                ImageView imageView = (ImageView) view.findViewById(i);
                                if (imageView != null) {
                                    i = R.id.iv_phone_code;
                                    ImageView imageView2 = (ImageView) view.findViewById(i);
                                    if (imageView2 != null) {
                                        return new AccountWidgetCaptchaBinding(captchaView, captchaView, editText, frameLayout, textView, progressBar, textView2, relativeLayout, imageView, imageView2);
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

    public static AccountWidgetCaptchaBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static AccountWidgetCaptchaBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.account__widget_captcha, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public CaptchaView getRoot() {
        return this.rootView;
    }
}
