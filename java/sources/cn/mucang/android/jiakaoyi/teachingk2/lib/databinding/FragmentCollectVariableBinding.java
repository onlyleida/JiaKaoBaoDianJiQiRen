package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class FragmentCollectVariableBinding implements a {
    public final RecyclerView listView;
    private final RecyclerView rootView;

    private FragmentCollectVariableBinding(RecyclerView recyclerView, RecyclerView recyclerView2) {
        this.rootView = recyclerView;
        this.listView = recyclerView2;
    }

    public static FragmentCollectVariableBinding bind(View view) {
        Objects.requireNonNull(view, "rootView");
        RecyclerView recyclerView = (RecyclerView) view;
        return new FragmentCollectVariableBinding(recyclerView, recyclerView);
    }

    public static FragmentCollectVariableBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentCollectVariableBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_collect_variable, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public RecyclerView getRoot() {
        return this.rootView;
    }
}
