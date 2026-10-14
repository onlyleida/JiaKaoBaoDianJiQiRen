package com.amap.api.mapcore.util;

import android.content.Context;
import android.text.TextUtils;
import com.amap.api.maps.model.LatLng;
import java.lang.ref.WeakReference;
import java.util.Hashtable;
import java.util.Iterator;
import org.apache.commons.math3.geometry.VectorFormat;

/* JADX INFO: loaded from: classes5.dex */
public class b3 {
    private static boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile b3 f10494d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Hashtable<String, String> f10495a = new Hashtable<>();
    private WeakReference<Context> b = null;

    private b3() {
    }

    public static b3 a() {
        if (f10494d == null) {
            synchronized (b3.class) {
                if (f10494d == null) {
                    f10494d = new b3();
                }
            }
        }
        return f10494d;
    }

    public static void b(int i) {
        if (c) {
            f(i < 1000);
        }
    }

    private void e(String str) {
        Hashtable<String, String> hashtable;
        if (str == null || (hashtable = this.f10495a) == null) {
            return;
        }
        synchronized (hashtable) {
            String strD = k5.d(str);
            Hashtable<String, String> hashtable2 = this.f10495a;
            if (hashtable2 != null && !hashtable2.contains(strD)) {
                this.f10495a.put(strD, str);
            }
            if (i()) {
                h();
            }
        }
    }

    public static void f(boolean z) {
        c = z;
    }

    public static void g() {
        if (f10494d != null) {
            if (f10494d.f10495a != null && f10494d.f10495a.size() > 0) {
                synchronized (f10494d.f10495a) {
                    f10494d.h();
                    if (f10494d.b != null) {
                        f10494d.b.clear();
                    }
                }
            }
            f10494d = null;
        }
        f(false);
    }

    private void h() {
        WeakReference<Context> weakReference;
        if (!c) {
            this.f10495a.clear();
            return;
        }
        if (this.f10495a != null) {
            StringBuffer stringBuffer = new StringBuffer();
            int i = 0;
            int size = this.f10495a.size();
            if (size > 0) {
                stringBuffer.append("[");
                Iterator<String> it = this.f10495a.values().iterator();
                while (it.hasNext()) {
                    i++;
                    stringBuffer.append(it.next());
                    if (i < size) {
                        stringBuffer.append(",");
                    }
                }
                stringBuffer.append("]");
                String string = stringBuffer.toString();
                if (!TextUtils.isEmpty(string) && (weakReference = this.b) != null && weakReference.get() != null) {
                    r7.a(string, this.b.get());
                }
            }
            this.f10495a.clear();
        }
    }

    private boolean i() {
        Hashtable<String, String> hashtable = this.f10495a;
        return hashtable != null && hashtable.size() > 20;
    }

    public void c(Context context) {
        if (context != null) {
            this.b = new WeakReference<>(context);
        }
    }

    public void d(LatLng latLng, String str, String str2) {
        if (!c) {
            this.f10495a.clear();
            return;
        }
        if (latLng == null || TextUtils.isEmpty(str)) {
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(VectorFormat.DEFAULT_PREFIX);
        stringBuffer.append("\"lon\":");
        stringBuffer.append(latLng.longitude);
        stringBuffer.append(",");
        stringBuffer.append("\"lat\":");
        stringBuffer.append(latLng.latitude);
        stringBuffer.append(",");
        stringBuffer.append("\"title\":");
        stringBuffer.append("\"");
        stringBuffer.append(str);
        stringBuffer.append("\"");
        stringBuffer.append(",");
        if (TextUtils.isEmpty(str2)) {
            str2 = "";
        }
        stringBuffer.append("\"snippet\":");
        stringBuffer.append("\"");
        stringBuffer.append(str2);
        stringBuffer.append("\"");
        stringBuffer.append(VectorFormat.DEFAULT_SUFFIX);
        e(stringBuffer.toString());
    }
}
