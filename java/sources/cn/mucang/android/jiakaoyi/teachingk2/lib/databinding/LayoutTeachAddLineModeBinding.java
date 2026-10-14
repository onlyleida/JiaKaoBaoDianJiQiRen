package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class LayoutTeachAddLineModeBinding implements a {
    public final ImageView addLineModel;
    public final LinearLayout addLineModelContainer;
    public final ImageView deleteIv;
    public final TextView lineTypeTv;
    private final LinearLayout rootView;
    public final TextView selectOptionTv;
    public final ConstraintLayout selectorContainer;

    private LayoutTeachAddLineModeBinding(LinearLayout linearLayout, ImageView imageView, LinearLayout linearLayout2, ImageView imageView2, TextView textView, TextView textView2, ConstraintLayout constraintLayout) {
        this.rootView = linearLayout;
        this.addLineModel = imageView;
        this.addLineModelContainer = linearLayout2;
        this.deleteIv = imageView2;
        this.lineTypeTv = textView;
        this.selectOptionTv = textView2;
        this.selectorContainer = constraintLayout;
    }

    public static LayoutTeachAddLineModeBinding bind(View view) {
        int i = R.id.addLineModel;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            i = R.id.deleteIv;
            ImageView imageView2 = (ImageView) view.findViewById(i);
            if (imageView2 != null) {
                i = R.id.lineTypeTv;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    i = R.id.selectOptionTv;
                    TextView textView2 = (TextView) view.findViewById(i);
                    if (textView2 != null) {
                        i = R.id.selectorContainer;
                        ConstraintLayout constraintLayout = (ConstraintLayout) view.findViewById(i);
                        if (constraintLayout != null) {
                            return new LayoutTeachAddLineModeBinding(linearLayout, imageView, linearLayout, imageView2, textView, textView2, constraintLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static LayoutTeachAddLineModeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LayoutTeachAddLineModeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_teach_add_line_mode, viewGroup, false);
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
