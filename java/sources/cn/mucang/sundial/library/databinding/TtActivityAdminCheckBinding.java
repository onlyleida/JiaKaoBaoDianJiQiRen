package cn.mucang.sundial.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.sundial.library.R;

/* JADX INFO: loaded from: classes5.dex */
public final class TtActivityAdminCheckBinding implements a {
    public final TextView back;
    public final TextView checkPassword;
    public final EditText password;
    private final FrameLayout rootView;
    public final TextView title;

    private TtActivityAdminCheckBinding(FrameLayout frameLayout, TextView textView, TextView textView2, EditText editText, TextView textView3) {
        this.rootView = frameLayout;
        this.back = textView;
        this.checkPassword = textView2;
        this.password = editText;
        this.title = textView3;
    }

    public static TtActivityAdminCheckBinding bind(View view) {
        String str;
        TextView textView = (TextView) view.findViewById(R.id.back);
        if (textView != null) {
            TextView textView2 = (TextView) view.findViewById(R.id.check_password);
            if (textView2 != null) {
                EditText editText = (EditText) view.findViewById(R.id.password);
                if (editText != null) {
                    TextView textView3 = (TextView) view.findViewById(R.id.title);
                    if (textView3 != null) {
                        return new TtActivityAdminCheckBinding((FrameLayout) view, textView, textView2, editText, textView3);
                    }
                    str = "title";
                } else {
                    str = "password";
                }
            } else {
                str = "checkPassword";
            }
        } else {
            str = "back";
        }
        throw new NullPointerException("Missing required view with ID: ".concat(str));
    }

    public static TtActivityAdminCheckBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TtActivityAdminCheckBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.tt__activity_admin_check, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public FrameLayout getRoot() {
        return this.rootView;
    }
}
