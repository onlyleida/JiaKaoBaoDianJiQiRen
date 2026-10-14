package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class DialogTeachResumeBinding implements a {
    public final TextView descTv;
    public final TextView leftTv;
    public final TextView rightTv;
    public final FrameLayout rootLayout;
    private final LinearLayout rootView;
    public final TextView titleTv;

    private DialogTeachResumeBinding(LinearLayout linearLayout, TextView textView, TextView textView2, TextView textView3, FrameLayout frameLayout, TextView textView4) {
        this.rootView = linearLayout;
        this.descTv = textView;
        this.leftTv = textView2;
        this.rightTv = textView3;
        this.rootLayout = frameLayout;
        this.titleTv = textView4;
    }

    public static DialogTeachResumeBinding bind(View view) {
        int i = R.id.descTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.leftTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.rightTv;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    i = R.id.rootLayout;
                    FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
                    if (frameLayout != null) {
                        i = R.id.titleTv;
                        TextView textView4 = (TextView) view.findViewById(i);
                        if (textView4 != null) {
                            return new DialogTeachResumeBinding((LinearLayout) view, textView, textView2, textView3, frameLayout, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogTeachResumeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogTeachResumeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_teach_resume, viewGroup, false);
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
