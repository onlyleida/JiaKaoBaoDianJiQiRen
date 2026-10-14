package com.serenegiant.utils;

import android.annotation.SuppressLint;
import android.os.SystemClock;

/* JADX INFO: loaded from: classes6.dex */
public class Time {
    public static boolean prohibitElapsedRealtimeNanos = true;
    private static Time sTime;

    @SuppressLint({"NewApi"})
    private static class TimeJellyBeanMr1 extends Time {
        private TimeJellyBeanMr1() {
            super();
        }

        @Override // com.serenegiant.utils.Time
        public long timeNs() {
            return SystemClock.elapsedRealtimeNanos();
        }
    }

    static {
        reset();
    }

    public static long nanoTime() {
        return sTime.timeNs();
    }

    public static void reset() {
        if (prohibitElapsedRealtimeNanos || !BuildCheck.isJellyBeanMr1()) {
            sTime = new Time();
        } else {
            sTime = new TimeJellyBeanMr1();
        }
    }

    protected long timeNs() {
        return System.nanoTime();
    }

    private Time() {
    }
}
