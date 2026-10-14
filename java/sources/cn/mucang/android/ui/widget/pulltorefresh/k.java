package cn.mucang.android.ui.widget.pulltorefresh;

import android.annotation.TargetApi;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;

/* JADX INFO: loaded from: classes4.dex */
public class k {

    @TargetApi(16)
    static class a {
        public static void a(View view, Runnable runnable) {
            view.postOnAnimation(runnable);
        }

        public static void b(View view, Drawable drawable) {
            view.setBackground(drawable);
        }
    }

    public static void a(View view, Runnable runnable) {
        if (Build.VERSION.SDK_INT >= 16) {
            a.a(view, runnable);
        } else {
            view.postDelayed(runnable, 16L);
        }
    }

    public static void b(View view, Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 16) {
            a.b(view, drawable);
        } else {
            view.setBackgroundDrawable(drawable);
        }
    }
}
