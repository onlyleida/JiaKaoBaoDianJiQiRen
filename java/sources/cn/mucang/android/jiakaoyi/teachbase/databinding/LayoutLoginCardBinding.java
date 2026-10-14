package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.login.ui.widget.NumKeyBoardView;

/* JADX INFO: loaded from: classes4.dex */
public final class LayoutLoginCardBinding implements a {
    public final ImageView eyeIv;
    public final EditText idEt;
    public final LinearLayout llAccount;
    public final TextView loginTv;
    public final NumKeyBoardView numKeyboard;
    private final LinearLayout rootView;
    public final TextView tvErrTip;

    private LayoutLoginCardBinding(LinearLayout linearLayout, ImageView imageView, EditText editText, LinearLayout linearLayout2, TextView textView, NumKeyBoardView numKeyBoardView, TextView textView2) {
        this.rootView = linearLayout;
        this.eyeIv = imageView;
        this.idEt = editText;
        this.llAccount = linearLayout2;
        this.loginTv = textView;
        this.numKeyboard = numKeyBoardView;
        this.tvErrTip = textView2;
    }

    public static LayoutLoginCardBinding bind(View view) {
        int i = R.id.eyeIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.idEt;
            EditText editText = (EditText) view.findViewById(i);
            if (editText != null) {
                i = R.id.ll_account;
                LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                if (linearLayout != null) {
                    i = R.id.loginTv;
                    TextView textView = (TextView) view.findViewById(i);
                    if (textView != null) {
                        i = R.id.num_keyboard;
                        NumKeyBoardView numKeyBoardView = (NumKeyBoardView) view.findViewById(i);
                        if (numKeyBoardView != null) {
                            i = R.id.tv_err_tip;
                            TextView textView2 = (TextView) view.findViewById(i);
                            if (textView2 != null) {
                                return new LayoutLoginCardBinding((LinearLayout) view, imageView, editText, linearLayout, textView, numKeyBoardView, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static LayoutLoginCardBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LayoutLoginCardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_login_card, viewGroup, false);
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
