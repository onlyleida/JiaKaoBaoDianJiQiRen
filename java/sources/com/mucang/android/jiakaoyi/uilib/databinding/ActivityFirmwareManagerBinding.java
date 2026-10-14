package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.jiakaoyi.uilib.ui.widget.ArcProgress;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class ActivityFirmwareManagerBinding implements a {
    public final ArcProgress arcProgress;
    public final ConstraintLayout clLayout;
    public final RecyclerView firmwares;
    public final TextView packIndex;
    private final ConstraintLayout rootView;
    public final TextView state;
    public final CommonTitleBinding titleLayout;

    private ActivityFirmwareManagerBinding(ConstraintLayout constraintLayout, ArcProgress arcProgress, ConstraintLayout constraintLayout2, RecyclerView recyclerView, TextView textView, TextView textView2, CommonTitleBinding commonTitleBinding) {
        this.rootView = constraintLayout;
        this.arcProgress = arcProgress;
        this.clLayout = constraintLayout2;
        this.firmwares = recyclerView;
        this.packIndex = textView;
        this.state = textView2;
        this.titleLayout = commonTitleBinding;
    }

    public static ActivityFirmwareManagerBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.arcProgress;
        ArcProgress arcProgress = (ArcProgress) view.findViewById(i);
        if (arcProgress != null) {
            i = R.id.clLayout;
            ConstraintLayout constraintLayout = (ConstraintLayout) view.findViewById(i);
            if (constraintLayout != null) {
                i = R.id.firmwares;
                RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
                if (recyclerView != null) {
                    i = R.id.packIndex;
                    TextView textView = (TextView) view.findViewById(i);
                    if (textView != null) {
                        i = R.id.state;
                        TextView textView2 = (TextView) view.findViewById(i);
                        if (textView2 != null && (viewFindViewById = view.findViewById((i = R.id.titleLayout))) != null) {
                            return new ActivityFirmwareManagerBinding((ConstraintLayout) view, arcProgress, constraintLayout, recyclerView, textView, textView2, CommonTitleBinding.bind(viewFindViewById));
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityFirmwareManagerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityFirmwareManagerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_firmware_manager, viewGroup, false);
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
