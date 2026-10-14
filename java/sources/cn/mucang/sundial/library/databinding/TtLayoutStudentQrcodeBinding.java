package cn.mucang.sundial.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.sundial.library.R;

/* JADX INFO: loaded from: classes5.dex */
public final class TtLayoutStudentQrcodeBinding implements a {
    public final FrameLayout btnQrRefresh;
    public final ImageView gzAppQrCode;
    public final TextView gzAppQrCodeTip;
    public final LinearLayout gzBack;
    public final TextView gzInvalidAppQrCode;
    public final LinearLayout gzQrCodeLayout;
    public final LinearLayout gzRefreshQrcode;
    public final TextView gzTitle;
    private final RelativeLayout rootView;

    private TtLayoutStudentQrcodeBinding(RelativeLayout relativeLayout, FrameLayout frameLayout, ImageView imageView, TextView textView, LinearLayout linearLayout, TextView textView2, LinearLayout linearLayout2, LinearLayout linearLayout3, TextView textView3) {
        this.rootView = relativeLayout;
        this.btnQrRefresh = frameLayout;
        this.gzAppQrCode = imageView;
        this.gzAppQrCodeTip = textView;
        this.gzBack = linearLayout;
        this.gzInvalidAppQrCode = textView2;
        this.gzQrCodeLayout = linearLayout2;
        this.gzRefreshQrcode = linearLayout3;
        this.gzTitle = textView3;
    }

    public static TtLayoutStudentQrcodeBinding bind(View view) {
        String str;
        FrameLayout frameLayout = (FrameLayout) view.findViewById(R.id.btn_qr_refresh);
        if (frameLayout != null) {
            ImageView imageView = (ImageView) view.findViewById(R.id.gz_app_qr_code);
            if (imageView != null) {
                TextView textView = (TextView) view.findViewById(R.id.gz_app_qr_code_tip);
                if (textView != null) {
                    LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.gz_back);
                    if (linearLayout != null) {
                        TextView textView2 = (TextView) view.findViewById(R.id.gz_invalid_app_qr_code);
                        if (textView2 != null) {
                            LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.gz_qr_code_layout);
                            if (linearLayout2 != null) {
                                LinearLayout linearLayout3 = (LinearLayout) view.findViewById(R.id.gz_refresh_qrcode);
                                if (linearLayout3 != null) {
                                    TextView textView3 = (TextView) view.findViewById(R.id.gz_title);
                                    if (textView3 != null) {
                                        return new TtLayoutStudentQrcodeBinding((RelativeLayout) view, frameLayout, imageView, textView, linearLayout, textView2, linearLayout2, linearLayout3, textView3);
                                    }
                                    str = "gzTitle";
                                } else {
                                    str = "gzRefreshQrcode";
                                }
                            } else {
                                str = "gzQrCodeLayout";
                            }
                        } else {
                            str = "gzInvalidAppQrCode";
                        }
                    } else {
                        str = "gzBack";
                    }
                } else {
                    str = "gzAppQrCodeTip";
                }
            } else {
                str = "gzAppQrCode";
            }
        } else {
            str = "btnQrRefresh";
        }
        throw new NullPointerException("Missing required view with ID: ".concat(str));
    }

    public static TtLayoutStudentQrcodeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TtLayoutStudentQrcodeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.tt__layout_student_qrcode, viewGroup, false);
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
