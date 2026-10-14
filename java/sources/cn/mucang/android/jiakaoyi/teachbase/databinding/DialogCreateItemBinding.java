package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class DialogCreateItemBinding implements a {
    public final EditText input;
    public final TextView makeSure;
    public final EditText name;
    private final LinearLayout rootView;
    public final TextView title;

    private DialogCreateItemBinding(LinearLayout linearLayout, EditText editText, TextView textView, EditText editText2, TextView textView2) {
        this.rootView = linearLayout;
        this.input = editText;
        this.makeSure = textView;
        this.name = editText2;
        this.title = textView2;
    }

    public static DialogCreateItemBinding bind(View view) {
        int i = R.id.input;
        EditText editText = (EditText) view.findViewById(i);
        if (editText != null) {
            i = R.id.make_sure;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.name;
                EditText editText2 = (EditText) view.findViewById(i);
                if (editText2 != null) {
                    i = R.id.title;
                    TextView textView2 = (TextView) view.findViewById(i);
                    if (textView2 != null) {
                        return new DialogCreateItemBinding((LinearLayout) view, editText, textView, editText2, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogCreateItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogCreateItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog__create_item, viewGroup, false);
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
