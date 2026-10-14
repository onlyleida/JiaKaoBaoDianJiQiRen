package com.iflytek.cloud.msc.util;

import android.content.Context;
import android.content.SharedPreferences;
import com.iflytek.cloud.msc.util.log.DebugLog;

/* JADX INFO: loaded from: classes4.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static b f12356a;
    private SharedPreferences b;
    private Context c;

    private b(Context context) {
        this.b = null;
        this.c = null;
        this.c = context;
        this.b = context.getSharedPreferences("com.iflytek.msc", 0);
    }

    public static b a(Context context) {
        if (f12356a == null && context != null) {
            b(context);
        }
        return f12356a;
    }

    private static synchronized b b(Context context) {
        if (f12356a == null) {
            f12356a = new b(context);
        }
        FileUtil.getUserPath(context);
        a.b(context);
        return f12356a;
    }

    public void a(String str) {
        try {
            this.b.edit().remove(str).commit();
        } catch (Exception e2) {
            DebugLog.LogE("remove data from preference has exception:" + e2.getMessage());
        }
    }

    public void b(String str, long j) {
        SharedPreferences.Editor editorEdit = this.b.edit();
        editorEdit.putLong(str, j);
        editorEdit.commit();
    }

    public long a(String str, long j) {
        return this.b.getLong(str, j);
    }

    public String a(String str, String str2) {
        return this.b.getString(str, str2);
    }

    public int a(String str, int i) {
        return this.b.getInt(str, i);
    }

    public void b(String str, String str2) {
        SharedPreferences.Editor editorEdit = this.b.edit();
        editorEdit.putString(str, str2);
        editorEdit.commit();
    }

    public void b(String str, int i) {
        SharedPreferences.Editor editorEdit = this.b.edit();
        editorEdit.putInt(str, i);
        editorEdit.commit();
    }
}
