package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.image.view.MucangRoundCornerImageView;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class DialogErrorPointBinding implements a {
    public final View bgView;
    public final ImageView closeIv;
    public final TextView errorTv;
    public final MucangRoundCornerImageView imageIv;
    public final ImageView leftIv;
    public final ImageView rightIv;
    private final ConstraintLayout rootView;
    public final RecyclerView stepRv;
    public final TextView titleTv;

    private DialogErrorPointBinding(ConstraintLayout constraintLayout, View view, ImageView imageView, TextView textView, MucangRoundCornerImageView mucangRoundCornerImageView, ImageView imageView2, ImageView imageView3, RecyclerView recyclerView, TextView textView2) {
        this.rootView = constraintLayout;
        this.bgView = view;
        this.closeIv = imageView;
        this.errorTv = textView;
        this.imageIv = mucangRoundCornerImageView;
        this.leftIv = imageView2;
        this.rightIv = imageView3;
        this.stepRv = recyclerView;
        this.titleTv = textView2;
    }

    public static DialogErrorPointBinding bind(View view) {
        int i = R.id.bgView;
        View viewFindViewById = view.findViewById(i);
        if (viewFindViewById != null) {
            i = R.id.closeIv;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null) {
                i = R.id.errorTv;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    i = R.id.imageIv;
                    MucangRoundCornerImageView mucangRoundCornerImageView = (MucangRoundCornerImageView) view.findViewById(i);
                    if (mucangRoundCornerImageView != null) {
                        i = R.id.leftIv;
                        ImageView imageView2 = (ImageView) view.findViewById(i);
                        if (imageView2 != null) {
                            i = R.id.rightIv;
                            ImageView imageView3 = (ImageView) view.findViewById(i);
                            if (imageView3 != null) {
                                i = R.id.stepRv;
                                RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
                                if (recyclerView != null) {
                                    i = R.id.titleTv;
                                    TextView textView2 = (TextView) view.findViewById(i);
                                    if (textView2 != null) {
                                        return new DialogErrorPointBinding((ConstraintLayout) view, viewFindViewById, imageView, textView, mucangRoundCornerImageView, imageView2, imageView3, recyclerView, textView2);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogErrorPointBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogErrorPointBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_error_point, viewGroup, false);
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
