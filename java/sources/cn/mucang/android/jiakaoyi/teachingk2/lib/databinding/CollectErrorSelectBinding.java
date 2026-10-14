package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class CollectErrorSelectBinding implements a {
    private final ConstraintLayout rootView;
    public final CheckBox selectCb;
    public final TextView titleTv;

    private CollectErrorSelectBinding(ConstraintLayout constraintLayout, CheckBox checkBox, TextView textView) {
        this.rootView = constraintLayout;
        this.selectCb = checkBox;
        this.titleTv = textView;
    }

    public static CollectErrorSelectBinding bind(View view) {
        int i = R.id.selectCb;
        CheckBox checkBox = (CheckBox) view.findViewById(i);
        if (checkBox != null) {
            i = R.id.titleTv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                return new CollectErrorSelectBinding((ConstraintLayout) view, checkBox, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static CollectErrorSelectBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static CollectErrorSelectBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.collect_error_select, viewGroup, false);
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
