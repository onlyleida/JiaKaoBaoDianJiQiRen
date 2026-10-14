package com.amap.api.mapcore.util;

import java.util.Calendar;
import java.util.Date;

/* JADX INFO: loaded from: classes5.dex */
public final class c9 {
    private static long a(long j) {
        return j - c(j);
    }

    public static long b(long j, long j2) {
        try {
            return Math.abs(j - j2) > 31536000000L ? d(j, j2) : j;
        } catch (Throwable unused) {
            return j;
        }
    }

    private static long c(long j) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date(j));
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return calendar.getTimeInMillis();
    }

    private static long d(long j, long j2) {
        long jC = c(j2) + a(j);
        long jAbs = Math.abs(jC - j2);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date(jC));
        int i = calendar.get(11);
        if (i == 23 && jAbs >= 82800000) {
            jC -= 86400000;
        }
        return (i != 0 || jAbs < 82800000) ? jC : jC + 86400000;
    }
}
