package com.tencent.connect.auth;

import com.tencent.tauth.IUiListener;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static b f13983a = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final /* synthetic */ boolean f13984d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f13985e;
    public HashMap<String, a> b = new HashMap<>();
    public final String c = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public IUiListener f13986a;
        public com.tencent.connect.auth.a b;
        public String c;
    }

    public static b a() {
        if (f13983a == null) {
            f13983a = new b();
        }
        return f13983a;
    }

    public static int b() {
        int i = f13985e + 1;
        f13985e = i;
        return i;
    }

    public String c() {
        int iCeil = (int) Math.ceil((Math.random() * 20.0d) + 3.0d);
        char[] charArray = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".toCharArray();
        int length = charArray.length;
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < iCeil; i++) {
            stringBuffer.append(charArray[(int) (Math.random() * ((double) length))]);
        }
        return stringBuffer.toString();
    }

    public String a(a aVar) {
        int iB = b();
        try {
            this.b.put("" + iB, aVar);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return "" + iB;
    }
}
