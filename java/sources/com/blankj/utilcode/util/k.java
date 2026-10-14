package com.blankj.utilcode.util;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.app.l;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.mobile.auth.BuildConfig;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes5.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static c f11617a = null;
    private static int b = -1;
    private static int c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f11618d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f11619e = -16777217;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f11620f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f11621g = -16777217;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static int f11622h = -1;

    static class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CharSequence f11623a;
        final /* synthetic */ int b;

        a(CharSequence charSequence, int i) {
            this.f11623a = charSequence;
            this.b = i;
        }

        @Override // java.lang.Runnable
        @SuppressLint({"ShowToast"})
        public void run() {
            k.i();
            c unused = k.f11617a = e.b(Utils.d(), this.f11623a, this.b);
            View view = k.f11617a.getView();
            if (view == null) {
                return;
            }
            TextView textView = (TextView) view.findViewById(R.id.message);
            if (k.f11621g != -16777217) {
                textView.setTextColor(k.f11621g);
            }
            if (k.f11622h != -1) {
                textView.setTextSize(k.f11622h);
            }
            if (k.b != -1 || k.c != -1 || k.f11618d != -1) {
                k.f11617a.a(k.b, k.c, k.f11618d);
            }
            k.j(textView);
            k.f11617a.show();
        }
    }

    static abstract class b implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Toast f11624a;

        b(Toast toast) {
            this.f11624a = toast;
        }

        @Override // com.blankj.utilcode.util.k.c
        public void a(int i, int i2, int i3) {
            this.f11624a.setGravity(i, i2, i3);
        }

        @Override // com.blankj.utilcode.util.k.c
        public View getView() {
            return this.f11624a.getView();
        }
    }

    interface c {
        void a(int i, int i2, int i3);

        void cancel();

        View getView();

        void show();
    }

    static class d extends b {

        static class a extends Handler {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private Handler f11625a;

            a(Handler handler) {
                this.f11625a = handler;
            }

            @Override // android.os.Handler
            public void dispatchMessage(Message message) {
                try {
                    this.f11625a.dispatchMessage(message);
                } catch (Exception e2) {
                    Log.e("ToastUtils", e2.toString());
                }
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                this.f11625a.handleMessage(message);
            }
        }

        d(Toast toast) {
            super(toast);
            if (Build.VERSION.SDK_INT == 25) {
                try {
                    Field declaredField = Toast.class.getDeclaredField("mTN");
                    declaredField.setAccessible(true);
                    Object obj = declaredField.get(toast);
                    Field declaredField2 = declaredField.getType().getDeclaredField("mHandler");
                    declaredField2.setAccessible(true);
                    declaredField2.set(obj, new a((Handler) declaredField2.get(obj)));
                } catch (Exception unused) {
                }
            }
        }

        @Override // com.blankj.utilcode.util.k.c
        public void cancel() {
            this.f11624a.cancel();
        }

        @Override // com.blankj.utilcode.util.k.c
        public void show() {
            this.f11624a.show();
        }
    }

    static class e {
        private static Toast a(Context context, CharSequence charSequence, int i) {
            Toast toastMakeText = Toast.makeText(context, "", i);
            toastMakeText.setText(charSequence);
            return toastMakeText;
        }

        static c b(Context context, CharSequence charSequence, int i) {
            return l.d(context).a() ? new d(a(context, charSequence, i)) : new f(a(context, charSequence, i));
        }
    }

    static class f extends b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final Utils.b f11626e = new a();
        private View b;
        private WindowManager c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private WindowManager.LayoutParams f11627d;

        static class a implements Utils.b {
            a() {
            }

            @Override // com.blankj.utilcode.util.Utils.b
            public void onActivityDestroyed(Activity activity) {
                if (k.f11617a == null) {
                    return;
                }
                activity.getWindow().getDecorView().setVisibility(8);
                k.f11617a.cancel();
            }
        }

        class b implements Runnable {
            b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                f.this.c();
            }
        }

        class c implements Runnable {
            c() {
            }

            @Override // java.lang.Runnable
            public void run() {
                f.this.cancel();
            }
        }

        f(Toast toast) {
            super(toast);
            this.f11627d = new WindowManager.LayoutParams();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c() {
            Toast toast = this.f11624a;
            if (toast == null) {
                return;
            }
            View view = toast.getView();
            this.b = view;
            if (view == null) {
                return;
            }
            Context context = this.f11624a.getView().getContext();
            if (Build.VERSION.SDK_INT < 25) {
                this.c = (WindowManager) context.getSystemService("window");
                this.f11627d.type = 2005;
            } else {
                Context contextG = Utils.g();
                if (!(contextG instanceof Activity)) {
                    Log.e("ToastUtils", "Couldn't get top Activity.");
                    return;
                }
                Activity activity = (Activity) contextG;
                if (activity.isFinishing() || activity.isDestroyed()) {
                    Log.e("ToastUtils", activity + " is useless");
                    return;
                }
                this.c = activity.getWindowManager();
                this.f11627d.type = 99;
                Utils.c().a(activity, f11626e);
            }
            WindowManager.LayoutParams layoutParams = this.f11627d;
            layoutParams.height = -2;
            layoutParams.width = -2;
            layoutParams.format = -3;
            layoutParams.windowAnimations = R.style.Animation.Toast;
            layoutParams.setTitle("ToastWithoutNotification");
            WindowManager.LayoutParams layoutParams2 = this.f11627d;
            layoutParams2.flags = 152;
            layoutParams2.packageName = Utils.d().getPackageName();
            this.f11627d.gravity = this.f11624a.getGravity();
            WindowManager.LayoutParams layoutParams3 = this.f11627d;
            int i = layoutParams3.gravity;
            if ((i & 7) == 7) {
                layoutParams3.horizontalWeight = 1.0f;
            }
            if ((i & 112) == 112) {
                layoutParams3.verticalWeight = 1.0f;
            }
            layoutParams3.x = this.f11624a.getXOffset();
            this.f11627d.y = this.f11624a.getYOffset();
            this.f11627d.horizontalMargin = this.f11624a.getHorizontalMargin();
            this.f11627d.verticalMargin = this.f11624a.getVerticalMargin();
            try {
                WindowManager windowManager = this.c;
                if (windowManager != null) {
                    windowManager.addView(this.b, this.f11627d);
                }
            } catch (Exception unused) {
            }
            Utils.l(new c(), this.f11624a.getDuration() == 0 ? SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS : 3500L);
        }

        @Override // com.blankj.utilcode.util.k.c
        public void cancel() {
            try {
                WindowManager windowManager = this.c;
                if (windowManager != null) {
                    windowManager.removeViewImmediate(this.b);
                }
            } catch (Exception unused) {
            }
            this.b = null;
            this.c = null;
            this.f11624a = null;
        }

        @Override // com.blankj.utilcode.util.k.c
        public void show() {
            Utils.l(new b(), 300L);
        }
    }

    public static void i() {
        c cVar = f11617a;
        if (cVar != null) {
            cVar.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void j(TextView textView) {
        if (f11620f != -1) {
            f11617a.getView().setBackgroundResource(f11620f);
            textView.setBackgroundColor(0);
            return;
        }
        if (f11619e != -16777217) {
            View view = f11617a.getView();
            Drawable background = view.getBackground();
            Drawable background2 = textView.getBackground();
            if (background != null && background2 != null) {
                background.setColorFilter(new PorterDuffColorFilter(f11619e, PorterDuff.Mode.SRC_IN));
                textView.setBackgroundColor(0);
            } else if (background != null) {
                background.setColorFilter(new PorterDuffColorFilter(f11619e, PorterDuff.Mode.SRC_IN));
            } else if (background2 != null) {
                background2.setColorFilter(new PorterDuffColorFilter(f11619e, PorterDuff.Mode.SRC_IN));
            } else {
                view.setBackgroundColor(f11619e);
            }
        }
    }

    private static void k(CharSequence charSequence, int i) {
        Utils.k(new a(charSequence, i));
    }

    private static void l(String str, int i, Object... objArr) {
        String str2;
        String str3 = BuildConfig.COMMON_MODULE_COMMIT_ID;
        if (str != null && (str2 = String.format(str, objArr)) != null) {
            str3 = str2;
        }
        k(str3, i);
    }

    public static void m(String str, Object... objArr) {
        l(str, 0, objArr);
    }
}
