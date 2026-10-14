package cn.mucang.android.framework.core.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.framework.core.R;

/* JADX INFO: loaded from: classes.dex */
public final class ActivityPermissionDetailBinding implements a {
    public final Barrier barrier;
    public final ImageView imageView1;
    public final ImageView ivBack;
    public final ImageView ivFold;
    private final LinearLayout rootView;
    public final TextView textView1;
    public final TextView textview2;
    public final ConstraintLayout titleBar;
    public final TextView tvGoSet;
    public final TextView tvPrivacy;
    public final TextView tvProtectWayExpand;
    public final TextView tvProtectWayFold;
    public final TextView tvReason;
    public final TextView tvSafeInfoTitle;
    public final TextView tvTitle;
    public final TextView tvTitleReason;
    public final View view1;
    public final View view2;
    public final View view3;

    private ActivityPermissionDetailBinding(LinearLayout linearLayout, Barrier barrier, ImageView imageView, ImageView imageView2, ImageView imageView3, TextView textView, TextView textView2, ConstraintLayout constraintLayout, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, View view, View view2, View view3) {
        this.rootView = linearLayout;
        this.barrier = barrier;
        this.imageView1 = imageView;
        this.ivBack = imageView2;
        this.ivFold = imageView3;
        this.textView1 = textView;
        this.textview2 = textView2;
        this.titleBar = constraintLayout;
        this.tvGoSet = textView3;
        this.tvPrivacy = textView4;
        this.tvProtectWayExpand = textView5;
        this.tvProtectWayFold = textView6;
        this.tvReason = textView7;
        this.tvSafeInfoTitle = textView8;
        this.tvTitle = textView9;
        this.tvTitleReason = textView10;
        this.view1 = view;
        this.view2 = view2;
        this.view3 = view3;
    }

    public static ActivityPermissionDetailBinding bind(View view) {
        View viewFindViewById;
        View viewFindViewById2;
        View viewFindViewById3;
        int i = R.id.barrier;
        Barrier barrier = (Barrier) view.findViewById(i);
        if (barrier != null) {
            i = R.id.imageView1;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null) {
                i = R.id.iv_back;
                ImageView imageView2 = (ImageView) view.findViewById(i);
                if (imageView2 != null) {
                    i = R.id.iv_fold;
                    ImageView imageView3 = (ImageView) view.findViewById(i);
                    if (imageView3 != null) {
                        i = R.id.textView1;
                        TextView textView = (TextView) view.findViewById(i);
                        if (textView != null) {
                            i = R.id.textview2;
                            TextView textView2 = (TextView) view.findViewById(i);
                            if (textView2 != null) {
                                i = R.id.title_bar;
                                ConstraintLayout constraintLayout = (ConstraintLayout) view.findViewById(i);
                                if (constraintLayout != null) {
                                    i = R.id.tv_go_set;
                                    TextView textView3 = (TextView) view.findViewById(i);
                                    if (textView3 != null) {
                                        i = R.id.tv_privacy;
                                        TextView textView4 = (TextView) view.findViewById(i);
                                        if (textView4 != null) {
                                            i = R.id.tv_protect_way_expand;
                                            TextView textView5 = (TextView) view.findViewById(i);
                                            if (textView5 != null) {
                                                i = R.id.tv_protect_way_fold;
                                                TextView textView6 = (TextView) view.findViewById(i);
                                                if (textView6 != null) {
                                                    i = R.id.tv_reason;
                                                    TextView textView7 = (TextView) view.findViewById(i);
                                                    if (textView7 != null) {
                                                        i = R.id.tv_safe_info_title;
                                                        TextView textView8 = (TextView) view.findViewById(i);
                                                        if (textView8 != null) {
                                                            i = R.id.tv_title;
                                                            TextView textView9 = (TextView) view.findViewById(i);
                                                            if (textView9 != null) {
                                                                i = R.id.tv_title_reason;
                                                                TextView textView10 = (TextView) view.findViewById(i);
                                                                if (textView10 != null && (viewFindViewById = view.findViewById((i = R.id.view1))) != null && (viewFindViewById2 = view.findViewById((i = R.id.view2))) != null && (viewFindViewById3 = view.findViewById((i = R.id.view3))) != null) {
                                                                    return new ActivityPermissionDetailBinding((LinearLayout) view, barrier, imageView, imageView2, imageView3, textView, textView2, constraintLayout, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, viewFindViewById, viewFindViewById2, viewFindViewById3);
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
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

    public static ActivityPermissionDetailBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityPermissionDetailBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity__permission_detail, viewGroup, false);
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
