package com.loc;

import android.content.ContentResolver;
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

/* JADX INFO: loaded from: classes4.dex */
public final class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f13055a = w.c("SU2hhcmVkUHJlZmVyZW5jZUFkaXU");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static y f13056f;
    private List<String> b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f13057d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Handler f13058e;

    private static final class a extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WeakReference<y> f13060a;

        a(Looper looper, y yVar) {
            super(looper);
            this.f13060a = new WeakReference<>(yVar);
        }

        a(y yVar) {
            this.f13060a = new WeakReference<>(yVar);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            Object obj;
            y yVar = this.f13060a.get();
            if (yVar == null || message == null || (obj = message.obj) == null) {
                return;
            }
            yVar.a((String) obj, message.what);
        }
    }

    private y(Context context) {
        this.f13057d = context.getApplicationContext();
        this.f13058e = Looper.myLooper() == null ? new a(Looper.getMainLooper(), this) : new a(this);
    }

    public static y a(Context context) {
        if (f13056f == null) {
            synchronized (y.class) {
                if (f13056f == null) {
                    f13056f = new y(context);
                }
            }
        }
        return f13056f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(final String str, final int i) {
        ContentResolver contentResolver;
        String str2;
        int i2 = Build.VERSION.SDK_INT;
        synchronized (this) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                new Thread() { // from class: com.loc.y.1
                    @Override // java.lang.Thread, java.lang.Runnable
                    public final void run() {
                        ContentResolver contentResolver2;
                        String str3;
                        int i3 = Build.VERSION.SDK_INT;
                        String strB = ae.b(str);
                        if (TextUtils.isEmpty(strB)) {
                            return;
                        }
                        if ((i & 1) > 0) {
                            try {
                                if (i3 >= 23) {
                                    contentResolver2 = y.this.f13057d.getContentResolver();
                                    str3 = y.this.c;
                                } else {
                                    contentResolver2 = y.this.f13057d.getContentResolver();
                                    str3 = y.this.c;
                                }
                                Settings.System.putString(contentResolver2, str3, strB);
                            } catch (Exception unused) {
                            }
                        }
                        if ((i & 16) > 0) {
                            aa.a(y.this.f13057d, y.this.c, strB);
                        }
                        if ((i & 256) > 0) {
                            SharedPreferences.Editor editorEdit = y.this.f13057d.getSharedPreferences(y.f13055a, 0).edit();
                            editorEdit.putString(y.this.c, strB);
                            if (i3 >= 9) {
                                editorEdit.apply();
                            } else {
                                editorEdit.commit();
                            }
                        }
                    }
                }.start();
                return;
            }
            String strB = ae.b(str);
            if (!TextUtils.isEmpty(strB)) {
                if ((i & 1) > 0) {
                    try {
                        if (i2 >= 23) {
                            contentResolver = this.f13057d.getContentResolver();
                            str2 = this.c;
                        } else {
                            contentResolver = this.f13057d.getContentResolver();
                            str2 = this.c;
                        }
                        Settings.System.putString(contentResolver, str2, strB);
                    } catch (Exception unused) {
                    }
                }
                if ((i & 16) > 0) {
                    aa.a(this.f13057d, this.c, strB);
                }
                if ((i & 256) > 0) {
                    SharedPreferences.Editor editorEdit = this.f13057d.getSharedPreferences(f13055a, 0).edit();
                    editorEdit.putString(this.c, strB);
                    if (i2 >= 9) {
                        editorEdit.apply();
                        return;
                    }
                    editorEdit.commit();
                }
            }
        }
    }

    public final void a(String str) {
        this.c = str;
    }

    public final void b(String str) {
        List<String> list = this.b;
        if (list != null) {
            list.clear();
            this.b.add(str);
        }
        a(str, 273);
    }
}
