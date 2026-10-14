package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class DialogStepResultBinding implements a {
    public final RecyclerView deductRv;
    public final TextView descTv;
    public final LinearLayout leftTv;
    public final TextView rightTv;
    public final LinearLayout rootLayout;
    private final RelativeLayout rootView;
    public final TextView timeTv;

    private DialogStepResultBinding(RelativeLayout relativeLayout, RecyclerView recyclerView, TextView textView, LinearLayout linearLayout, TextView textView2, LinearLayout linearLayout2, TextView textView3) {
        this.rootView = relativeLayout;
        this.deductRv = recyclerView;
        this.descTv = textView;
        this.leftTv = linearLayout;
        this.rightTv = textView2;
        this.rootLayout = linearLayout2;
        this.timeTv = textView3;
    }

    public static DialogStepResultBinding bind(View view) {
        int i = R.id.deductRv;
        RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
        if (recyclerView != null) {
            i = R.id.descTv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.leftTv;
                LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                if (linearLayout != null) {
                    i = R.id.rightTv;
                    TextView textView2 = (TextView) view.findViewById(i);
                    if (textView2 != null) {
                        i = R.id.rootLayout;
                        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(i);
                        if (linearLayout2 != null) {
                            i = R.id.timeTv;
                            TextView textView3 = (TextView) view.findViewById(i);
                            if (textView3 != null) {
                                return new DialogStepResultBinding((RelativeLayout) view, recyclerView, textView, linearLayout, textView2, linearLayout2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogStepResultBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogStepResultBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_step_result, viewGroup, false);
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
