package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class ActivityVoicePackPreviewBinding implements a {
    public final RecyclerView recyclerView;
    private final ConstraintLayout rootView;
    public final CommonTitleBinding titleLayout;

    private ActivityVoicePackPreviewBinding(ConstraintLayout constraintLayout, RecyclerView recyclerView, CommonTitleBinding commonTitleBinding) {
        this.rootView = constraintLayout;
        this.recyclerView = recyclerView;
        this.titleLayout = commonTitleBinding;
    }

    public static ActivityVoicePackPreviewBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.recyclerView;
        RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
        if (recyclerView == null || (viewFindViewById = view.findViewById((i = R.id.titleLayout))) == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        }
        return new ActivityVoicePackPreviewBinding((ConstraintLayout) view, recyclerView, CommonTitleBinding.bind(viewFindViewById));
    }

    public static ActivityVoicePackPreviewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityVoicePackPreviewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_voice_pack_preview, viewGroup, false);
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
