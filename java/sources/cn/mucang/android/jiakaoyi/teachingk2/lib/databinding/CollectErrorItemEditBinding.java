package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class CollectErrorItemEditBinding implements a {
    public final View divider;
    private final ConstraintLayout rootView;
    public final TextView titleTv;
    public final EditText valueEt;

    private CollectErrorItemEditBinding(ConstraintLayout constraintLayout, View view, TextView textView, EditText editText) {
        this.rootView = constraintLayout;
        this.divider = view;
        this.titleTv = textView;
        this.valueEt = editText;
    }

    public static CollectErrorItemEditBinding bind(View view) {
        int i = R.id.divider;
        View viewFindViewById = view.findViewById(i);
        if (viewFindViewById != null) {
            i = R.id.titleTv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.valueEt;
                EditText editText = (EditText) view.findViewById(i);
                if (editText != null) {
                    return new CollectErrorItemEditBinding((ConstraintLayout) view, viewFindViewById, textView, editText);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static CollectErrorItemEditBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static CollectErrorItemEditBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.collect_error_item_edit, viewGroup, false);
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
