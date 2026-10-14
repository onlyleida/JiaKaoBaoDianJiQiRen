package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.Spinner;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class TeachCollectVItemSpinnerBinding implements a {
    public final Spinner options;
    private final LinearLayout rootView;

    private TeachCollectVItemSpinnerBinding(LinearLayout linearLayout, Spinner spinner) {
        this.rootView = linearLayout;
        this.options = spinner;
    }

    public static TeachCollectVItemSpinnerBinding bind(View view) {
        int i = R.id.options;
        Spinner spinner = (Spinner) view.findViewById(i);
        if (spinner != null) {
            return new TeachCollectVItemSpinnerBinding((LinearLayout) view, spinner);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static TeachCollectVItemSpinnerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TeachCollectVItemSpinnerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.teach_collect_v_item_spinner, viewGroup, false);
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
