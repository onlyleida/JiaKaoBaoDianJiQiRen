package cn.mucang.android.jiakaoyi.mapcollect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.mapcollect.R;
import com.mucang.android.jiakaoyi.uilib.databinding.CommonTitleBinding;

/* JADX INFO: loaded from: classes3.dex */
public final class ActivityAgentManageBinding implements a {
    public final AppCompatCheckBox cbForcedEnd;
    public final AppCompatCheckBox checkBox3;
    public final LinearLayout llPayMode;
    public final RecyclerView recyclerView;
    private final LinearLayout rootView;
    public final CommonTitleBinding titleLayout;

    private ActivityAgentManageBinding(LinearLayout linearLayout, AppCompatCheckBox appCompatCheckBox, AppCompatCheckBox appCompatCheckBox2, LinearLayout linearLayout2, RecyclerView recyclerView, CommonTitleBinding commonTitleBinding) {
        this.rootView = linearLayout;
        this.cbForcedEnd = appCompatCheckBox;
        this.checkBox3 = appCompatCheckBox2;
        this.llPayMode = linearLayout2;
        this.recyclerView = recyclerView;
        this.titleLayout = commonTitleBinding;
    }

    public static ActivityAgentManageBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.cb_forced_end;
        AppCompatCheckBox appCompatCheckBox = (AppCompatCheckBox) view.findViewById(i);
        if (appCompatCheckBox != null) {
            i = R.id.checkBox3;
            AppCompatCheckBox appCompatCheckBox2 = (AppCompatCheckBox) view.findViewById(i);
            if (appCompatCheckBox2 != null) {
                i = R.id.ll_pay_mode;
                LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                if (linearLayout != null) {
                    i = R.id.recyclerView;
                    RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
                    if (recyclerView != null && (viewFindViewById = view.findViewById((i = R.id.titleLayout))) != null) {
                        return new ActivityAgentManageBinding((LinearLayout) view, appCompatCheckBox, appCompatCheckBox2, linearLayout, recyclerView, CommonTitleBinding.bind(viewFindViewById));
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityAgentManageBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityAgentManageBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_agent_manage, viewGroup, false);
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
