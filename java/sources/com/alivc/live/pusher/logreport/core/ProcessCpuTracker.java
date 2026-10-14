package com.alivc.live.pusher.logreport.core;

import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Serializable;
import java.lang.reflect.Method;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes5.dex */
public class ProcessCpuTracker implements Serializable {
    private static final int PROCESS_STAT_STIME = 3;
    private static final int PROCESS_STAT_UTIME = 2;
    private static final int PROC_COMBINE = 256;
    private static final int PROC_OUT_LONG = 8192;
    private static final int PROC_PARENS = 512;
    private static final int PROC_SPACE_TERM = 32;
    private long mBaseIdleTime;
    private long mBaseIoWaitTime;
    private long mBaseIrqTime;
    private long mBaseSoftIrqTime;
    private long mBaseSystemTime;
    private long mBaseUserTime;
    private String mPidStatFile;
    private long mProcessBaseSystemTime;
    private long mProcessBaseUserTime;
    private int mProcessRelSystemTime;
    private int mProcessRelUserTime;
    private long mProcessSystemTime;
    private long mProcessUserTime;
    private Method mReadProcFile;
    private int mRelIdleTime;
    private int mRelIoWaitTime;
    private int mRelIrqTime;
    private int mRelSoftIrqTime;
    private int mRelSystemTime;
    private int mRelUserTime;
    static final int[] PROCESS_STATS_FORMAT = {32, Videoio.CAP_PROP_XI_TRG_DELAY, 32, 32, 32, 32, 32, 32, 32, 8224, 32, 8224, 32, 8224, 8224, 32, 32, 32, 32, 8224, 32, 8224, 32};
    static final int[] SYSTEM_CPU_FORMAT = {288, 8224, 8224, 8224, 8224, 8224, 8224, 8224};
    private double mTotalSysPercent = 0.0d;
    private double mMyPidPercent = 0.0d;
    private final long[] mSysCpu = new long[7];
    private final long[] mStatsData = new long[6];

    public ProcessCpuTracker() {
        try {
            this.mPidStatFile = "/proc/" + Process.myPid() + "/stat";
            Method method = Process.class.getMethod("readProcFile", String.class, int[].class, String[].class, long[].class, float[].class);
            this.mReadProcFile = method;
            method.setAccessible(true);
        } catch (Exception unused) {
        }
    }

    private int getCPUIndex(String str) {
        if (!str.contains("CPU")) {
            return -1;
        }
        String[] strArrSplit = str.split("\\s+");
        for (int i = 0; i < strArrSplit.length; i++) {
            if (strArrSplit[i].contains("CPU")) {
                return i;
            }
        }
        return -1;
    }

