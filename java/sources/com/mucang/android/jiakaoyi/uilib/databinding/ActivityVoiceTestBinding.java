package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class ActivityVoiceTestBinding implements a {
    private final ConstraintLayout rootView;
    public final CommonTitleBinding titleLayout;
    public final RecyclerView voiceGrade;

    private ActivityVoiceTestBinding(ConstraintLayout constraintLayout, CommonTitleBinding commonTitleBinding, RecyclerView recyclerView) {
        this.rootView = constraintLayout;
        this.titleLayout = commonTitleBinding;
        this.voiceGrade = recyclerView;
    }

    public static ActivityVoiceTestBinding bind(View view) {
        int i = R.id.titleLayout;
        View viewFindViewById = view.findViewById(i);
        if (viewFindViewById != null) {
            CommonTitleBinding commonTitleBindingBind = CommonTitleBinding.bind(viewFindViewById);
            int i2 = R.id.voice_grade;
            RecyclerView recyclerView = (RecyclerView) view.findViewById(i2);
            if (recyclerView != null) {
                return new ActivityVoiceTestBinding((ConstraintLayout) view, commonTitleBindingBind, recyclerView);
            }
            i = i2;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityVoiceTestBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityVoiceTestBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_voice_test, viewGroup, false);
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
