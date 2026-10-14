package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class ExtensionSelectActivityBinding implements a {
    public final RecyclerView recyclerView;
    private final LinearLayout rootView;
    public final CommonTitleBinding titleLayout;

    private ExtensionSelectActivityBinding(LinearLayout linearLayout, RecyclerView recyclerView, CommonTitleBinding commonTitleBinding) {
        this.rootView = linearLayout;
        this.recyclerView = recyclerView;
        this.titleLayout = commonTitleBinding;
    }

    public static ExtensionSelectActivityBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.recyclerView;
        RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
        if (recyclerView == null || (viewFindViewById = view.findViewById((i = R.id.titleLayout))) == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        }
        return new ExtensionSelectActivityBinding((LinearLayout) view, recyclerView, CommonTitleBinding.bind(viewFindViewById));
    }

    public static ExtensionSelectActivityBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ExtensionSelectActivityBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.extension_select_activity, viewGroup, false);
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
