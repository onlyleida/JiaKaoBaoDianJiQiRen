package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3setting.R;

/* JADX INFO: loaded from: classes3.dex */
public final class StepSettingItemBinding implements a {
    public final TextView collectTv;
    public final ImageView iconIv;
    private final ConstraintLayout rootView;
    public final TextView sortTv;
    public final TextView titleTv;

    private StepSettingItemBinding(ConstraintLayout constraintLayout, TextView textView, ImageView imageView, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.collectTv = textView;
        this.iconIv = imageView;
        this.sortTv = textView2;
        this.titleTv = textView3;
    }

    public static StepSettingItemBinding bind(View view) {
        int i = R.id.collectTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.iconIv;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null) {
                i = R.id.sortTv;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.titleTv;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        return new StepSettingItemBinding((ConstraintLayout) view, textView, imageView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static StepSettingItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static StepSettingItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.step_setting_item, viewGroup, false);
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
