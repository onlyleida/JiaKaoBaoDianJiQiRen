package cn.mucang.sundial.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.sundial.library.R;

/* JADX INFO: loaded from: classes5.dex */
public final class TtActivityInputIdCardBinding implements a {
    public final EditText idCardNum;
    public final RecyclerView inputKeys;
    public final TextView login;
    private final LinearLayout rootView;

    private TtActivityInputIdCardBinding(LinearLayout linearLayout, EditText editText, RecyclerView recyclerView, TextView textView) {
        this.rootView = linearLayout;
        this.idCardNum = editText;
        this.inputKeys = recyclerView;
        this.login = textView;
    }

    public static TtActivityInputIdCardBinding bind(View view) {
        String str;
        EditText editText = (EditText) view.findViewById(R.id.id_card_num);
        if (editText != null) {
            RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.input_keys);
            if (recyclerView != null) {
                TextView textView = (TextView) view.findViewById(R.id.login);
                if (textView != null) {
                    return new TtActivityInputIdCardBinding((LinearLayout) view, editText, recyclerView, textView);
                }
                str = "login";
            } else {
                str = "inputKeys";
            }
        } else {
            str = "idCardNum";
        }
        throw new NullPointerException("Missing required view with ID: ".concat(str));
    }

    public static TtActivityInputIdCardBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TtActivityInputIdCardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.tt__activity_input_id_card, viewGroup, false);
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
