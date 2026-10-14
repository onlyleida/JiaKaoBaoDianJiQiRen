package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class TeachingTitleBinding implements a {
    public final ImageView backIv;
    private final ConstraintLayout rootView;
    public final ConstraintLayout title;
    public final TextView titleTv;

    private TeachingTitleBinding(ConstraintLayout constraintLayout, ImageView imageView, ConstraintLayout constraintLayout2, TextView textView) {
        this.rootView = constraintLayout;
        this.backIv = imageView;
        this.title = constraintLayout2;
        this.titleTv = textView;
    }

    public static TeachingTitleBinding bind(View view) {
        int i = R.id.backIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            int i2 = R.id.titleTv;
            TextView textView = (TextView) view.findViewById(i2);
            if (textView != null) {
                return new TeachingTitleBinding(constraintLayout, imageView, constraintLayout, textView);
            }
            i = i2;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static TeachingTitleBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TeachingTitleBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.teaching_title, viewGroup, false);
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
