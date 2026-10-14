package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.TeachingTitleBinding;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityDrivingSettingBinding implements a {
    public final RecyclerView dataRv;
    private final ConstraintLayout rootView;
    public final CardView scanCard;
    public final TeachingTitleBinding title;

    private ActivityDrivingSettingBinding(ConstraintLayout constraintLayout, RecyclerView recyclerView, CardView cardView, TeachingTitleBinding teachingTitleBinding) {
        this.rootView = constraintLayout;
        this.dataRv = recyclerView;
        this.scanCard = cardView;
        this.title = teachingTitleBinding;
    }

    public static ActivityDrivingSettingBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.dataRv;
        RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
        if (recyclerView != null) {
            i = R.id.scanCard;
            CardView cardView = (CardView) view.findViewById(i);
            if (cardView != null && (viewFindViewById = view.findViewById((i = R.id.title))) != null) {
                return new ActivityDrivingSettingBinding((ConstraintLayout) view, recyclerView, cardView, TeachingTitleBinding.bind(viewFindViewById));
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityDrivingSettingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityDrivingSettingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_driving_setting, viewGroup, false);
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
