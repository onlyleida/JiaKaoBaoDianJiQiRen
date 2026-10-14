package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class DialogTypeChooseBinding implements a {
    public final LinearLayout rootLayout;
    private final LinearLayout rootView;
    public final TextView routeTv;
    public final TextView singleTv;
    public final TextView titleTv;

    private DialogTypeChooseBinding(LinearLayout linearLayout, LinearLayout linearLayout2, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = linearLayout;
        this.rootLayout = linearLayout2;
        this.routeTv = textView;
        this.singleTv = textView2;
        this.titleTv = textView3;
    }

    public static DialogTypeChooseBinding bind(View view) {
        int i = R.id.rootLayout;
        LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
        if (linearLayout != null) {
            i = R.id.routeTv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.singleTv;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.titleTv;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        return new DialogTypeChooseBinding((LinearLayout) view, linearLayout, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogTypeChooseBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogTypeChooseBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_type_choose, viewGroup, false);
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
