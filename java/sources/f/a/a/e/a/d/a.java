package f.a.a.e.a.d;

import android.view.View;
import android.widget.TextView;
import cn.mucang.android.core.utils.c0;
import cn.mucang.android.framework.core.R;
import com.google.android.material.snackbar.Snackbar;

/* JADX INFO: loaded from: classes4.dex */
public class a {
    public static Snackbar a(View view, CharSequence charSequence) {
        return b(view, charSequence, 0);
    }

    private static Snackbar b(View view, CharSequence charSequence, int i) {
        Snackbar snackbarMake = Snackbar.make(view, charSequence, i);
        snackbarMake.getView().setBackgroundResource(R.color.ui_framework__snackbar_tip_bg_color);
        TextView textView = (TextView) snackbarMake.getView().findViewById(c0.b("snackbar_text"));
        TextView textView2 = (TextView) snackbarMake.getView().findViewById(c0.b("snackbar_action"));
        if (textView != null) {
            textView.setTextColor(c0.a().getColor(R.color.ui_framework__snackbar_tip_text_color));
        }
        if (textView2 != null) {
            textView2.setTextColor(c0.a().getColorStateList(R.color.ui_framework__snackbar_tip_action_selector));
        }
        return snackbarMake;
    }
}
