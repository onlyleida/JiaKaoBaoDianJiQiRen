package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3setting.R;
import com.mucang.android.jiakaoyi.uilib.databinding.CommonTitleBinding;

/* JADX INFO: loaded from: classes3.dex */
public final class ManualOrderSettingActivityBinding implements a {
    public final RecyclerView recyclerView;
    private final ConstraintLayout rootView;
    public final CommonTitleBinding titleLayout;
    public final TextView tvTip;

    private ManualOrderSettingActivityBinding(ConstraintLayout constraintLayout, RecyclerView recyclerView, CommonTitleBinding commonTitleBinding, TextView textView) {
        this.rootView = constraintLayout;
        this.recyclerView = recyclerView;
        this.titleLayout = commonTitleBinding;
        this.tvTip = textView;
    }

    public static ManualOrderSettingActivityBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.recyclerView;
        RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
        if (recyclerView != null && (viewFindViewById = view.findViewById((i = R.id.titleLayout))) != null) {
            CommonTitleBinding commonTitleBindingBind = CommonTitleBinding.bind(viewFindViewById);
            int i2 = R.id.tvTip;
            TextView textView = (TextView) view.findViewById(i2);
            if (textView != null) {
                return new ManualOrderSettingActivityBinding((ConstraintLayout) view, recyclerView, commonTitleBindingBind, textView);
            }
            i = i2;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ManualOrderSettingActivityBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ManualOrderSettingActivityBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.manual_order_setting_activity, viewGroup, false);
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
