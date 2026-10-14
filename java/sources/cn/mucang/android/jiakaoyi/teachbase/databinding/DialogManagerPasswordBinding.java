package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class DialogManagerPasswordBinding implements a {
    public final TextView leftTv;
    public final EditText passwordEt;
    public final TextView rightTv;
    public final LinearLayout rootLayout;
    private final LinearLayout rootView;
    public final TextView tipTv;
    public final TextView titleTv;

    private DialogManagerPasswordBinding(LinearLayout linearLayout, TextView textView, EditText editText, TextView textView2, LinearLayout linearLayout2, TextView textView3, TextView textView4) {
        this.rootView = linearLayout;
        this.leftTv = textView;
        this.passwordEt = editText;
        this.rightTv = textView2;
        this.rootLayout = linearLayout2;
        this.tipTv = textView3;
        this.titleTv = textView4;
    }

    public static DialogManagerPasswordBinding bind(View view) {
        int i = R.id.leftTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.passwordEt;
            EditText editText = (EditText) view.findViewById(i);
            if (editText != null) {
                i = R.id.rightTv;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.rootLayout;
                    LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                    if (linearLayout != null) {
                        i = R.id.tipTv;
                        TextView textView3 = (TextView) view.findViewById(i);
                        if (textView3 != null) {
                            i = R.id.titleTv;
                            TextView textView4 = (TextView) view.findViewById(i);
                            if (textView4 != null) {
                                return new DialogManagerPasswordBinding((LinearLayout) view, textView, editText, textView2, linearLayout, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogManagerPasswordBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogManagerPasswordBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_manager_password, viewGroup, false);
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
