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
public final class ItemCalibarBinding implements a {
    public final TextView confirm;
    public final EditText etValue;
    public final TextView head;
    private final ConstraintLayout rootView;
    public final TextView startTv;
    public final TextView stepName;
    public final TextView warningTv;

    private ItemCalibarBinding(ConstraintLayout constraintLayout, TextView textView, EditText editText, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = constraintLayout;
        this.confirm = textView;
        this.etValue = editText;
        this.head = textView2;
        this.startTv = textView3;
        this.stepName = textView4;
        this.warningTv = textView5;
    }

    public static ItemCalibarBinding bind(View view) {
        int i = R.id.confirm;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.etValue;
            EditText editText = (EditText) view.findViewById(i);
            if (editText != null) {
                i = R.id.head;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.startTv;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        i = R.id.stepName;
                        TextView textView4 = (TextView) view.findViewById(i);
                        if (textView4 != null) {
                            i = R.id.warningTv;
                            TextView textView5 = (TextView) view.findViewById(i);
                            if (textView5 != null) {
                                return new ItemCalibarBinding((ConstraintLayout) view, textView, editText, textView2, textView3, textView4, textView5);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ItemCalibarBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemCalibarBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_calibar, viewGroup, false);
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
