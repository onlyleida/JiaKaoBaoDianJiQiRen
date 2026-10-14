package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.core.widget.StateLayout;
import cn.mucang.android.jiakaoyi.k3setting.R;
import com.mucang.android.jiakaoyi.uilib.databinding.CommonTitleBinding;

/* JADX INFO: loaded from: classes3.dex */
public final class LightAssembleAddActivityBinding implements a {
    public final View divider;
    public final EditText nameEt;
    public final RecyclerView recyclerView;
    private final ConstraintLayout rootView;
    public final TextView saveTv;
    public final StateLayout stateLayout;
    public final CommonTitleBinding titleLayout;
    public final TextView titleTv;

    private LightAssembleAddActivityBinding(ConstraintLayout constraintLayout, View view, EditText editText, RecyclerView recyclerView, TextView textView, StateLayout stateLayout, CommonTitleBinding commonTitleBinding, TextView textView2) {
        this.rootView = constraintLayout;
        this.divider = view;
        this.nameEt = editText;
        this.recyclerView = recyclerView;
        this.saveTv = textView;
        this.stateLayout = stateLayout;
        this.titleLayout = commonTitleBinding;
        this.titleTv = textView2;
    }

    public static LightAssembleAddActivityBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.divider;
        View viewFindViewById2 = view.findViewById(i);
        if (viewFindViewById2 != null) {
            i = R.id.nameEt;
            EditText editText = (EditText) view.findViewById(i);
            if (editText != null) {
                i = R.id.recyclerView;
                RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
                if (recyclerView != null) {
                    i = R.id.saveTv;
                    TextView textView = (TextView) view.findViewById(i);
                    if (textView != null) {
                        i = R.id.stateLayout;
                        StateLayout stateLayout = (StateLayout) view.findViewById(i);
                        if (stateLayout != null && (viewFindViewById = view.findViewById((i = R.id.titleLayout))) != null) {
                            CommonTitleBinding commonTitleBindingBind = CommonTitleBinding.bind(viewFindViewById);
                            i = R.id.titleTv;
                            TextView textView2 = (TextView) view.findViewById(i);
                            if (textView2 != null) {
                                return new LightAssembleAddActivityBinding((ConstraintLayout) view, viewFindViewById2, editText, recyclerView, textView, stateLayout, commonTitleBindingBind, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static LightAssembleAddActivityBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LightAssembleAddActivityBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.light_assemble_add_activity, viewGroup, false);
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
