package com.amap.api.mapcore.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.provider.Settings;
import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class q5 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f11100d = n5.t("SU2hhcmVkUHJlZmVyZW5jZUFkaXU");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static q5 f11101e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<String> f11102a;
    private String b;
    private final Context c;

    class a extends Thread {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f11103a;
        final /* synthetic */ int b;

        a(String str, int i) {
            this.f11103a = str;
            this.b = i;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            int i = Build.VERSION.SDK_INT;
            String strJ = w5.j(this.f11103a);
            if (TextUtils.isEmpty(strJ)) {
                return;
            }
            if ((this.b & 1) > 0) {
                try {
                    if (i >= 23) {
                        Settings.System.putString(q5.this.c.getContentResolver(), q5.this.b, strJ);
                    } else {
                        Settings.System.putString(q5.this.c.getContentResolver(), q5.this.b, strJ);
                    }
                } catch (Exception unused) {
                }
            }
            if ((this.b & 16) > 0) {
                s5.b(q5.this.c, q5.this.b, strJ);
            }
            if ((this.b & 256) > 0) {
                SharedPreferences.Editor editorEdit = q5.this.c.getSharedPreferences(q5.f11100d, 0).edit();
                editorEdit.putString(q5.this.b, strJ);
                if (i >= 9) {
                    editorEdit.apply();
                } else {
                    editorEdit.commit();
                }
            }
        }
    }

    private q5(Context context) {
        this.c = context.getApplicationContext();
        if (Looper.myLooper() == null) {
            new b(Looper.getMainLooper(), this);
        } else {
            new b(this);
        }
    }

    public static q5 b(Context context) {
        if (f11101e == null) {
            synchronized (q5.class) {
                if (f11101e == null) {
                    f11101e = new q5(context);
                }
            }
        }
        return f11101e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void e(String str, int i) {
        int i2 = Build.VERSION.SDK_INT;
        synchronized (this) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                new a(str, i).start();
            } else {
                String strJ = w5.j(str);
                if (!TextUtils.isEmpty(strJ)) {
                    if ((i & 1) > 0) {
                        try {
                            if (i2 >= 23) {
                                Settings.System.putString(this.c.getContentResolver(), this.b, strJ);
                            } else {
                                Settings.System.putString(this.c.getContentResolver(), this.b, strJ);
                            }
                        } catch (Exception unused) {
                        }
                    }
                    if ((i & 16) > 0) {
                        s5.b(this.c, this.b, strJ);
                    }
                    if ((i & 256) > 0) {
                        SharedPreferences.Editor editorEdit = this.c.getSharedPreferences(f11100d, 0).edit();
                        editorEdit.putString(this.b, strJ);
                        if (i2 >= 9) {
                            editorEdit.apply();
                        } else {
                            editorEdit.commit();
                        }
                    }
                }
            }
        }
    }

    public void d(String str) {
        this.b = str;
    }

    public void g(String str) {
        List<String> list = this.f11102a;
        if (list != null) {
            list.clear();
            this.f11102a.add(str);
        }
        e(str, 273);
    }

    private static final class b extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WeakReference<q5> f11104a;

        b(q5 q5Var) {
            this.f11104a = new WeakReference<>(q5Var);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Object obj;
            q5 q5Var = this.f11104a.get();
            if (q5Var == null || message == null || (obj = message.obj) == null) {
                return;
            }
            q5Var.e((String) obj, message.what);
        }

        b(Looper looper, q5 q5Var) {
            super(looper);
            this.f11104a = new WeakReference<>(q5Var);
        }
    }
}
