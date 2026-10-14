package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.core.widget.StateLayout;
import cn.mucang.android.jiakaoyi.k3setting.R;
import com.mucang.android.jiakaoyi.uilib.databinding.CommonTitleBinding;

/* JADX INFO: loaded from: classes3.dex */
public final class LightAssembleActivityBinding implements a {
    public final TextView addTv;
    public final RecyclerView recyclerView;
    private final ConstraintLayout rootView;
    public final TextView saveTv;
    public final StateLayout stateLayout;
    public final TextView tipTv;
    public final CommonTitleBinding titleLayout;

    private LightAssembleActivityBinding(ConstraintLayout constraintLayout, TextView textView, RecyclerView recyclerView, TextView textView2, StateLayout stateLayout, TextView textView3, CommonTitleBinding commonTitleBinding) {
        this.rootView = constraintLayout;
        this.addTv = textView;
        this.recyclerView = recyclerView;
        this.saveTv = textView2;
        this.stateLayout = stateLayout;
        this.tipTv = textView3;
        this.titleLayout = commonTitleBinding;
    }

    public static LightAssembleActivityBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.addTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.recyclerView;
            RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
            if (recyclerView != null) {
                i = R.id.saveTv;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.stateLayout;
                    StateLayout stateLayout = (StateLayout) view.findViewById(i);
                    if (stateLayout != null) {
                        i = R.id.tipTv;
                        TextView textView3 = (TextView) view.findViewById(i);
                        if (textView3 != null && (viewFindViewById = view.findViewById((i = R.id.titleLayout))) != null) {
                            return new LightAssembleActivityBinding((ConstraintLayout) view, textView, recyclerView, textView2, stateLayout, textView3, CommonTitleBinding.bind(viewFindViewById));
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static LightAssembleActivityBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LightAssembleActivityBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.light_assemble_activity, viewGroup, false);
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
