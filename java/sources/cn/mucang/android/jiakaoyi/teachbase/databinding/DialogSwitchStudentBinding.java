package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class DialogSwitchStudentBinding implements a {
    public final ImageView closeIv;
    public final TextView loginTv;
    public final TextView operateTv;
    private final ConstraintLayout rootView;
    public final RecyclerView studentRv;
    public final TextView studentTv;
    public final TextView titleTv;
    public final TextView tvTip;

    private DialogSwitchStudentBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView, TextView textView2, RecyclerView recyclerView, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = constraintLayout;
        this.closeIv = imageView;
        this.loginTv = textView;
        this.operateTv = textView2;
        this.studentRv = recyclerView;
        this.studentTv = textView3;
        this.titleTv = textView4;
        this.tvTip = textView5;
    }

    public static DialogSwitchStudentBinding bind(View view) {
        int i = R.id.closeIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.loginTv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.operateTv;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.studentRv;
                    RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
                    if (recyclerView != null) {
                        i = R.id.studentTv;
                        TextView textView3 = (TextView) view.findViewById(i);
                        if (textView3 != null) {
                            i = R.id.titleTv;
                            TextView textView4 = (TextView) view.findViewById(i);
                            if (textView4 != null) {
                                i = R.id.tv_tip;
                                TextView textView5 = (TextView) view.findViewById(i);
                                if (textView5 != null) {
                                    return new DialogSwitchStudentBinding((ConstraintLayout) view, imageView, textView, textView2, recyclerView, textView3, textView4, textView5);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogSwitchStudentBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogSwitchStudentBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_switch_student, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public ConstraintLayout getRoot() {
        return this.rootView;
    }
}
