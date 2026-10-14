package com.tencent.bugly.crashreport.crash.jni;

import android.content.Context;
import android.text.TextUtils;
import com.tencent.bugly.crashreport.common.info.AppInfo;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.crashreport.crash.c;
import com.tencent.bugly.proguard.aa;
import com.tencent.bugly.proguard.ab;
import com.tencent.bugly.proguard.y;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class a implements NativeExceptionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f13800a;
    private final com.tencent.bugly.crashreport.crash.b b;
    private final com.tencent.bugly.crashreport.common.info.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.tencent.bugly.crashreport.common.strategy.a f13801d;

    public a(Context context, com.tencent.bugly.crashreport.common.info.a aVar, com.tencent.bugly.crashreport.crash.b bVar, com.tencent.bugly.crashreport.common.strategy.a aVar2) {
        this.f13800a = context;
        this.b = bVar;
        this.c = aVar;
        this.f13801d = aVar2;
    }

    private static Map<String, String> a(String[] strArr) {
        HashMap map = new HashMap(strArr == null ? 1 : strArr.length);
        if (strArr != null) {
            for (int i = 0; i < strArr.length; i++) {
                String str = strArr[i];
                if (str != null) {
                    y.a("Extra message[%d]: %s", Integer.valueOf(i), str);
                    String[] strArrSplit = str.split("=");
                    if (strArrSplit.length == 2) {
                        map.put(strArrSplit[0], strArrSplit[1]);
                    } else {
                        y.d("bad extraMsg %s", str);
                    }
                }
            }
        } else {
            y.c("not found extraMsg", new Object[0]);
        }
        return map;
    }

    @Override // com.tencent.bugly.crashreport.crash.jni.NativeExceptionHandler
    public final void handleNativeException(int i, int i2, long j, long j2, String str, String str2, String str3, String str4, int i3, String str5, int i4, int i5, int i6, String str6, String str7) {
        y.a("Native Crash Happen v1", new Object[0]);
        handleNativeException2(i, i2, j, j2, str, str2, str3, str4, i3, str5, i4, i5, i6, str6, str7, null);
    }

    /* JADX WARN: Code duplicated, block: B:45:0x0178 A[PHI: r4
      0x0178: PHI (r4v10 java.lang.String) = (r4v9 java.lang.String), (r4v14 java.lang.String) binds: [B:38:0x014e, B:42:0x015e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:76:0x022c  */
    /* JADX WARN: Code duplicated, block: B:82:? A[RETURN, SYNTHETIC] */
    @Override // com.tencent.bugly.crashreport.crash.jni.NativeExceptionHandler
    public final void handleNativeException2(int i, int i2, long j, long j2, String str, String str2, String str3, String str4, int i3, String str5, int i4, int i5, int i6, String str6, String str7, String[] strArr) {
        String str8;
        String string;
        boolean z;
        StringBuilder sb;
        String str9;
        y.a("Native Crash Happen v2", new Object[0]);
        if (i3 > 0) {
            try {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append("(");
                str8 = str5;
                sb2.append(str8);
                sb2.append(")");
                string = sb2.toString();
            } catch (Throwable th) {
                th = th;
                if (y.a(th)) {
                }
                th.printStackTrace();
            }
        } else {
            str8 = str5;
            string = str;
        }
        String strA = b.a(str3);
        Map<String, String> mapA = a(strArr);
        String str10 = mapA.get("HasPendingException");
        if (str10 == null || !str10.equals("true")) {
            z = false;
        } else {
            y.a("Native crash happened with a Java pending exception.", new Object[0]);
            z = true;
        }
        com.tencent.bugly.crashreport.common.info.a aVar = this.c;
        String str11 = mapA.get("ExceptionProcessName");
        if (str11 == null || str11.length() == 0) {
            str11 = aVar.f13691d;
        } else {
            y.c("Name of crash process: %s", str11);
        }
        String str12 = str11;
        String str13 = mapA.get("ExceptionThreadName");
        y.c("crash thread name:%s tid:%s", str13, Integer.valueOf(i2));
        if (TextUtils.isEmpty(str13)) {
            Thread threadCurrentThread = Thread.currentThread();
            sb = new StringBuilder();
            sb.append(threadCurrentThread.getName());
            sb.append("(");
            sb.append(i2);
            sb.append(")");
        } else {
            sb = new StringBuilder();
            sb.append(str13);
            sb.append("(");
            sb.append(i2);
            sb.append(")");
        }
        String string2 = sb.toString();
        long j3 = (j2 / 1000) + (j * 1000);
        String str14 = mapA.get("SysLogPath");
        String str15 = mapA.get("JniLogPath");
        if (!this.f13801d.b()) {
            y.d("no remote but still store!", new Object[0]);
        }
        if (!this.f13801d.c().f13699e && this.f13801d.b()) {
            y.e("crash report was closed by remote , will not upload to Bugly , print local for helpful!", new Object[0]);
            com.tencent.bugly.crashreport.crash.b.a("NATIVE_CRASH", ab.a(), str12, string2, string + "\n" + str2 + "\n" + strA, (CrashDetailBean) null);
            ab.b(str4);
            return;
        }
        String str16 = i3 > 0 ? "KERNEL" : str8;
        String strA2 = "UNKNOWN";
        if (i3 > 0) {
            str9 = strA2;
        } else {
            strA2 = i4 > 0 ? AppInfo.a(i4) : "UNKNOWN";
            if (strA2.equals(String.valueOf(i4))) {
                str9 = strA2;
            } else {
                str9 = strA2 + "(" + i4 + ")";
            }
        }
        String str17 = string;
        try {
            CrashDetailBean crashDetailBeanPackageCrashDatas = packageCrashDatas(str12, string2, j3, string, str2, strA, str16, str9, str4, str14, str15, str7, null, null, true, z);
            if (crashDetailBeanPackageCrashDatas == null) {
                y.e("pkg crash datas fail!", new Object[0]);
                return;
            }
            com.tencent.bugly.crashreport.crash.b.a("NATIVE_CRASH", ab.a(), str12, string2, str17 + "\n" + str2 + "\n" + strA, crashDetailBeanPackageCrashDatas);
            try {
                com.tencent.bugly.crashreport.crash.b bVar = this.b;
                if (bVar == null) {
                    y.d("crashHandler is null. Won't upload native crash.", new Object[0]);
                    return;
                }
                boolean z2 = !bVar.b(crashDetailBeanPackageCrashDatas);
                NativeCrashHandler nativeCrashHandler = NativeCrashHandler.getInstance();
                b.a(true, nativeCrashHandler != null ? nativeCrashHandler.getDumpFilePath() : null);
                if (z2) {
                    this.b.a(crashDetailBeanPackageCrashDatas, 3000L, true);
                }
                this.b.c(crashDetailBeanPackageCrashDatas);
                c.a().e();
            } catch (Throwable th2) {
                th = th2;
                if (y.a(th)) {
                    th.printStackTrace();
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // com.tencent.bugly.crashreport.crash.jni.NativeExceptionHandler
    public final CrashDetailBean packageCrashDatas(String str, String str2, long j, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, byte[] bArr, Map<String, String> map, boolean z, boolean z2) {
        int i;
        String str12;
        int iIndexOf;
        boolean zM = c.a().m();
        if (zM) {
            y.e("This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful!", new Object[0]);
        }
        CrashDetailBean crashDetailBean = new CrashDetailBean();
        crashDetailBean.b = 1;
        crashDetailBean.f13716e = this.c.k();
        com.tencent.bugly.crashreport.common.info.a aVar = this.c;
        crashDetailBean.f13717f = aVar.i;
        crashDetailBean.f13718g = aVar.u();
        crashDetailBean.m = this.c.g();
        crashDetailBean.n = str3;
        crashDetailBean.o = zM ? " This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful![Bugly]" : "";
        crashDetailBean.p = str4;
        String str13 = str5 != null ? str5 : "";
        crashDetailBean.q = str13;
        crashDetailBean.r = j;
        crashDetailBean.u = ab.a(str13.getBytes());
        crashDetailBean.A = str;
        crashDetailBean.B = str2;
        crashDetailBean.L = this.c.w();
        crashDetailBean.f13719h = this.c.t();
        crashDetailBean.i = this.c.F();
        crashDetailBean.v = str8;
        NativeCrashHandler nativeCrashHandler = NativeCrashHandler.getInstance();
        String dumpFilePath = nativeCrashHandler != null ? nativeCrashHandler.getDumpFilePath() : null;
        String strA = b.a(dumpFilePath, str8);
        if (!ab.a(strA)) {
            crashDetailBean.Y = strA;
        }
        crashDetailBean.Z = b.b(dumpFilePath);
        crashDetailBean.w = b.a(str9, c.f13758e, null, false);
        crashDetailBean.x = b.a(str10, c.f13758e, null, true);
        crashDetailBean.M = str7;
        crashDetailBean.N = str6;
        crashDetailBean.O = str11;
        crashDetailBean.F = this.c.o();
        crashDetailBean.G = this.c.n();
        crashDetailBean.H = this.c.p();
        crashDetailBean.I = com.tencent.bugly.crashreport.common.info.b.f();
        crashDetailBean.J = com.tencent.bugly.crashreport.common.info.b.g();
        crashDetailBean.K = com.tencent.bugly.crashreport.common.info.b.h();
        if (z) {
            crashDetailBean.C = com.tencent.bugly.crashreport.common.info.b.j();
            crashDetailBean.D = com.tencent.bugly.crashreport.common.info.b.e();
            crashDetailBean.E = com.tencent.bugly.crashreport.common.info.b.l();
            if (crashDetailBean.w == null) {
                crashDetailBean.w = ab.a(c.f13758e, (String) null);
            }
            crashDetailBean.y = aa.a();
            com.tencent.bugly.crashreport.common.info.a aVar2 = this.c;
            crashDetailBean.P = aVar2.f13690a;
            crashDetailBean.Q = aVar2.a();
            crashDetailBean.z = ab.a(this.c.h(), c.f13759f, false);
            int iIndexOf2 = crashDetailBean.q.indexOf("java:\n");
            if (iIndexOf2 > 0 && (i = iIndexOf2 + 6) < crashDetailBean.q.length()) {
                String str14 = crashDetailBean.q;
                String strSubstring = str14.substring(i, str14.length() - 1);
                if (strSubstring.length() > 0 && crashDetailBean.z.containsKey(crashDetailBean.B) && (iIndexOf = (str12 = crashDetailBean.z.get(crashDetailBean.B)).indexOf(strSubstring)) > 0) {
                    String strSubstring2 = str12.substring(iIndexOf);
                    crashDetailBean.z.put(crashDetailBean.B, strSubstring2);
                    crashDetailBean.q = crashDetailBean.q.substring(0, i);
                    crashDetailBean.q += strSubstring2;
                }
            }
            if (str == null) {
                crashDetailBean.A = this.c.f13691d;
            }
            this.b.d(crashDetailBean);
            crashDetailBean.T = this.c.D();
            crashDetailBean.U = this.c.E();
            crashDetailBean.V = this.c.x();
            crashDetailBean.W = this.c.C();
        } else {
            crashDetailBean.C = -1L;
            crashDetailBean.D = -1L;
            crashDetailBean.E = -1L;
            if (crashDetailBean.w == null) {
                crashDetailBean.w = "This crash occurred at last process! Log is miss, when get an terrible ABRT Native Exception etc.";
            }
            crashDetailBean.P = -1L;
            crashDetailBean.T = -1;
            crashDetailBean.U = -1;
            crashDetailBean.V = map;
            crashDetailBean.W = this.c.C();
            crashDetailBean.z = null;
            if (str == null) {
                crashDetailBean.A = "unknown(record)";
            }
            if (bArr != null) {
                crashDetailBean.y = bArr;
            }
        }
        return crashDetailBean;
    }
}
