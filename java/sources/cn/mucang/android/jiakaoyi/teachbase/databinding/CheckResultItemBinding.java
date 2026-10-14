package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class CheckResultItemBinding implements a {
    public final View bottom;
    public final TextView descTv;
    public final ImageView indicator;
    private final ConstraintLayout rootView;
    public final TextView titleTv;
    public final View top;

    private CheckResultItemBinding(ConstraintLayout constraintLayout, View view, TextView textView, ImageView imageView, TextView textView2, View view2) {
        this.rootView = constraintLayout;
        this.bottom = view;
        this.descTv = textView;
        this.indicator = imageView;
        this.titleTv = textView2;
        this.top = view2;
    }

    public static CheckResultItemBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.bottom;
        View viewFindViewById2 = view.findViewById(i);
        if (viewFindViewById2 != null) {
            i = R.id.descTv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.indicator;
                ImageView imageView = (ImageView) view.findViewById(i);
                if (imageView != null) {
                    i = R.id.titleTv;
                    TextView textView2 = (TextView) view.findViewById(i);
                    if (textView2 != null && (viewFindViewById = view.findViewById((i = R.id.top))) != null) {
                        return new CheckResultItemBinding((ConstraintLayout) view, viewFindViewById2, textView, imageView, textView2, viewFindViewById);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static CheckResultItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static CheckResultItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.check_result_item, viewGroup, false);
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
