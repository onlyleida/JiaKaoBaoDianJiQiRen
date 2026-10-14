package com.loc;

import android.text.TextUtils;
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

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Integer f12492f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Integer f12493g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Integer f12494h = null;
    public static final Integer i = null;
    public static final Integer j = null;
    private static String k = "ADgAJQBdABEAbgAJAHcAFQCMAEEAzQBFARIAIQEzADkBbAA9AakAoQJKASEDawAJA3QADQOBABFLWVc1a2NtOXBaQzV2Y3k1VFpYSjJhV05sVFdGdVlXZGxjZz09UVoyVjBVMlZ5ZG1salpRPT1JY0dodmJtVT1VYVhCb2IyNWxjM1ZpYVc1bWJ3PT1NWTI5dExtRnVaSEp2YVdRdWFXNTBaWEp1WVd3dWRHVnNaWEJvYjI1NUxrbFVaV3hsY0dodmJua2tVM1IxWWc9PVFZMjl0TG1GdVpISnZhV1F1YVc1MFpYSnVZV3d1ZEdWc1pYQm9iMjU1TGtsUWFHOXVaVk4xWWtsdVptOGtVM1IxWWc9PUdWRkpCVGxOQlExUkpUMDVmWjJWMFJHVjJhV05sU1dRPUVZMjl0TG1GdVpISnZhV1F1YVc1MFpYSnVZV3d1ZEdWc1pYQm9iMjU1TGtsVVpXeGxjR2h2Ym5rPUlZMjl0TG1GdVpISnZhV1F1YVc1MFpYSnVZV3d1ZEdWc1pYQm9iMjU1TGtsUWFHOXVaVk4xWWtsdVptOD1FSW10bGVTSTZJaVZ6SWl3aWNHeGhkR1p2Y20waU9pSmhibVJ5YjJsa0lpd2laR2wxSWpvaUpYTWlMQ0p3YTJjaU9pSWxjeUlzSW0xdlpHVnNJam9pSlhNaUxDSmhjSEJ1WVcxbElqb2lKWE1pTENKaGNIQjJaWEp6YVc5dUlqb2lKWE1pTENKemVYTjJaWEp6YVc5dUlqb2lKWE1pTEE9PUNJbXRsZVNJNklpVnpJaXdpY0d4aGRHWnZjbTBpT2lKaGJtUnliMmxrSWl3aVpHbDFJam9pSlhNaUxDSnRZV01pT2lJbGN5SXNJblJwWkNJNklpVnpJaXdpZFcxcFpIUWlPaUlsY3lJc0ltMWhiblZtWVdOMGRYSmxJam9pSlhNaUxDSmtaWFpwWTJVaU9pSWxjeUlzSW5OcGJTSTZJaVZ6SWl3aWNHdG5Jam9pSlhNaUxDSnRiMlJsYkNJNklpVnpJaXdpWVhCd2RtVnljMmx2YmlJNklpVnpJaXdpWVhCd2JtRnRaU0k2SWlWeklpd2liMkZwWkNJNklpVnpJaXdpWVdScGRTSTZJaVZ6SWl3aWIzTmZkbVZ5SWpvaUpYTWlJWVdsa1BRPT1NZkhObGNtbGhiRDA9UVlXNWtjbTlwWkY5cFpBPT0=";
    private static volatile ConcurrentHashMap<String, String> l;

    static {
        l = new ConcurrentHashMap(8);
        f12492f = 1;
        f12493g = 2;
        f12494h = 3;
        i = 4;
        j = 5;
    }

    public static String a(String r3) {
        String r0 = "";
        ConcurrentHashMap<String, String> r1 = l;     // Catch: Throwable -> L16
        monitor-enter(r1);     // Catch: Throwable -> L16
    L12:
        th = move-exception;
        throw th;     // Catch: Throwable -> L16
    L6:
        if (l != null) goto L8;
    L10:
        monitor-exit(r1);     // Catch: Throwable -> L12
        goto L15
    L8:
        if (l.containsKey(r3) == false) goto L10;
        r0 = l.get(r3);     // Catch: Throwable -> L12
    L15:
        return r0;
    }

    public static void a(String r3, String r4) {
        if (TextUtils.isEmpty(r3) == false) goto L5;
        return;
    L5:
        if (TextUtils.isEmpty(r4) == true) goto L26;
        ConcurrentHashMap<String, String> r0 = l;     // Catch: Throwable -> L21
        monitor-enter(r0);     // Catch: Throwable -> L21
    L17:
        th = move-exception;
        throw th;     // Catch: Throwable -> L21
        goto L27
    L10:
        if (l != null) goto L13;
        l = new ConcurrentHashMap(8);     // Catch: Throwable -> L17
    L13:
        if (l.containsKey(r3) == true) goto L15;
        l.put(r3, r4);     // Catch: Throwable -> L17
    L15:
        monitor-exit(r0);     // Catch: Throwable -> L17
        return;
        goto L27
    L26:
        return;
    }

    public static byte[] a(int r4) {
        if (c != null) goto L5;
        c = o.b(k);
    L5:
        byte[] r1 = new byte[4];
        System.arraycopy(c, r4 * 4, r1, 0, 4);
        int r5 = ((r1[0] & UnsignedBytes.MAX_VALUE) * 256) + (r1[1] & UnsignedBytes.MAX_VALUE);
        int r0 = ((r1[2] & 255) * 256) + (r1[3] & 255);
        byte[] r2 = new byte[r0];
        System.arraycopy(c, r5, r2, 0, r0);
        return r2;
    }
}
