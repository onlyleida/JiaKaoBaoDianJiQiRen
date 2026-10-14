package com.loc;

import com.google.common.primitives.UnsignedBytes;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class af {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f12489a = "9aj&#k81";
    public static String b = "IaHR0cDovL2xvZ3MuYW1hcC5jb20vd3MvbG9nL3VwbG9hZD9wcm9kdWN0PSVzJnR5cGU9JXMmcGxhdGZvcm09JXMmY2hhbm5lbD0lcyZzaWduPSVz";
    static byte[] c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static boolean f12490d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static boolean f12491e = false;
    private static String k = "ADgAJQBdABEAbgAJAHcAFQCMAEEAzQBFARIAIQEzADkBbAA9AakAoQJKASEDawAJA3QADQOBABFLWVc1a2NtOXBaQzV2Y3k1VFpYSjJhV05sVFdGdVlXZGxjZz09UVoyVjBVMlZ5ZG1salpRPT1JY0dodmJtVT1VYVhCb2IyNWxjM1ZpYVc1bWJ3PT1NWTI5dExtRnVaSEp2YVdRdWFXNTBaWEp1WVd3dWRHVnNaWEJvYjI1NUxrbFVaV3hsY0dodmJua2tVM1IxWWc9PVFZMjl0TG1GdVpISnZhV1F1YVc1MFpYSnVZV3d1ZEdWc1pYQm9iMjU1TGtsUWFHOXVaVk4xWWtsdVptOGtVM1IxWWc9PUdWRkpCVGxOQlExUkpUMDVmWjJWMFJHVjJhV05sU1dRPUVZMjl0TG1GdVpISnZhV1F1YVc1MFpYSnVZV3d1ZEdWc1pYQm9iMjU1TGtsVVpXeGxjR2h2Ym5rPUlZMjl0TG1GdVpISnZhV1F1YVc1MFpYSnVZV3d1ZEdWc1pYQm9iMjU1TGtsUWFHOXVaVk4xWWtsdVptOD1FSW10bGVTSTZJaVZ6SWl3aWNHeGhkR1p2Y20waU9pSmhibVJ5YjJsa0lpd2laR2wxSWpvaUpYTWlMQ0p3YTJjaU9pSWxjeUlzSW0xdlpHVnNJam9pSlhNaUxDSmhjSEJ1WVcxbElqb2lKWE1pTENKaGNIQjJaWEp6YVc5dUlqb2lKWE1pTENKemVYTjJaWEp6YVc5dUlqb2lKWE1pTEE9PUNJbXRsZVNJNklpVnpJaXdpY0d4aGRHWnZjbTBpT2lKaGJtUnliMmxrSWl3aVpHbDFJam9pSlhNaUxDSnRZV01pT2lJbGN5SXNJblJwWkNJNklpVnpJaXdpZFcxcFpIUWlPaUlsY3lJc0ltMWhiblZtWVdOMGRYSmxJam9pSlhNaUxDSmtaWFpwWTJVaU9pSWxjeUlzSW5OcGJTSTZJaVZ6SWl3aWNHdG5Jam9pSlhNaUxDSnRiMlJsYkNJNklpVnpJaXdpWVhCd2RtVnljMmx2YmlJNklpVnpJaXdpWVhCd2JtRnRaU0k2SWlWeklpd2liMkZwWkNJNklpVnpJaXdpWVdScGRTSTZJaVZ6SWl3aWIzTmZkbVZ5SWpvaUpYTWlJWVdsa1BRPT1NZkhObGNtbGhiRDA9UVlXNWtjbTlwWkY5cFpBPT0=";
    private static volatile ConcurrentHashMap<String, String> l = new ConcurrentHashMap<>(8);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Integer f12492f = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Integer f12493g = 2;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Integer f12494h = 3;
    public static final Integer i = 4;
    public static final Integer j = 5;

    public static String a(String str) {
        String str2 = "";
        try {
            synchronized (l) {
                if (l != null && l.containsKey(str)) {
                    str2 = l.get(str);
                }
            }
        } catch (Throwable unused) {
        }
        return str2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(java.lang.String r3, java.lang.String r4) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Throwable -> L2f
            if (r0 != 0) goto L2f
            boolean r0 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Throwable -> L2f
            if (r0 == 0) goto Ld
            goto L2f
        Ld:
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.String> r0 = com.loc.af.l     // Catch: java.lang.Throwable -> L2f
            monitor-enter(r0)     // Catch: java.lang.Throwable -> L2f
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.String> r1 = com.loc.af.l     // Catch: java.lang.Throwable -> L2c
            if (r1 != 0) goto L1d
            java.util.concurrent.ConcurrentHashMap r1 = new java.util.concurrent.ConcurrentHashMap     // Catch: java.lang.Throwable -> L2c
            r2 = 8
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L2c
            com.loc.af.l = r1     // Catch: java.lang.Throwable -> L2c
        L1d:
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.String> r1 = com.loc.af.l     // Catch: java.lang.Throwable -> L2c
            boolean r1 = r1.containsKey(r3)     // Catch: java.lang.Throwable -> L2c
            if (r1 != 0) goto L2a
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.String> r1 = com.loc.af.l     // Catch: java.lang.Throwable -> L2c
            r1.put(r3, r4)     // Catch: java.lang.Throwable -> L2c
        L2a:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L2c
            return
        L2c:
            r3 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L2c
            throw r3     // Catch: java.lang.Throwable -> L2f
        L2f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.af.a(java.lang.String, java.lang.String):void");
    }

    public static byte[] a(int i2) {
        if (c == null) {
            c = o.b(k);
        }
        byte[] bArr = new byte[4];
        System.arraycopy(c, i2 * 4, bArr, 0, 4);
        int i3 = ((bArr[0] & UnsignedBytes.MAX_VALUE) * 256) + (bArr[1] & UnsignedBytes.MAX_VALUE);
        int i4 = ((bArr[2] & 255) * 256) + (bArr[3] & 255);
        byte[] bArr2 = new byte[i4];
        System.arraycopy(c, i3, bArr2, 0, i4);
        return bArr2;
    }
}
