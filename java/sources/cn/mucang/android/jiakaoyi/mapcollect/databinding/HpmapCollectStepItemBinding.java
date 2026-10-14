package cn.mucang.android.jiakaoyi.mapcollect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.mapcollect.R;

/* JADX INFO: loaded from: classes3.dex */
public final class HpmapCollectStepItemBinding implements a {
    public final ImageView changOrientation;
    public final ImageView copyTurn;
    public final ImageView delete;
    private final FrameLayout rootView;
    public final ImageView selectThis;
    public final TextView text;

    private HpmapCollectStepItemBinding(FrameLayout frameLayout, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, TextView textView) {
        this.rootView = frameLayout;
        this.changOrientation = imageView;
        this.copyTurn = imageView2;
        this.delete = imageView3;
        this.selectThis = imageView4;
        this.text = textView;
    }

    public static HpmapCollectStepItemBinding bind(View view) {
        int i = R.id.changOrientation;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.copy_turn;
            ImageView imageView2 = (ImageView) view.findViewById(i);
            if (imageView2 != null) {
                i = R.id.delete;
                ImageView imageView3 = (ImageView) view.findViewById(i);
                if (imageView3 != null) {
                    i = R.id.select_this;
                    ImageView imageView4 = (ImageView) view.findViewById(i);
                    if (imageView4 != null) {
                        i = R.id.text;
                        TextView textView = (TextView) view.findViewById(i);
                        if (textView != null) {
                            return new HpmapCollectStepItemBinding((FrameLayout) view, imageView, imageView2, imageView3, imageView4, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static HpmapCollectStepItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static HpmapCollectStepItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.hpmap__collect_step_item, viewGroup, false);
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
