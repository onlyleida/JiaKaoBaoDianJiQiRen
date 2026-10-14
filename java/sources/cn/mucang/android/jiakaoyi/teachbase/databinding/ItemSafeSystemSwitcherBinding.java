package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ItemSafeSystemSwitcherBinding implements a {
    private final ConstraintLayout rootView;
    public final Spinner spinner;
    public final TextView text;

    private ItemSafeSystemSwitcherBinding(ConstraintLayout constraintLayout, Spinner spinner, TextView textView) {
        this.rootView = constraintLayout;
        this.spinner = spinner;
        this.text = textView;
    }

    public static ItemSafeSystemSwitcherBinding bind(View view) {
        int i = R.id.spinner;
        Spinner spinner = (Spinner) view.findViewById(i);
        if (spinner != null) {
            i = R.id.text;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                return new ItemSafeSystemSwitcherBinding((ConstraintLayout) view, spinner, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ItemSafeSystemSwitcherBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemSafeSystemSwitcherBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_safe_system_switcher, viewGroup, false);
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
