package com.mobile.auth.gatewayauth.utils;

import java.net.MalformedURLException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Pattern f13436a = Pattern.compile("^[-\\+]?[\\d]*$");

    public static String a(long j) {
        try {
            try {
                return new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss.SSS").format(new Date(j));
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                    return null;
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                    return null;
                }
            }
        } catch (Exception unused) {
            return String.valueOf(j);
        }
    }

    public static String a(String str) {
        try {
            try {
                return new URL(str).getHost();
            } catch (MalformedURLException e2) {
                e2.printStackTrace();
                return null;
            }
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }
}
