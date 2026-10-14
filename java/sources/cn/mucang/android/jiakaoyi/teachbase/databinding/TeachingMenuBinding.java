package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.image.view.MucangCircleImageView;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class TeachingMenuBinding implements a {
    public final MucangCircleImageView avatarIv;
    public final TextView backTv;
    public final View divider;
    public final LinearLayout llBack;
    public final ConstraintLayout menu;
    public final TextView nameTv;
    private final ConstraintLayout rootView;
    public final TextView timeTv;

    private TeachingMenuBinding(ConstraintLayout constraintLayout, MucangCircleImageView mucangCircleImageView, TextView textView, View view, LinearLayout linearLayout, ConstraintLayout constraintLayout2, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.avatarIv = mucangCircleImageView;
        this.backTv = textView;
        this.divider = view;
        this.llBack = linearLayout;
        this.menu = constraintLayout2;
        this.nameTv = textView2;
        this.timeTv = textView3;
    }

    public static TeachingMenuBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.avatarIv;
        MucangCircleImageView mucangCircleImageView = (MucangCircleImageView) view.findViewById(i);
        if (mucangCircleImageView != null) {
            i = R.id.backTv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null && (viewFindViewById = view.findViewById((i = R.id.divider))) != null) {
                i = R.id.llBack;
                LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                if (linearLayout != null) {
                    ConstraintLayout constraintLayout = (ConstraintLayout) view;
                    i = R.id.nameTv;
                    TextView textView2 = (TextView) view.findViewById(i);
                    if (textView2 != null) {
                        i = R.id.timeTv;
                        TextView textView3 = (TextView) view.findViewById(i);
                        if (textView3 != null) {
                            return new TeachingMenuBinding(constraintLayout, mucangCircleImageView, textView, viewFindViewById, linearLayout, constraintLayout, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static TeachingMenuBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TeachingMenuBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.teaching_menu, viewGroup, false);
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
