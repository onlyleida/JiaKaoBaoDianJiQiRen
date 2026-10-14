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
public final class LayoutLoginScanBinding implements a {
    public final ImageView appIv;
    public final ImageView arrow1;
    public final ImageView arrow2;
    public final ImageView arrow3;
    public final ImageView loginIv;
    public final FrameLayout qrCodeErrorFl;
    public final FrameLayout qrCodeFl;
    public final ImageView qrCodeIv;
    private final ConstraintLayout rootView;
    public final ImageView scanIv;
    public final ImageView schoolIv;
    public final TextView tipTv;
    public final TextView title1;
    public final TextView title2;
    public final TextView title3;
    public final TextView title4;

    private LayoutLoginScanBinding(ConstraintLayout constraintLayout, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5, FrameLayout frameLayout, FrameLayout frameLayout2, ImageView imageView6, ImageView imageView7, ImageView imageView8, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = constraintLayout;
        this.appIv = imageView;
        this.arrow1 = imageView2;
        this.arrow2 = imageView3;
        this.arrow3 = imageView4;
        this.loginIv = imageView5;
        this.qrCodeErrorFl = frameLayout;
        this.qrCodeFl = frameLayout2;
        this.qrCodeIv = imageView6;
        this.scanIv = imageView7;
        this.schoolIv = imageView8;
        this.tipTv = textView;
        this.title1 = textView2;
        this.title2 = textView3;
        this.title3 = textView4;
        this.title4 = textView5;
    }

    public static LayoutLoginScanBinding bind(View view) {
        int i = R.id.appIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.arrow1;
            ImageView imageView2 = (ImageView) view.findViewById(i);
            if (imageView2 != null) {
                i = R.id.arrow2;
                ImageView imageView3 = (ImageView) view.findViewById(i);
                if (imageView3 != null) {
                    i = R.id.arrow3;
                    ImageView imageView4 = (ImageView) view.findViewById(i);
                    if (imageView4 != null) {
                        i = R.id.loginIv;
                        ImageView imageView5 = (ImageView) view.findViewById(i);
                        if (imageView5 != null) {
                            i = R.id.qrCodeErrorFl;
                            FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
                            if (frameLayout != null) {
                                i = R.id.qrCodeFl;
                                FrameLayout frameLayout2 = (FrameLayout) view.findViewById(i);
                                if (frameLayout2 != null) {
                                    i = R.id.qrCodeIv;
                                    ImageView imageView6 = (ImageView) view.findViewById(i);
                                    if (imageView6 != null) {
                                        i = R.id.scanIv;
                                        ImageView imageView7 = (ImageView) view.findViewById(i);
                                        if (imageView7 != null) {
                                            i = R.id.schoolIv;
                                            ImageView imageView8 = (ImageView) view.findViewById(i);
                                            if (imageView8 != null) {
                                                i = R.id.tipTv;
                                                TextView textView = (TextView) view.findViewById(i);
                                                if (textView != null) {
                                                    i = R.id.title1;
                                                    TextView textView2 = (TextView) view.findViewById(i);
                                                    if (textView2 != null) {
                                                        i = R.id.title2;
                                                        TextView textView3 = (TextView) view.findViewById(i);
                                                        if (textView3 != null) {
                                                            i = R.id.title3;
                                                            TextView textView4 = (TextView) view.findViewById(i);
                                                            if (textView4 != null) {
                                                                i = R.id.title4;
                                                                TextView textView5 = (TextView) view.findViewById(i);
                                                                if (textView5 != null) {
                                                                    return new LayoutLoginScanBinding((ConstraintLayout) view, imageView, imageView2, imageView3, imageView4, imageView5, frameLayout, frameLayout2, imageView6, imageView7, imageView8, textView, textView2, textView3, textView4, textView5);
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

    public static LayoutLoginScanBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LayoutLoginScanBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_login_scan, viewGroup, false);
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
