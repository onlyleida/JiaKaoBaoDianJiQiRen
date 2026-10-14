package com.mobile.auth.k;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    private static Context f13505a;

    private static class b implements SharedPreferences.Editor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private SharedPreferences.Editor f13506a;

        @SuppressLint({"CommitPrefEdits"})
        private b() {
            this.f13506a = p.f13505a.getSharedPreferences("ssoconfigs", 0).edit();
        }

        @SuppressLint({"CommitPrefEdits"})
        private b(String str) {
            this.f13506a = p.f13505a.getSharedPreferences(str, 0).edit();
        }

        private String a(String str) {
            return h.a(str);
        }

        @Override // android.content.SharedPreferences.Editor
        public void apply() {
            this.f13506a.apply();
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor clear() {
            return this.f13506a.clear();
        }

        @Override // android.content.SharedPreferences.Editor
        public boolean commit() {
            return this.f13506a.commit();
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putBoolean(String str, boolean z) {
            return this.f13506a.putBoolean(a(str), z);
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putFloat(String str, float f2) {
            return this.f13506a.putFloat(a(str), f2);
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putInt(String str, int i) {
            return this.f13506a.putInt(a(str), i);
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putLong(String str, long j) {
            return this.f13506a.putLong(a(str), j);
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putString(String str, String str2) {
            return this.f13506a.putString(a(str), str2);
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putStringSet(String str, Set<String> set) {
            return this.f13506a.putStringSet(a(str), set);
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor remove(String str) {
            return this.f13506a.remove(a(str));
        }
    }

    public static int a(String str, int i) {
        return f13505a.getSharedPreferences("ssoconfigs", 0).getInt(h.a(str), i);
    }

    public static int a(String str, String str2, int i) {
        return f13505a.getSharedPreferences(str, 0).getInt(h.a(str2), i);
    }

    public static long a(String str, String str2, long j) {
        return f13505a.getSharedPreferences(str, 0).getLong(h.a(str2), j);
    }

    public static SharedPreferences.Editor a() {
        return new b();
    }

    public static String a(String str, String str2, String str3) {
        return f13505a.getSharedPreferences(str, 0).getString(h.a(str2), str3);
    }

    public static void a(Context context) {
        f13505a = context.getApplicationContext();
    }

    static void a(String str) {
        SharedPreferences sharedPreferences = f13505a.getSharedPreferences("ssoconfigs", 0);
        sharedPreferences.edit().remove(h.a(str)).apply();
    }

    public static void a(String str, long j) {
        SharedPreferences sharedPreferences = f13505a.getSharedPreferences("ssoconfigs", 0);
        sharedPreferences.edit().putLong(h.a(str), j).apply();
    }

    public static void a(String str, String str2) {
        SharedPreferences sharedPreferences = f13505a.getSharedPreferences("ssoconfigs", 0);
        sharedPreferences.edit().putString(h.a(str), str2).apply();
    }

    public static void a(String str, boolean z) {
        SharedPreferences sharedPreferences = f13505a.getSharedPreferences("ssoconfigs", 0);
        sharedPreferences.edit().putBoolean(h.a(str), z).apply();
    }

    public static long b(String str, long j) {
        return f13505a.getSharedPreferences("ssoconfigs", 0).getLong(h.a(str), j);
    }

    public static SharedPreferences.Editor b(String str) {
        return new b(str);
    }

    public static String b(String str, String str2) {
        return f13505a.getSharedPreferences("ssoconfigs", 0).getString(h.a(str), str2);
    }
}
