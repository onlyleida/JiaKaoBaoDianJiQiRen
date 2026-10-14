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
public final class DialogTeachAddGroupWhiteBinding implements a {
    public final TextView cancelTv;
    public final TextView confirmTv;
    public final EditText groupEt;
    private final ConstraintLayout rootView;
    public final TextView stepTv;
    public final TextView temp;
    public final TextView titleTv;

    private DialogTeachAddGroupWhiteBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, EditText editText, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = constraintLayout;
        this.cancelTv = textView;
        this.confirmTv = textView2;
        this.groupEt = editText;
        this.stepTv = textView3;
        this.temp = textView4;
        this.titleTv = textView5;
    }

    public static DialogTeachAddGroupWhiteBinding bind(View view) {
        int i = R.id.cancelTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.confirmTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.groupEt;
                EditText editText = (EditText) view.findViewById(i);
                if (editText != null) {
                    i = R.id.stepTv;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        i = R.id.temp;
                        TextView textView4 = (TextView) view.findViewById(i);
                        if (textView4 != null) {
                            i = R.id.titleTv;
                            TextView textView5 = (TextView) view.findViewById(i);
                            if (textView5 != null) {
                                return new DialogTeachAddGroupWhiteBinding((ConstraintLayout) view, textView, textView2, editText, textView3, textView4, textView5);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogTeachAddGroupWhiteBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogTeachAddGroupWhiteBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_teach_add_group_white, viewGroup, false);
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
