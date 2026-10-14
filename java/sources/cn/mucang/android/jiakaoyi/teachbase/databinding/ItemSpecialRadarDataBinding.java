package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ItemSpecialRadarDataBinding implements a {
    private final ConstraintLayout rootView;
    public final TextView text;
    public final EditText value;

    private ItemSpecialRadarDataBinding(ConstraintLayout constraintLayout, TextView textView, EditText editText) {
        this.rootView = constraintLayout;
        this.text = textView;
        this.value = editText;
    }

    public static ItemSpecialRadarDataBinding bind(View view) {
        int i = R.id.text;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.value;
            EditText editText = (EditText) view.findViewById(i);
            if (editText != null) {
                return new ItemSpecialRadarDataBinding((ConstraintLayout) view, textView, editText);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ItemSpecialRadarDataBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemSpecialRadarDataBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_special_radar_data, viewGroup, false);
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
