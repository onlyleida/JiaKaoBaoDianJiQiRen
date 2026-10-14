package cn.mucang.jiakaoyi.uilib.debug;

import android.app.ActivityManager;
import android.os.Debug;
import android.os.Process;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import com.mobile.auth.gatewayauth.Constant;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.t;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u001bB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0010\u001a\u00020\u000eH\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0007J\b\u0010\u0013\u001a\u00020\u0014H\u0003J\u0006\u0010\u0015\u001a\u00020\u0016J\u0006\u0010\u0017\u001a\u00020\u0016J\u0006\u0010\u0018\u001a\u00020\u0019J\u0006\u0010\u001a\u001a\u00020\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;", "", "()V", "KEY_DEBUG_CPU", "", "_state", "Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils$State;", "ams", "Landroid/app/ActivityManager;", "memoryInfo", "Landroid/app/ActivityManager$MemoryInfo;", "window", "Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuWindow;", "convertToInt", "", "value", "defaultValue", "getCPURateDesc", "", "getRunningMemory", "", "hideWindow", "", "init", Constant.API_PARAMS_KEY_ENABLE, "", "showWindow", "State", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DebugCpuUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DebugCpuUtils f9207a = new DebugCpuUtils();
    private static final a b = new a();
    private static DebugCpuWindow c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static ActivityManager.MemoryInfo f9208d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static ActivityManager f9209e;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000e¨\u0006\u0012"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils$State;", "", "()V", "cpu", "", "getCpu", "()F", "setCpu", "(F)V", "limitMemory", "", "getLimitMemory", "()I", "setLimitMemory", "(I)V", "memory", "getMemory", "setMemory", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        public final void a(float f2) {
        }

        public final void b(int i) {
        }

        public final void c(int i) {
        }
    }

    private DebugCpuUtils() {
    }

    private final int e(Object obj, int i) {
        Integer numValueOf;
        if (obj == null) {
            return i;
        }
        String string = obj.toString();
        int length = string.length() - 1;
        int i2 = 0;
        boolean z = false;
        while (i2 <= length) {
            boolean z2 = r.g(string.charAt(!z ? i2 : length), 32) <= 0;
            if (z) {
                if (!z2) {
                    break;
                }
                length--;
            } else if (z2) {
                i2++;
            } else {
                z = true;
            }
        }
        if (r.a("", string.subSequence(i2, length + 1).toString())) {
            return i;
        }
        try {
            try {
                try {
                    numValueOf = Integer.valueOf(obj.toString());
                } catch (Exception unused) {
                    numValueOf = Integer.valueOf(obj.toString());
                }
            } catch (Exception unused2) {
                i = (int) Double.valueOf(obj.toString()).doubleValue();
                numValueOf = Integer.valueOf(i);
                r.d(numValueOf, "try {\n            Intege…}\n            }\n        }");
                return numValueOf.intValue();
            }
        } catch (Exception unused3) {
            numValueOf = Integer.valueOf(i);
        }
        r.d(numValueOf, "try {\n            Intege…}\n            }\n        }");
        return numValueOf.intValue();
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0039  */
    /* JADX WARN: Code duplicated, block: B:70:0x0100 A[LOOP:0: B:3:0x0017->B:70:0x0100, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:91:0x00ce A[EDGE_INSN: B:91:0x00ce->B:61:0x00ce BREAK  A[LOOP:0: B:3:0x0017->B:70:0x0100], SYNTHETIC] */
    public static final float f() throws Throwable {
        Throwable th;
        double d2;
        boolean z;
        int i;
        int i2 = 2;
        long[] jArr = new long[2];
        long[] jArr2 = new long[2];
        Pattern patternCompile = Pattern.compile(" [0-9]+");
        r.d(patternCompile, "compile(\" [0-9]+\")");
        BufferedReader bufferedReader = null;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int i5 = i3 + 1;
            jArr[i3] = 0;
            jArr2[i3] = 0;
            try {
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(new FileReader("/proc/stat"), 8192);
                    int i6 = 0;
                    while (true) {
                        try {
                            try {
                                String line = bufferedReader2.readLine();
                                if (line == null || (i3 != 0 && i6 >= i4)) {
                                    break;
                                }
                                if (line == null) {
                                    z = false;
                                } else {
                                    String lowerCase = line.toLowerCase();
                                    r.d(lowerCase, "(this as java.lang.String).toLowerCase()");
                                    if (lowerCase != null && t.B(lowerCase, "cpu", false, i2, null)) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                }
                                if (z) {
                                    i = i6 + 1;
                                    Matcher matcher = patternCompile.matcher(line);
                                    r.d(matcher, "pattern.matcher(str)");
                                    int i7 = 0;
                                    while (matcher.find()) {
                                        try {
                                            String strGroup = matcher.group(0);
                                            r.d(strGroup, "matcher.group(0)");
                                            long j = Long.parseLong(StringsKt__StringsKt.J0(strGroup).toString());
                                            jArr[i3] = jArr[i3] + j;
                                            if (i7 == 3) {
                                                jArr2[i3] = jArr2[i3] + j;
                                            }
                                            i7++;
                                        } catch (NumberFormatException e2) {
                                            e2.printStackTrace();
                                        }
                                    }
                                } else {
                                    i = i6;
                                }
                                if (i3 == 0) {
                                    try {
                                        try {
                                            Thread.sleep(50L);
                                        } catch (IOException e3) {
                                            e = e3;
                                            i4 = i;
                                            bufferedReader = bufferedReader2;
                                            e.printStackTrace();
                                            if (bufferedReader != null) {
                                                try {
                                                    bufferedReader.close();
                                                } catch (IOException e4) {
                                                    e4.printStackTrace();
                                                }
                                            }
                                            if (i5 > 1) {
                                                break;
                                                d2 = -1.0d;
                                                if (jArr[0] > 0) {
                                                    d2 = (((jArr[1] - jArr2[1]) - (jArr[0] - jArr2[0])) * 1.0d) / (jArr[1] - jArr[0]);
                                                }
                                                return (float) d2;
                                            }
                                            i3 = i5;
                                            i2 = 2;
                                        }
                                    } catch (InterruptedException e5) {
                                        e5.printStackTrace();
                                    }
                                    i6 = i;
                                    i4 = i6;
                                } else {
                                    i6 = i;
                                }
                                i2 = 2;
                            } catch (IOException e6) {
                                e = e6;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedReader = bufferedReader2;
                            if (bufferedReader == null) {
                                throw th;
                            }
                            try {
                                bufferedReader.close();
                                throw th;
                            } catch (IOException e7) {
                                e7.printStackTrace();
                                throw th;
                            }
                        }
                    }
                    try {
                        bufferedReader2.close();
                    } catch (IOException e8) {
                        e8.printStackTrace();
                    }
                    bufferedReader = bufferedReader2;
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (IOException e9) {
                e = e9;
            }
            if (i5 > 1) {
                break;
            }
            i3 = i5;
            i2 = 2;
        }
        d2 = -1.0d;
        if (jArr[0] > 0 && jArr[1] > 0 && jArr[0] != jArr[1]) {
            d2 = (((jArr[1] - jArr2[1]) - (jArr[0] - jArr2[0])) * 1.0d) / (jArr[1] - jArr[0]);
        }
        return (float) d2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final double g() {
        try {
            ActivityManager activityManager = f9209e;
            Debug.MemoryInfo[] processMemoryInfo = activityManager == null ? null : activityManager.getProcessMemoryInfo(new int[]{Process.myPid()});
            if (processMemoryInfo == null) {
                return 0.0d;
            }
            if (!(true ^ (processMemoryInfo.length == 0))) {
                return 0.0d;
            }
            String memoryStat = processMemoryInfo[0].getMemoryStat("summary.java-heap");
            r.d(memoryStat, "memInfo[0].getMemoryStat(\"summary.java-heap\")");
            String memoryStat2 = processMemoryInfo[0].getMemoryStat("summary.native-heap");
            r.d(memoryStat2, "memInfo[0].getMemoryStat(\"summary.native-heap\")");
            String memoryStat3 = processMemoryInfo[0].getMemoryStat("summary.graphics");
            r.d(memoryStat3, "memInfo[0].getMemoryStat(\"summary.graphics\")");
            String memoryStat4 = processMemoryInfo[0].getMemoryStat("summary.stack");
            r.d(memoryStat4, "memInfo[0].getMemoryStat(\"summary.stack\")");
            String memoryStat5 = processMemoryInfo[0].getMemoryStat("summary.code");
            r.d(memoryStat5, "memInfo[0].getMemoryStat(\"summary.code\")");
            String memoryStat6 = processMemoryInfo[0].getMemoryStat("summary.system");
            r.d(memoryStat6, "memInfo[0].getMemoryStat(\"summary.system\")");
            int iE = e(memoryStat, 0) + e(memoryStat2, 0) + e(memoryStat3, 0) + e(memoryStat4, 0) + e(memoryStat5, 0) + e(memoryStat6, 0);
            if (iE >= 0) {
                return ((double) iE) / 1024.0d;
            }
            return 0.0d;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0.0d;
        }
    }

    public final void h() {
        DebugCpuWindow debugCpuWindow = c;
        if (debugCpuWindow == null) {
            return;
        }
        debugCpuWindow.a();
        throw null;
    }

    public final void i() {
        if (j() && f9209e == null) {
            if (f9208d == null) {
                Object systemService = MucangConfig.getContext().getSystemService("activity");
                f9209e = systemService instanceof ActivityManager ? (ActivityManager) systemService : null;
                f9208d = new ActivityManager.MemoryInfo();
            }
            kotlinx.coroutines.g.b(j0.a(w0.b()), null, null, new DebugCpuUtils$init$1(null), 3, null);
        }
    }

    public final boolean j() {
        return MucangConfig.v() || i0.b("__key_debug_cpu", false);
    }
}
