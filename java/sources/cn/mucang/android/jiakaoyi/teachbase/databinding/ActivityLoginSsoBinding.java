package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityLoginSsoBinding implements a {
    public final TextView backTv;
    public final FrameLayout qrCodeErrorFl;
    public final FrameLayout qrCodeFl;
    public final ImageView qrCodeIv;
    private final ConstraintLayout rootView;
    public final TextView tipTv;

    private ActivityLoginSsoBinding(ConstraintLayout constraintLayout, TextView textView, FrameLayout frameLayout, FrameLayout frameLayout2, ImageView imageView, TextView textView2) {
        this.rootView = constraintLayout;
        this.backTv = textView;
        this.qrCodeErrorFl = frameLayout;
        this.qrCodeFl = frameLayout2;
        this.qrCodeIv = imageView;
        this.tipTv = textView2;
    }

    public static ActivityLoginSsoBinding bind(View view) {
        int i = R.id.backTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.qrCodeErrorFl;
            FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
            if (frameLayout != null) {
                i = R.id.qrCodeFl;
                FrameLayout frameLayout2 = (FrameLayout) view.findViewById(i);
                if (frameLayout2 != null) {
                    i = R.id.qrCodeIv;
                    ImageView imageView = (ImageView) view.findViewById(i);
                    if (imageView != null) {
                        i = R.id.tipTv;
                        TextView textView2 = (TextView) view.findViewById(i);
                        if (textView2 != null) {
                            return new ActivityLoginSsoBinding((ConstraintLayout) view, textView, frameLayout, frameLayout2, imageView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityLoginSsoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityLoginSsoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_login_sso, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public ConstraintLayout getRoot() {
        return this.rootView;
    }
}
