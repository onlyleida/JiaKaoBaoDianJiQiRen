package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class TeachCollectVItem1argsBinding implements a {
    public final TextView desc;
    public final EditText input;
    public final TextView inputDesc;
    private final LinearLayout rootView;

    private TeachCollectVItem1argsBinding(LinearLayout linearLayout, TextView textView, EditText editText, TextView textView2) {
        this.rootView = linearLayout;
        this.desc = textView;
        this.input = editText;
        this.inputDesc = textView2;
    }

    public static TeachCollectVItem1argsBinding bind(View view) {
        int i = R.id.desc;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.input;
            EditText editText = (EditText) view.findViewById(i);
            if (editText != null) {
                i = R.id.inputDesc;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    return new TeachCollectVItem1argsBinding((LinearLayout) view, textView, editText, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static TeachCollectVItem1argsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TeachCollectVItem1argsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.teach_collect_v_item_1args, viewGroup, false);
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
