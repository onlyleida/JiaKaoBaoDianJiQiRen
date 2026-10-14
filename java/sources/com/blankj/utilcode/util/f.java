package com.blankj.utilcode.util;

import android.annotation.SuppressLint;
import android.content.SharedPreferences;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
@SuppressLint({"ApplySharedPref"})
public final class f {
    private static final Map<String, f> b = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SharedPreferences f11614a;

    private f(String str, int i) {
        this.f11614a = Utils.d().getSharedPreferences(str, i);
    }

    public static f b() {
        return d("", 0);
    }

    public static f c(String str) {
        return d(str, 0);
    }

    public static f d(String str, int i) {
        if (g(str)) {
            str = "spUtils";
        }
        Map<String, f> map = b;
        f fVar = map.get(str);
        if (fVar == null) {
            synchronized (f.class) {
                fVar = map.get(str);
                if (fVar == null) {
                    fVar = new f(str, i);
                    map.put(str, fVar);
                }
            }
        }
        return fVar;
    }

    private static boolean g(String str) {
        if (str == null) {
            return true;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isWhitespace(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public boolean a(String str, boolean z) {
        Objects.requireNonNull(str, "Argument 'key' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it");
        return this.f11614a.getBoolean(str, z);
    }

    public String e(String str) {
        Objects.requireNonNull(str, "Argument 'key' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it");
        return f(str, "");
    }

    public String f(String str, String str2) {
        Objects.requireNonNull(str, "Argument 'key' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it");
        return this.f11614a.getString(str, str2);
    }

    public void h(String str, String str2, boolean z) {
        Objects.requireNonNull(str, "Argument 'key' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it");
        if (z) {
            this.f11614a.edit().putString(str, str2).commit();
        } else {
            this.f11614a.edit().putString(str, str2).apply();
        }
    }

    public void i(String str, boolean z) {
        Objects.requireNonNull(str, "Argument 'key' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it");
        j(str, z, false);
    }

    public void j(String str, boolean z, boolean z2) {
        Objects.requireNonNull(str, "Argument 'key' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it");
        if (z2) {
            this.f11614a.edit().putBoolean(str, z).commit();
        } else {
            this.f11614a.edit().putBoolean(str, z).apply();
        }
    }
}
