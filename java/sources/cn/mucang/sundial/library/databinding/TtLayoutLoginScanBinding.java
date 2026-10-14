package cn.mucang.sundial.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.sundial.library.R;

/* JADX INFO: loaded from: classes5.dex */
public final class TtLayoutLoginScanBinding implements a {
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

    private TtLayoutLoginScanBinding(ConstraintLayout constraintLayout, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5, FrameLayout frameLayout, FrameLayout frameLayout2, ImageView imageView6, ImageView imageView7, ImageView imageView8, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
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

    public static TtLayoutLoginScanBinding bind(View view) {
        String str;
        ImageView imageView = (ImageView) view.findViewById(R.id.appIv);
        if (imageView != null) {
            ImageView imageView2 = (ImageView) view.findViewById(R.id.arrow1);
            if (imageView2 != null) {
                ImageView imageView3 = (ImageView) view.findViewById(R.id.arrow2);
                if (imageView3 != null) {
                    ImageView imageView4 = (ImageView) view.findViewById(R.id.arrow3);
                    if (imageView4 != null) {
                        ImageView imageView5 = (ImageView) view.findViewById(R.id.loginIv);
                        if (imageView5 != null) {
                            FrameLayout frameLayout = (FrameLayout) view.findViewById(R.id.qrCodeErrorFl);
                            if (frameLayout != null) {
                                FrameLayout frameLayout2 = (FrameLayout) view.findViewById(R.id.qrCodeFl);
                                if (frameLayout2 != null) {
                                    ImageView imageView6 = (ImageView) view.findViewById(R.id.qrCodeIv);
                                    if (imageView6 != null) {
                                        ImageView imageView7 = (ImageView) view.findViewById(R.id.scanIv);
                                        if (imageView7 != null) {
                                            ImageView imageView8 = (ImageView) view.findViewById(R.id.schoolIv);
                                            if (imageView8 != null) {
                                                TextView textView = (TextView) view.findViewById(R.id.tipTv);
                                                if (textView != null) {
                                                    TextView textView2 = (TextView) view.findViewById(R.id.title1);
                                                    if (textView2 != null) {
                                                        TextView textView3 = (TextView) view.findViewById(R.id.title2);
                                                        if (textView3 != null) {
                                                            TextView textView4 = (TextView) view.findViewById(R.id.title3);
                                                            if (textView4 != null) {
                                                                TextView textView5 = (TextView) view.findViewById(R.id.title4);
                                                                if (textView5 != null) {
                                                                    return new TtLayoutLoginScanBinding((ConstraintLayout) view, imageView, imageView2, imageView3, imageView4, imageView5, frameLayout, frameLayout2, imageView6, imageView7, imageView8, textView, textView2, textView3, textView4, textView5);
                                                                }
                                                                str = "title4";
                                                            } else {
                                                                str = "title3";
                                                            }
                                                        } else {
                                                            str = "title2";
                                                        }
                                                    } else {
                                                        str = "title1";
                                                    }
                                                } else {
                                                    str = "tipTv";
                                                }
                                            } else {
                                                str = "schoolIv";
                                            }
                                        } else {
                                            str = "scanIv";
                                        }
                                    } else {
                                        str = "qrCodeIv";
                                    }
                                } else {
                                    str = "qrCodeFl";
                                }
                            } else {
                                str = "qrCodeErrorFl";
                            }
                        } else {
                            str = "loginIv";
                        }
                    } else {
                        str = "arrow3";
                    }
                } else {
                    str = "arrow2";
                }
            } else {
                str = "arrow1";
            }
        } else {
            str = "appIv";
        }
        throw new NullPointerException("Missing required view with ID: ".concat(str));
    }

    public static TtLayoutLoginScanBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TtLayoutLoginScanBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.tt__layout_login_scan, viewGroup, false);
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
