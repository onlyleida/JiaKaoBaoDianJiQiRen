package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class InstructChangeItemBinding implements a {
    public final EditText fileName;
    public final TextView projectOrder;
    private final ConstraintLayout rootView;

    private InstructChangeItemBinding(ConstraintLayout constraintLayout, EditText editText, TextView textView) {
        this.rootView = constraintLayout;
        this.fileName = editText;
        this.projectOrder = textView;
    }

    public static InstructChangeItemBinding bind(View view) {
        int i = R.id.file_name;
        EditText editText = (EditText) view.findViewById(i);
        if (editText != null) {
            i = R.id.project_order;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                return new InstructChangeItemBinding((ConstraintLayout) view, editText, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static InstructChangeItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static InstructChangeItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.instruct_change_item, viewGroup, false);
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
