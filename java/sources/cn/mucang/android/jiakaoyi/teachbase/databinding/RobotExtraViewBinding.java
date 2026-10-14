package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.image.view.MucangImageView;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class RobotExtraViewBinding implements a {
    public final ImageView bgView;
    public final MucangImageView iconIv;
    public final FrameLayout previewFl;
    private final ConstraintLayout rootView;
    public final TextView textTv;

    private RobotExtraViewBinding(ConstraintLayout constraintLayout, ImageView imageView, MucangImageView mucangImageView, FrameLayout frameLayout, TextView textView) {
        this.rootView = constraintLayout;
        this.bgView = imageView;
        this.iconIv = mucangImageView;
        this.previewFl = frameLayout;
        this.textTv = textView;
    }

    public static RobotExtraViewBinding bind(View view) {
        int i = R.id.bgView;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.iconIv;
            MucangImageView mucangImageView = (MucangImageView) view.findViewById(i);
            if (mucangImageView != null) {
                i = R.id.previewFl;
                FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
                if (frameLayout != null) {
                    i = R.id.textTv;
                    TextView textView = (TextView) view.findViewById(i);
                    if (textView != null) {
                        return new RobotExtraViewBinding((ConstraintLayout) view, imageView, mucangImageView, frameLayout, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static RobotExtraViewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static RobotExtraViewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.robot_extra_view, viewGroup, false);
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
