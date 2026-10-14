package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class SignalGpsRounteActivityBinding implements a {
    public final RecyclerView fromHardware;
    public final RecyclerView fromServer;
    private final LinearLayout rootView;
    public final CommonTitleBinding titleLayout;
    public final RecyclerView toGGa;
    public final RecyclerView toHardware;

    private SignalGpsRounteActivityBinding(LinearLayout linearLayout, RecyclerView recyclerView, RecyclerView recyclerView2, CommonTitleBinding commonTitleBinding, RecyclerView recyclerView3, RecyclerView recyclerView4) {
        this.rootView = linearLayout;
        this.fromHardware = recyclerView;
        this.fromServer = recyclerView2;
        this.titleLayout = commonTitleBinding;
        this.toGGa = recyclerView3;
        this.toHardware = recyclerView4;
    }

    public static SignalGpsRounteActivityBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.fromHardware;
        RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
        if (recyclerView != null) {
            i = R.id.fromServer;
            RecyclerView recyclerView2 = (RecyclerView) view.findViewById(i);
            if (recyclerView2 != null && (viewFindViewById = view.findViewById((i = R.id.titleLayout))) != null) {
                CommonTitleBinding commonTitleBindingBind = CommonTitleBinding.bind(viewFindViewById);
                i = R.id.toGGa;
                RecyclerView recyclerView3 = (RecyclerView) view.findViewById(i);
                if (recyclerView3 != null) {
                    i = R.id.toHardware;
                    RecyclerView recyclerView4 = (RecyclerView) view.findViewById(i);
                    if (recyclerView4 != null) {
                        return new SignalGpsRounteActivityBinding((LinearLayout) view, recyclerView, recyclerView2, commonTitleBindingBind, recyclerView3, recyclerView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static SignalGpsRounteActivityBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static SignalGpsRounteActivityBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.signal_gps_rounte_activity, viewGroup, false);
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
