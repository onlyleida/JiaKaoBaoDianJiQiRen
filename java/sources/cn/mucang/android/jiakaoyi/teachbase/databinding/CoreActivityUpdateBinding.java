package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class CoreActivityUpdateBinding implements a {
    public final Button btnCancel;
    public final Button btnOk;
    public final TextView message;
    private final LinearLayout rootView;
    public final TextView title;

    private CoreActivityUpdateBinding(LinearLayout linearLayout, Button button, Button button2, TextView textView, TextView textView2) {
        this.rootView = linearLayout;
        this.btnCancel = button;
        this.btnOk = button2;
        this.message = textView;
        this.title = textView2;
    }

    public static CoreActivityUpdateBinding bind(View view) {
        int i = R.id.btn_cancel;
        Button button = (Button) view.findViewById(i);
        if (button != null) {
            i = R.id.btn_ok;
            Button button2 = (Button) view.findViewById(i);
            if (button2 != null) {
                i = R.id.message;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    i = R.id.title;
                    TextView textView2 = (TextView) view.findViewById(i);
                    if (textView2 != null) {
                        return new CoreActivityUpdateBinding((LinearLayout) view, button, button2, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static CoreActivityUpdateBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static CoreActivityUpdateBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.core__activity_update, viewGroup, false);
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
