package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class ActivitySelfCheckBinding implements a {
    public final LinearLayout debugContainer;
    public final TextView descTv;
    public final TextView errorTv;
    public final TextView mainTv;
    public final TextView obdWareDebugInfo;
    public final ProgressBar progressBar;
    public final RecyclerView recyclerView;
    public final Group resultGroup;
    public final TextView retryTv;
    private final ConstraintLayout rootView;
    public final TextView tipTv;
    public final CommonTitleBinding titleLayout;
    public final TextView tvApkTime;
    public final TextView tvTime;
    public final TextView tvVersion;
    public final ProgressBar upgradeBar;
    public final TextView upgradeDebugInfo;
    public final TextView upgradeTv;

    private ActivitySelfCheckBinding(ConstraintLayout constraintLayout, LinearLayout linearLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, ProgressBar progressBar, RecyclerView recyclerView, Group group, TextView textView5, TextView textView6, CommonTitleBinding commonTitleBinding, TextView textView7, TextView textView8, TextView textView9, ProgressBar progressBar2, TextView textView10, TextView textView11) {
        this.rootView = constraintLayout;
        this.debugContainer = linearLayout;
        this.descTv = textView;
        this.errorTv = textView2;
        this.mainTv = textView3;
        this.obdWareDebugInfo = textView4;
        this.progressBar = progressBar;
        this.recyclerView = recyclerView;
        this.resultGroup = group;
        this.retryTv = textView5;
        this.tipTv = textView6;
        this.titleLayout = commonTitleBinding;
        this.tvApkTime = textView7;
        this.tvTime = textView8;
        this.tvVersion = textView9;
        this.upgradeBar = progressBar2;
        this.upgradeDebugInfo = textView10;
        this.upgradeTv = textView11;
    }

    public static ActivitySelfCheckBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.debugContainer;
        LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
        if (linearLayout != null) {
            i = R.id.descTv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.errorTv;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.mainTv;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        i = R.id.obdWareDebugInfo;
                        TextView textView4 = (TextView) view.findViewById(i);
                        if (textView4 != null) {
                            i = R.id.progressBar;
                            ProgressBar progressBar = (ProgressBar) view.findViewById(i);
                            if (progressBar != null) {
                                i = R.id.recyclerView;
                                RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
                                if (recyclerView != null) {
                                    i = R.id.resultGroup;
                                    Group group = (Group) view.findViewById(i);
                                    if (group != null) {
                                        i = R.id.retryTv;
                                        TextView textView5 = (TextView) view.findViewById(i);
                                        if (textView5 != null) {
                                            i = R.id.tipTv;
                                            TextView textView6 = (TextView) view.findViewById(i);
                                            if (textView6 != null && (viewFindViewById = view.findViewById((i = R.id.titleLayout))) != null) {
                                                CommonTitleBinding commonTitleBindingBind = CommonTitleBinding.bind(viewFindViewById);
                                                i = R.id.tvApkTime;
                                                TextView textView7 = (TextView) view.findViewById(i);
                                                if (textView7 != null) {
                                                    i = R.id.tvTime;
                                                    TextView textView8 = (TextView) view.findViewById(i);
                                                    if (textView8 != null) {
                                                        i = R.id.tvVersion;
                                                        TextView textView9 = (TextView) view.findViewById(i);
                                                        if (textView9 != null) {
                                                            i = R.id.upgradeBar;
                                                            ProgressBar progressBar2 = (ProgressBar) view.findViewById(i);
                                                            if (progressBar2 != null) {
                                                                i = R.id.upgradeDebugInfo;
                                                                TextView textView10 = (TextView) view.findViewById(i);
                                                                if (textView10 != null) {
                                                                    i = R.id.upgradeTv;
                                                                    TextView textView11 = (TextView) view.findViewById(i);
                                                                    if (textView11 != null) {
                                                                        return new ActivitySelfCheckBinding((ConstraintLayout) view, linearLayout, textView, textView2, textView3, textView4, progressBar, recyclerView, group, textView5, textView6, commonTitleBindingBind, textView7, textView8, textView9, progressBar2, textView10, textView11);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivitySelfCheckBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivitySelfCheckBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_self_check, viewGroup, false);
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
