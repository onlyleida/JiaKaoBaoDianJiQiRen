package cn.mucang.android.jiakaoyi.k3collect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Spinner;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3collect.R;

/* JADX INFO: loaded from: classes3.dex */
public final class DialogK3CollectMoveLineBinding implements a {
    public final Button cancel;
    public final EditText etMoveLength;
    private final LinearLayout rootView;
    public final Button save;
    public final Spinner spinner;

    private DialogK3CollectMoveLineBinding(LinearLayout linearLayout, Button button, EditText editText, Button button2, Spinner spinner) {
        this.rootView = linearLayout;
        this.cancel = button;
        this.etMoveLength = editText;
        this.save = button2;
        this.spinner = spinner;
    }

    public static DialogK3CollectMoveLineBinding bind(View view) {
        int i = R.id.cancel;
        Button button = (Button) view.findViewById(i);
        if (button != null) {
            i = R.id.etMoveLength;
            EditText editText = (EditText) view.findViewById(i);
            if (editText != null) {
                i = R.id.save;
                Button button2 = (Button) view.findViewById(i);
                if (button2 != null) {
                    i = R.id.spinner;
                    Spinner spinner = (Spinner) view.findViewById(i);
                    if (spinner != null) {
                        return new DialogK3CollectMoveLineBinding((LinearLayout) view, button, editText, button2, spinner);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogK3CollectMoveLineBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogK3CollectMoveLineBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_k3_collect_move_line, viewGroup, false);
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
