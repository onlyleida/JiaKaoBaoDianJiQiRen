package cn.mucang.android.jiakaoyi.mapcollect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.mapcollect.R;

/* JADX INFO: loaded from: classes3.dex */
public final class HpmapWindshieldDialogBinding implements a {
    public final EditText input;
    public final TextView makeSure;
    private final LinearLayout rootView;
    public final TextView title;

    private HpmapWindshieldDialogBinding(LinearLayout linearLayout, EditText editText, TextView textView, TextView textView2) {
        this.rootView = linearLayout;
        this.input = editText;
        this.makeSure = textView;
        this.title = textView2;
    }

    public static HpmapWindshieldDialogBinding bind(View view) {
        int i = R.id.input;
        EditText editText = (EditText) view.findViewById(i);
        if (editText != null) {
            i = R.id.make_sure;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.title;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    return new HpmapWindshieldDialogBinding((LinearLayout) view, editText, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static HpmapWindshieldDialogBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static HpmapWindshieldDialogBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.hpmap__windshield_dialog, viewGroup, false);
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