    public float getCpuFromTopCmd() {
        int iMyPid = Process.myPid();
        Process processExec = null;
        try {
            processExec = Runtime.getRuntime().exec("top -n 1 -p " + iMyPid);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(processExec.getInputStream()));
            int i = -1;
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    if (processExec != null) {
                        break;
                    }
                    return BitmapDescriptorFactory.HUE_RED;
                }
                String strTrim = line.trim();
                if (!TextUtils.isEmpty(strTrim)) {
                    int cPUIndex = getCPUIndex(strTrim);
                    if (cPUIndex != -1) {
                        i = cPUIndex;
                    } else if (strTrim.startsWith(String.valueOf(iMyPid)) && i != -1) {
                        String[] strArrSplit = strTrim.split("\\s+");
                        if (strArrSplit.length > i) {
                            String strSubstring = strArrSplit[i];
                            if (strSubstring.endsWith("%")) {
                                strSubstring = strSubstring.substring(0, strSubstring.lastIndexOf("%"));
                            }
                            return Float.parseFloat(strSubstring) / Runtime.getRuntime().availableProcessors();
                        }
                    }
                }
            }
        } catch (IOException e2) {
            e2.printStackTrace();
            if (processExec == null) {
                return BitmapDescriptorFactory.HUE_RED;
            }
        } finally {
            if (processExec != null) {
                processExec.destroy();
            }
        }
        return BitmapDescriptorFactory.HUE_RED;
    }

    public double getMyPicCpuPercent() {
        return this.mMyPidPercent;
    }

    public double getTotalSysCpuPercent() {
        return this.mTotalSysPercent;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0075 A[Catch: Exception -> 0x014d, TryCatch #0 {Exception -> 0x014d, blocks: (B:9:0x0011, B:12:0x0036, B:14:0x0056, B:16:0x0066, B:18:0x006c, B:20:0x0079, B:22:0x0093, B:24:0x009b, B:26:0x00a1, B:28:0x00a9, B:30:0x00b1, B:32:0x00b9, B:34:0x00e6, B:36:0x010e, B:37:0x0110, B:39:0x0118, B:42:0x012c, B:41:0x011d, B:19:0x0075), top: B:47:0x0011 }] */
    public void updateCpuUsages(Context context) {
        long j;
        long j2;
        if (Build.VERSION.SDK_INT > 25) {
            this.mMyPidPercent = getCpuFromTopCmd();
            return;
        }
        Method method = this.mReadProcFile;
        if (method == null || this.mPidStatFile == null) {
            return;
        }
        try {
            if (((Boolean) method.invoke(null, "/proc/stat", SYSTEM_CPU_FORMAT, null, this.mSysCpu, null)).booleanValue() && ((Boolean) this.mReadProcFile.invoke(null, this.mPidStatFile, PROCESS_STATS_FORMAT, null, this.mStatsData, null)).booleanValue()) {
                long[] jArr = this.mStatsData;
                long j3 = jArr[2];
                this.mProcessUserTime = j3;
                long j4 = jArr[3];
                this.mProcessSystemTime = j4;
                long j5 = this.mProcessBaseUserTime;
                if (j3 >= j5) {
                    long j6 = this.mProcessBaseSystemTime;
                    if (j4 >= j6) {
                        this.mProcessRelUserTime = (int) (j3 - j5);
                        this.mProcessRelSystemTime = (int) (j4 - j6);
                    } else {
                        this.mProcessRelUserTime = 0;
                        this.mProcessRelSystemTime = 0;
                    }
                } else {
                    this.mProcessRelUserTime = 0;
                    this.mProcessRelSystemTime = 0;
                }
                long[] jArr2 = this.mSysCpu;
                long j7 = jArr2[0] + jArr2[1];
                long j8 = jArr2[2];
                long j9 = jArr2[3];
                long j10 = jArr2[4];
                long j11 = jArr2[5];
                long j12 = jArr2[6];
                long j13 = this.mBaseUserTime;
                if (j7 >= j13) {
                    j = j7;
                    long j14 = this.mBaseSystemTime;
                    if (j8 >= j14) {
                        long j15 = this.mBaseIoWaitTime;
                        if (j10 >= j15) {
                            long j16 = this.mBaseIrqTime;
                            if (j11 >= j16) {
                                long j17 = this.mBaseSoftIrqTime;
                                if (j12 >= j17) {
                                    long j18 = this.mBaseIdleTime;
                                    if (j9 >= j18) {
                                        int i = (int) (j - j13);
                                        this.mRelUserTime = i;
                                        int i2 = (int) (j8 - j14);
                                        this.mRelSystemTime = i2;
                                        int i3 = (int) (j10 - j15);
                                        this.mRelIoWaitTime = i3;
                                        j2 = j10;
                                        int i4 = (int) (j11 - j16);
                                        this.mRelIrqTime = i4;
                                        int i5 = (int) (j12 - j17);
                                        this.mRelSoftIrqTime = i5;
                                        int i6 = (int) (j9 - j18);
                                        this.mRelIdleTime = i6;
                                        long j19 = i + i2 + i3 + i4 + i5 + i6;
                                        if (j19 > 1) {
                                            this.mMyPidPercent = Math.abs((int) (((long) ((this.mProcessRelUserTime + this.mProcessRelSystemTime) * 100)) / j19));
                                            double dAbs = Math.abs((int) (((long) ((this.mRelUserTime + this.mRelSystemTime) * 100)) / j19));
                                            this.mTotalSysPercent = dAbs;
                                            if (dAbs > 100.0d) {
                                                this.mTotalSysPercent = 100.0d;
                                            }
                                            double d2 = this.mMyPidPercent;
                                            double d3 = this.mTotalSysPercent;
                                            if (d2 > d3) {
                                                this.mMyPidPercent = d3;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    this.mProcessBaseUserTime = this.mProcessUserTime;
                    this.mProcessBaseSystemTime = this.mProcessSystemTime;
                    this.mBaseUserTime = j;
                    this.mBaseSystemTime = j8;
                    this.mBaseIoWaitTime = j2;
                    this.mBaseIrqTime = j11;
                    this.mBaseSoftIrqTime = j12;
                    this.mBaseIdleTime = j9;
                }
                j = j7;
                j2 = j10;
                this.mRelUserTime = 0;
                this.mRelSystemTime = 0;
                this.mRelIoWaitTime = 0;
                this.mRelIrqTime = 0;
                this.mRelSoftIrqTime = 0;
                this.mRelIdleTime = 0;
                this.mProcessBaseUserTime = this.mProcessUserTime;
                this.mProcessBaseSystemTime = this.mProcessSystemTime;
                this.mBaseUserTime = j;
                this.mBaseSystemTime = j8;
                this.mBaseIoWaitTime = j2;
                this.mBaseIrqTime = j11;
                this.mBaseSoftIrqTime = j12;
                this.mBaseIdleTime = j9;
            }
        } catch (Exception unused) {
        }
    }
}
