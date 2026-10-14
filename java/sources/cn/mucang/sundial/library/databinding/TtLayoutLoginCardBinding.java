package cn.mucang.sundial.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.sundial.library.R;
import cn.mucang.sundial.library.widget.SundialNumKeyBoardView;

/* JADX INFO: loaded from: classes5.dex */
public final class TtLayoutLoginCardBinding implements a {
    public final ImageView eyeIv;
    public final EditText idEt;
    public final LinearLayout llAccount;
    public final TextView loginTv;
    public final SundialNumKeyBoardView numKeyboard;
    private final LinearLayout rootView;
    public final TextView tvErrTip;

    private TtLayoutLoginCardBinding(LinearLayout linearLayout, ImageView imageView, EditText editText, LinearLayout linearLayout2, TextView textView, SundialNumKeyBoardView sundialNumKeyBoardView, TextView textView2) {
        this.rootView = linearLayout;
        this.eyeIv = imageView;
        this.idEt = editText;
        this.llAccount = linearLayout2;
        this.loginTv = textView;
        this.numKeyboard = sundialNumKeyBoardView;
        this.tvErrTip = textView2;
    }

    public static TtLayoutLoginCardBinding bind(View view) {
        String str;
        ImageView imageView = (ImageView) view.findViewById(R.id.eyeIv);
        if (imageView != null) {
            EditText editText = (EditText) view.findViewById(R.id.idEt);
            if (editText != null) {
                LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.ll_account);
                if (linearLayout != null) {
                    TextView textView = (TextView) view.findViewById(R.id.loginTv);
                    if (textView != null) {
                        SundialNumKeyBoardView sundialNumKeyBoardView = (SundialNumKeyBoardView) view.findViewById(R.id.num_keyboard);
                        if (sundialNumKeyBoardView != null) {
                            TextView textView2 = (TextView) view.findViewById(R.id.tv_err_tip);
                            if (textView2 != null) {
                                return new TtLayoutLoginCardBinding((LinearLayout) view, imageView, editText, linearLayout, textView, sundialNumKeyBoardView, textView2);
                            }
                            str = "tvErrTip";
                        } else {
                            str = "numKeyboard";
                        }
                    } else {
                        str = "loginTv";
                    }
                } else {
                    str = "llAccount";
                }
            } else {
                str = "idEt";
            }
        } else {
            str = "eyeIv";
        }
        throw new NullPointerException("Missing required view with ID: ".concat(str));
    }

    public static TtLayoutLoginCardBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TtLayoutLoginCardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.tt__layout_login_card, viewGroup, false);
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
