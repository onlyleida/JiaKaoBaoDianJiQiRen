package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.image.view.MucangCircleImageView;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class UserCommonTitleBinding implements a {
    public final TextView allStep;
    public final MucangCircleImageView avatarIv;
    public final TextView closeIv;
    public final TextView durationTv;
    public final TextView nameTv;
    private final ConstraintLayout rootView;
    public final ConstraintLayout showStep;
    public final TextView titleTv;

    private UserCommonTitleBinding(ConstraintLayout constraintLayout, TextView textView, MucangCircleImageView mucangCircleImageView, TextView textView2, TextView textView3, TextView textView4, ConstraintLayout constraintLayout2, TextView textView5) {
        this.rootView = constraintLayout;
        this.allStep = textView;
        this.avatarIv = mucangCircleImageView;
        this.closeIv = textView2;
        this.durationTv = textView3;
        this.nameTv = textView4;
        this.showStep = constraintLayout2;
        this.titleTv = textView5;
    }

    public static UserCommonTitleBinding bind(View view) {
        int i = R.id.all_step;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.avatarIv;
            MucangCircleImageView mucangCircleImageView = (MucangCircleImageView) view.findViewById(i);
            if (mucangCircleImageView != null) {
                i = R.id.closeIv;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.durationTv;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        i = R.id.nameTv;
                        TextView textView4 = (TextView) view.findViewById(i);
                        if (textView4 != null) {
                            i = R.id.show_step;
                            ConstraintLayout constraintLayout = (ConstraintLayout) view.findViewById(i);
                            if (constraintLayout != null) {
                                i = R.id.titleTv;
                                TextView textView5 = (TextView) view.findViewById(i);
                                if (textView5 != null) {
                                    return new UserCommonTitleBinding((ConstraintLayout) view, textView, mucangCircleImageView, textView2, textView3, textView4, constraintLayout, textView5);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static UserCommonTitleBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static UserCommonTitleBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.user_common_title, viewGroup, false);
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
