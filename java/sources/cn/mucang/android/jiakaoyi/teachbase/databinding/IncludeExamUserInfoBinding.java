package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class IncludeExamUserInfoBinding implements a {
    public final TextView cardTv;
    public final TextView costTimeTv;
    public final TextView nickNameTv;
    private final ConstraintLayout rootView;
    public final TextView startTimeTv;

    private IncludeExamUserInfoBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = constraintLayout;
        this.cardTv = textView;
        this.costTimeTv = textView2;
        this.nickNameTv = textView3;
        this.startTimeTv = textView4;
    }

    public static IncludeExamUserInfoBinding bind(View view) {
        int i = R.id.cardTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.costTimeTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.nickNameTv;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    i = R.id.startTimeTv;
                    TextView textView4 = (TextView) view.findViewById(i);
                    if (textView4 != null) {
                        return new IncludeExamUserInfoBinding((ConstraintLayout) view, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static IncludeExamUserInfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static IncludeExamUserInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.include_exam_user_info, viewGroup, false);
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
