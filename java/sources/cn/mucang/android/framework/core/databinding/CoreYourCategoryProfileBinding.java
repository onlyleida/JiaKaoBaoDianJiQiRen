package cn.mucang.android.framework.core.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.Spinner;
import androidx.viewbinding.a;
import cn.mucang.android.framework.core.R;

/* JADX INFO: loaded from: classes.dex */
public final class CoreYourCategoryProfileBinding implements a {
    public final Spinner profileSpinner;
    private final LinearLayout rootView;

    private CoreYourCategoryProfileBinding(LinearLayout linearLayout, Spinner spinner) {
        this.rootView = linearLayout;
        this.profileSpinner = spinner;
    }

    public static CoreYourCategoryProfileBinding bind(View view) {
        int i = R.id.profileSpinner;
        Spinner spinner = (Spinner) view.findViewById(i);
        if (spinner != null) {
            return new CoreYourCategoryProfileBinding((LinearLayout) view, spinner);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static CoreYourCategoryProfileBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static CoreYourCategoryProfileBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.core_your_category_profile, viewGroup, false);
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
