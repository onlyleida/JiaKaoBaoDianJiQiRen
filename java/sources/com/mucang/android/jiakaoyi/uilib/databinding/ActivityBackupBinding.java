package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class ActivityBackupBinding implements a {
    public final View deductView;
    private final ConstraintLayout rootView;
    public final View ruleView;
    public final CommonTitleBinding titleLayout;

    private ActivityBackupBinding(ConstraintLayout constraintLayout, View view, View view2, CommonTitleBinding commonTitleBinding) {
        this.rootView = constraintLayout;
        this.deductView = view;
        this.ruleView = view2;
        this.titleLayout = commonTitleBinding;
    }

    public static ActivityBackupBinding bind(View view) {
        View viewFindViewById;
        View viewFindViewById2;
        int i = R.id.deductView;
        View viewFindViewById3 = view.findViewById(i);
        if (viewFindViewById3 == null || (viewFindViewById = view.findViewById((i = R.id.ruleView))) == null || (viewFindViewById2 = view.findViewById((i = R.id.titleLayout))) == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        }
        return new ActivityBackupBinding((ConstraintLayout) view, viewFindViewById3, viewFindViewById, CommonTitleBinding.bind(viewFindViewById2));
    }

    public static ActivityBackupBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityBackupBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_backup, viewGroup, false);
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
