package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.framework.base.view.ScrollableView;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class DialogRadarSignalBinding implements a {
    public final ConstraintLayout bgView;
    public final ImageView closeIv;
    public final Guideline guide;
    public final ImageView ivArrow;
    public final ConstraintLayout ivBall;
    public final LayoutRadarSignalSmallBinding radarContainer;
    private final ScrollableView rootView;
    public final ScrollableView scrollableView;
    public final TextView textView;
    public final TextView tvDistance;

    private DialogRadarSignalBinding(ScrollableView scrollableView, ConstraintLayout constraintLayout, ImageView imageView, Guideline guideline, ImageView imageView2, ConstraintLayout constraintLayout2, LayoutRadarSignalSmallBinding layoutRadarSignalSmallBinding, ScrollableView scrollableView2, TextView textView, TextView textView2) {
        this.rootView = scrollableView;
        this.bgView = constraintLayout;
        this.closeIv = imageView;
        this.guide = guideline;
        this.ivArrow = imageView2;
        this.ivBall = constraintLayout2;
        this.radarContainer = layoutRadarSignalSmallBinding;
        this.scrollableView = scrollableView2;
        this.textView = textView;
        this.tvDistance = textView2;
    }

    public static DialogRadarSignalBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.bgView;
        ConstraintLayout constraintLayout = (ConstraintLayout) view.findViewById(i);
        if (constraintLayout != null) {
            i = R.id.closeIv;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null) {
                i = R.id.guide;
                Guideline guideline = (Guideline) view.findViewById(i);
                if (guideline != null) {
                    i = R.id.ivArrow;
                    ImageView imageView2 = (ImageView) view.findViewById(i);
                    if (imageView2 != null) {
                        i = R.id.ivBall;
                        ConstraintLayout constraintLayout2 = (ConstraintLayout) view.findViewById(i);
                        if (constraintLayout2 != null && (viewFindViewById = view.findViewById((i = R.id.radarContainer))) != null) {
                            LayoutRadarSignalSmallBinding layoutRadarSignalSmallBindingBind = LayoutRadarSignalSmallBinding.bind(viewFindViewById);
                            ScrollableView scrollableView = (ScrollableView) view;
                            i = R.id.textView;
                            TextView textView = (TextView) view.findViewById(i);
                            if (textView != null) {
                                i = R.id.tvDistance;
                                TextView textView2 = (TextView) view.findViewById(i);
                                if (textView2 != null) {
                                    return new DialogRadarSignalBinding(scrollableView, constraintLayout, imageView, guideline, imageView2, constraintLayout2, layoutRadarSignalSmallBindingBind, scrollableView, textView, textView2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogRadarSignalBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogRadarSignalBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_radar_signal, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public ScrollableView getRoot() {
        return this.rootView;
    }
}
