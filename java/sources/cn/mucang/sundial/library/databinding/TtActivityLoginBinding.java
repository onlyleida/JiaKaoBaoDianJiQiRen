package cn.mucang.sundial.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.sundial.library.R;

/* JADX INFO: loaded from: classes5.dex */
public final class TtActivityLoginBinding implements a {
    public final ImageView appQrCode;
    public final TextView appQrCodeTip;
    public final TextView back;
    public final EditText idCardNumber;
    public final TextView inertIcCardTip;
    public final TextView invalidAppQrCode;
    public final TextView login;
    public final TtIncludeBottomMountainBinding mountain;
    public final LinearLayout qrCodeLayout;
    private final FrameLayout rootView;
    public final TextView title;

    private TtActivityLoginBinding(FrameLayout frameLayout, ImageView imageView, TextView textView, TextView textView2, EditText editText, TextView textView3, TextView textView4, TextView textView5, TtIncludeBottomMountainBinding ttIncludeBottomMountainBinding, LinearLayout linearLayout, TextView textView6) {
        this.rootView = frameLayout;
        this.appQrCode = imageView;
        this.appQrCodeTip = textView;
        this.back = textView2;
        this.idCardNumber = editText;
        this.inertIcCardTip = textView3;
        this.invalidAppQrCode = textView4;
        this.login = textView5;
        this.mountain = ttIncludeBottomMountainBinding;
        this.qrCodeLayout = linearLayout;
        this.title = textView6;
    }

    public static TtActivityLoginBinding bind(View view) {
        String str;
        ImageView imageView = (ImageView) view.findViewById(R.id.app_qr_code);
        if (imageView != null) {
            TextView textView = (TextView) view.findViewById(R.id.app_qr_code_tip);
            if (textView != null) {
                TextView textView2 = (TextView) view.findViewById(R.id.back);
                if (textView2 != null) {
                    EditText editText = (EditText) view.findViewById(R.id.id_card_number);
                    if (editText != null) {
                        TextView textView3 = (TextView) view.findViewById(R.id.inert_ic_card_tip);
                        if (textView3 != null) {
                            TextView textView4 = (TextView) view.findViewById(R.id.invalid_app_qr_code);
                            if (textView4 != null) {
                                TextView textView5 = (TextView) view.findViewById(R.id.login);
                                if (textView5 != null) {
                                    View viewFindViewById = view.findViewById(R.id.mountain);
                                    if (viewFindViewById != null) {
                                        TtIncludeBottomMountainBinding ttIncludeBottomMountainBindingBind = TtIncludeBottomMountainBinding.bind(viewFindViewById);
                                        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.qr_code_layout);
                                        if (linearLayout != null) {
                                            TextView textView6 = (TextView) view.findViewById(R.id.title);
                                            if (textView6 != null) {
                                                return new TtActivityLoginBinding((FrameLayout) view, imageView, textView, textView2, editText, textView3, textView4, textView5, ttIncludeBottomMountainBindingBind, linearLayout, textView6);
                                            }
                                            str = "title";
                                        } else {
                                            str = "qrCodeLayout";
                                        }
                                    } else {
                                        str = "mountain";
                                    }
                                } else {
                                    str = "login";
                                }
                            } else {
                                str = "invalidAppQrCode";
                            }
                        } else {
                            str = "inertIcCardTip";
                        }
                    } else {
                        str = "idCardNumber";
                    }
                } else {
                    str = "back";
                }
            } else {
                str = "appQrCodeTip";
            }
        } else {
            str = "appQrCode";
        }
        throw new NullPointerException("Missing required view with ID: ".concat(str));
    }

    public static TtActivityLoginBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TtActivityLoginBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.tt__activity_login, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public FrameLayout getRoot() {
        return this.rootView;
    }
}
