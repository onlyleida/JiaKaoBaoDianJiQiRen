package com.nirvana.tools.requestqueue;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes6.dex */
class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile a f13630a;
    private MessageDigest b;

    private a() {
        this.b = null;
        try {
            this.b = MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
        }
    }

    public static a a() {
        if (f13630a == null) {
            synchronized (a.class) {
                if (f13630a == null) {
                    f13630a = new a();
                }
            }
        }
        return f13630a;
    }

    public final synchronized String a(String str) {
        MessageDigest messageDigest = this.b;
        if (messageDigest == null) {
            return str;
        }
        try {
            messageDigest.update(str.getBytes("UTF-8"));
            return new String(this.b.digest());
        } catch (Exception unused) {
            return str;
        }
    }
}
