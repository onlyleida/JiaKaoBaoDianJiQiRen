package cn.mucang.sundial.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.sundial.library.R;

/* JADX INFO: loaded from: classes5.dex */
public final class TtActivityRegisterBinding implements a {
    public final TextView cancel;
    public final RecyclerView listView;
    public final TextView register;
    private final LinearLayout rootView;

    private TtActivityRegisterBinding(LinearLayout linearLayout, TextView textView, RecyclerView recyclerView, TextView textView2) {
        this.rootView = linearLayout;
        this.cancel = textView;
        this.listView = recyclerView;
        this.register = textView2;
    }

    public static TtActivityRegisterBinding bind(View view) {
        String str;
        TextView textView = (TextView) view.findViewById(R.id.cancel);
        if (textView != null) {
            RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.list_view);
            if (recyclerView != null) {
                TextView textView2 = (TextView) view.findViewById(R.id.register);
                if (textView2 != null) {
                    return new TtActivityRegisterBinding((LinearLayout) view, textView, recyclerView, textView2);
                }
                str = "register";
            } else {
                str = "listView";
            }
        } else {
            str = "cancel";
        }
        throw new NullPointerException("Missing required view with ID: ".concat(str));
    }

    public static TtActivityRegisterBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TtActivityRegisterBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.tt__activity_register, viewGroup, false);
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
