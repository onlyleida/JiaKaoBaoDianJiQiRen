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
public final class ItemSafeArgumentsBinding implements a {
    public final TextView btn;
    private final ConstraintLayout rootView;
    public final TextView text;
    public final EditText valueEt;

    private ItemSafeArgumentsBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, EditText editText) {
        this.rootView = constraintLayout;
        this.btn = textView;
        this.text = textView2;
        this.valueEt = editText;
    }

    public static ItemSafeArgumentsBinding bind(View view) {
        int i = R.id.btn;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.text;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.valueEt;
                EditText editText = (EditText) view.findViewById(i);
                if (editText != null) {
                    return new ItemSafeArgumentsBinding((ConstraintLayout) view, textView, textView2, editText);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ItemSafeArgumentsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemSafeArgumentsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_safe_arguments, viewGroup, false);
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
