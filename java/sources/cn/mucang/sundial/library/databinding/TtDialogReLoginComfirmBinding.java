package cn.mucang.sundial.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.sundial.library.R;

/* JADX INFO: loaded from: classes5.dex */
public final class TtDialogReLoginComfirmBinding implements a {
    private final LinearLayout rootView;
    public final TextView subject2;
    public final TextView subject3;
    public final TextView title;

    private TtDialogReLoginComfirmBinding(LinearLayout linearLayout, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = linearLayout;
        this.subject2 = textView;
        this.subject3 = textView2;
        this.title = textView3;
    }

    public static TtDialogReLoginComfirmBinding bind(View view) {
        String str;
        TextView textView = (TextView) view.findViewById(R.id.subject_2);
        if (textView != null) {
            TextView textView2 = (TextView) view.findViewById(R.id.subject_3);
            if (textView2 != null) {
                TextView textView3 = (TextView) view.findViewById(R.id.title);
                if (textView3 != null) {
                    return new TtDialogReLoginComfirmBinding((LinearLayout) view, textView, textView2, textView3);
                }
                str = "title";
            } else {
                str = "subject3";
            }
        } else {
            str = "subject2";
        }
        throw new NullPointerException("Missing required view with ID: ".concat(str));
    }

    public static TtDialogReLoginComfirmBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TtDialogReLoginComfirmBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.tt__dialog_re_login_comfirm, viewGroup, false);
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
