package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3setting.R;

/* JADX INFO: loaded from: classes3.dex */
public final class ExamLightDialogItemBinding implements a {
    public final ImageView lightIcon;
    private final FrameLayout rootView;

    private ExamLightDialogItemBinding(FrameLayout frameLayout, ImageView imageView) {
        this.rootView = frameLayout;
        this.lightIcon = imageView;
    }

    public static ExamLightDialogItemBinding bind(View view) {
        int i = R.id.lightIcon;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            return new ExamLightDialogItemBinding((FrameLayout) view, imageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ExamLightDialogItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ExamLightDialogItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.exam_light_dialog_item, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public FrameLayout getRoot() {
        return this.rootView;
    }
}
