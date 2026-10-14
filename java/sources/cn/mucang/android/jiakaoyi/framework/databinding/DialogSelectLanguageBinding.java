package cn.mucang.android.jiakaoyi.framework.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.framework.R;

/* JADX INFO: loaded from: classes2.dex */
public final class DialogSelectLanguageBinding implements a {
    public final RadioButton chineseRb;
    public final RadioButton enRb;
    private final LinearLayout rootView;
    public final TextView saveTv;
    public final TextView titleTv;
    public final RadioButton uighurRb;

    private DialogSelectLanguageBinding(LinearLayout linearLayout, RadioButton radioButton, RadioButton radioButton2, TextView textView, TextView textView2, RadioButton radioButton3) {
        this.rootView = linearLayout;
        this.chineseRb = radioButton;
        this.enRb = radioButton2;
        this.saveTv = textView;
        this.titleTv = textView2;
        this.uighurRb = radioButton3;
    }

    public static DialogSelectLanguageBinding bind(View view) {
        int i = R.id.chineseRb;
        RadioButton radioButton = (RadioButton) view.findViewById(i);
        if (radioButton != null) {
            i = R.id.enRb;
            RadioButton radioButton2 = (RadioButton) view.findViewById(i);
            if (radioButton2 != null) {
                i = R.id.saveTv;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    i = R.id.titleTv;
                    TextView textView2 = (TextView) view.findViewById(i);
                    if (textView2 != null) {
                        i = R.id.uighurRb;
                        RadioButton radioButton3 = (RadioButton) view.findViewById(i);
                        if (radioButton3 != null) {
                            return new DialogSelectLanguageBinding((LinearLayout) view, radioButton, radioButton2, textView, textView2, radioButton3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogSelectLanguageBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogSelectLanguageBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_select_language, viewGroup, false);
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
