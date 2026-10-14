package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ScrollView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class FragmentCollectErrorBinding implements a {
    public final RecyclerView actionRv;
    public final EditText distanceEt;
    public final EditText errorEt;
    private final ScrollView rootView;

    private FragmentCollectErrorBinding(ScrollView scrollView, RecyclerView recyclerView, EditText editText, EditText editText2) {
        this.rootView = scrollView;
        this.actionRv = recyclerView;
        this.distanceEt = editText;
        this.errorEt = editText2;
    }

    public static FragmentCollectErrorBinding bind(View view) {
        int i = R.id.actionRv;
        RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
        if (recyclerView != null) {
            i = R.id.distanceEt;
            EditText editText = (EditText) view.findViewById(i);
            if (editText != null) {
                i = R.id.errorEt;
                EditText editText2 = (EditText) view.findViewById(i);
                if (editText2 != null) {
                    return new FragmentCollectErrorBinding((ScrollView) view, recyclerView, editText, editText2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static FragmentCollectErrorBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentCollectErrorBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_collect_error, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public ScrollView getRoot() {
        return this.rootView;
    }
}
