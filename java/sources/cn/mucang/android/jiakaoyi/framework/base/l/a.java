package cn.mucang.android.jiakaoyi.framework.base.l;

import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import cn.mucang.android.jiakaoyi.framework.R;
import cn.mucang.android.jiakaoyi.framework.utils.q0;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Toast f3423a;
    private static Handler b = new Handler();
    private static Runnable c = new RunnableC0105a();

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.base.l.a$a, reason: collision with other inner class name */
    static class RunnableC0105a implements Runnable {
        RunnableC0105a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.f3423a != null) {
                a.f3423a.cancel();
            }
        }
    }

    public static int b(String str) {
        if (TextUtils.isEmpty(str)) {
            return 3000;
        }
        double length = (((double) str.length()) * 60000.0d) / 400.0d;
        if (length < 3000.0d) {
            return 3000;
        }
        return (int) length;
    }

    private static View c(String str, int i) {
        View viewInflate = ((LayoutInflater) q0.a().getSystemService("layout_inflater")).inflate(R.layout.view_custom_toast, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(R.id.txt_msg)).setText(str);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.iv_icon);
        if (i > 0) {
            imageView.setImageResource(i);
            imageView.setVisibility(0);
        } else {
            imageView.setVisibility(8);
        }
        return viewInflate;
    }

    public static void d(String str, int i) {
        Toast toast = f3423a;
        if (toast != null) {
            toast.cancel();
        }
        Toast toast2 = new Toast(q0.a());
        f3423a = toast2;
        toast2.setGravity(17, 0, 0);
        f3423a.setView(c(str, i));
        f3423a.setDuration(1);
        b.removeCallbacks(c);
        b.postDelayed(c, b(str));
        f3423a.show();
    }
}
