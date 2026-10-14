package cn.mucang.android.core.utils;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import cn.mucang.android.framework.core.R;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class v0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static long f2677a;
    private static int b;
    private static final Map<String, StringBuilder> c = new HashMap();

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ EditText f2678a;
        final /* synthetic */ Dialog b;

        a(EditText editText, Dialog dialog) {
            this.f2678a = editText;
            this.b = dialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String string = this.f2678a.getText().toString();
            if (n0.e(string)) {
                u.h("请输入code");
                return;
            }
            f.a.a.a.c.d();
            f.a.a.a.activity.h.e("http://egg.nav.mucang.cn/open?code=" + string);
            k.b(this.b);
        }
    }

    public static Map<String, StringBuilder> a() {
        return c;
    }

    public static void b(Context context) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - f2677a > 500) {
            b = 0;
        }
        int i = b + 1;
        b = i;
        f2677a = jCurrentTimeMillis;
        if (i >= 10) {
            c(context);
        }
    }

    private static void c(Context context) {
        Dialog dialog = new Dialog(context, R.style.core__dialog);
        dialog.setCanceledOnTouchOutside(false);
        View viewInflate = View.inflate(context, R.layout.core__your_utils_dialog, null);
        ((Button) viewInflate.findViewById(R.id.btn_ok)).setOnClickListener(new a((EditText) viewInflate.findViewById(R.id.password), dialog));
        dialog.setContentView(viewInflate, new ViewGroup.LayoutParams(-1, -2));
        dialog.show();
    }
}
