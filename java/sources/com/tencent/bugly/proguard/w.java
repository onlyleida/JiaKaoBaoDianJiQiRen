package com.tencent.bugly.proguard;

import android.content.Context;
import android.os.Process;
import android.util.Pair;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.speech.UtilityConfig;
import com.tencent.mm.opensdk.constants.ConstantsAPI;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import org.apache.commons.math3.optimization.direct.CMAESOptimizer;

/* JADX INFO: loaded from: classes6.dex */
public final class w implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f13928a;
    private int b;
    private final Context c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f13929d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final byte[] f13930e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.tencent.bugly.crashreport.common.info.a f13931f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.tencent.bugly.crashreport.common.strategy.a f13932g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final s f13933h;
    private final v i;
    private final int j;
    private final u k;
    private final u l;
    private String m;
    private final String n;
    private final Map<String, String> o;
    private int p;
    private long q;
    private long r;
    private boolean s;

    public w(Context context, int i, int i2, byte[] bArr, String str, String str2, u uVar, boolean z, boolean z2) {
        this(context, i, i2, bArr, str, str2, uVar, 2, CMAESOptimizer.DEFAULT_MAXITERATIONS, z2, null);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0017  */
    /* JADX WARN: Code duplicated, block: B:12:0x001a  */
    private void a(ao aoVar, boolean z, int i, String str) {
        String strValueOf;
        int i2 = this.f13929d;
        if (i2 == 630) {
            strValueOf = "crash";
        } else if (i2 == 640) {
            strValueOf = "userinfo";
        } else if (i2 == 830) {
            strValueOf = "crash";
        } else if (i2 != 840) {
            strValueOf = String.valueOf(i2);
        } else {
            strValueOf = "userinfo";
        }
        if (z) {
            y.a("[Upload] Success: %s", strValueOf);
        } else {
            y.e("[Upload] Failed to upload(%d) %s: %s", Integer.valueOf(i), strValueOf, str);
        }
        if (this.q + this.r > 0) {
            this.i.a(this.i.a(this.s) + this.q + this.r, this.s);
        }
        u uVar = this.k;
        if (uVar != null) {
            uVar.a(z, str);
        }
        u uVar2 = this.l;
        if (uVar2 != null) {
            uVar2.a(z, str);
        }
    }

    public final void b(long j) {
        this.r += j;
    }

    /* JADX WARN: Code duplicated, block: B:69:0x01cf A[LOOP:0: B:37:0x00ce->B:69:0x01cf, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:79:0x01d3 A[SYNTHETIC] */
    @Override // java.lang.Runnable
    public final void run() {
        String str;
        com.tencent.bugly.crashreport.common.strategy.a aVar;
        Pair pair;
        boolean zBooleanValue;
        Boolean bool;
        Boolean bool2 = Boolean.FALSE;
        try {
            this.p = 0;
            this.q = 0L;
            this.r = 0L;
            if (com.tencent.bugly.crashreport.common.info.b.b(this.c) == null) {
                str = "network is not available";
            } else {
                byte[] bArr = this.f13930e;
                if (bArr == null || bArr.length == 0) {
                    str = "request package is empty!";
                } else if (this.c == null || this.f13931f == null || (aVar = this.f13932g) == null || this.f13933h == null) {
                    str = "illegal access error";
                } else {
                    str = aVar.c() == null ? "illegal local strategy" : null;
                }
            }
            if (str != null) {
                a(null, false, 0, str);
                return;
            }
            byte[] bArrA = ab.a(this.f13930e, 2);
            if (bArrA == null) {
                a(null, false, 0, "failed to zip request body");
                return;
            }
            HashMap map = new HashMap(10);
            map.put("tls", "1");
            map.put("prodId", this.f13931f.f());
            map.put("bundleId", this.f13931f.c);
            map.put("appVer", this.f13931f.i);
            Map<String, String> map2 = this.o;
            if (map2 != null) {
                map.putAll(map2);
            }
            map.put(SpeechConstant.ISV_CMD, Integer.toString(this.f13929d));
            map.put(ConstantsAPI.Token.WX_TOKEN_PLATFORMID_KEY, Byte.toString((byte) 1));
            map.put("sdkVer", this.f13931f.f13693f);
            map.put("strategylastUpdateTime", Long.toString(this.f13932g.c().n));
            this.i.a(this.j, System.currentTimeMillis());
            u uVar = this.k;
            u uVar2 = this.l;
            String strA = this.m;
            this.f13932g.c();
            int i = 0;
            int i2 = 0;
            while (true) {
                int i3 = i + 1;
                if (i >= this.f13928a) {
                    a(null, false, i2, "failed after many attempts");
                    return;
                }
                if (i3 > 1) {
                    y.d("[Upload] Failed to upload last time, wait and try(%d) again.", Integer.valueOf(i3));
                    ab.b(this.b);
                    if (i3 == this.f13928a) {
                        y.d("[Upload] Use the back-up url at the last time: %s", this.n);
                        strA = this.n;
                    }
                }
                y.c("[Upload] Send %d bytes", Integer.valueOf(bArrA.length));
                strA = a(strA);
                y.c("[Upload] Upload to %s with cmd %d (pid=%d | tid=%d).", strA, Integer.valueOf(this.f13929d), Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
                byte[] bArrA2 = this.f13933h.a(strA, bArrA, this, map);
                Map<String, String> map3 = this.f13933h.f13910a;
                Pair<Boolean, Boolean> pairA = a(bArrA2, map3);
                if (((Boolean) pairA.first).booleanValue()) {
                    Pair<Boolean, Boolean> pairA2 = a(map3);
                    if (((Boolean) pairA2.first).booleanValue()) {
                        byte[] bArrB = ab.b(bArrA2, 2);
                        if (bArrB != null) {
                            bArrA2 = bArrB;
                        }
                        ao aoVarB = a.b(bArrA2);
                        if (aoVarB == null) {
                            a(null, false, 1, "failed to decode response package");
                            pair = new Pair(bool2, bool2);
                        } else {
                            Object[] objArr = new Object[2];
                            objArr[0] = Integer.valueOf(aoVarB.b);
                            byte[] bArr2 = aoVarB.c;
                            objArr[1] = Integer.valueOf(bArr2 == null ? 0 : bArr2.length);
                            y.c("[Upload] Response cmd is: %d, length of sBuffer is: %d", objArr);
                            if (a(aoVarB, this.f13931f, this.f13932g)) {
                                a(aoVarB, true, 2, "successfully uploaded");
                                Boolean bool3 = Boolean.TRUE;
                                pair = new Pair(bool3, bool3);
                            } else {
                                a(aoVarB, false, 2, "failed to process response package");
                                pair = new Pair(bool2, bool2);
                            }
                        }
                        if (((Boolean) pair.first).booleanValue()) {
                            zBooleanValue = false;
                        } else {
                            bool = (Boolean) pair.second;
                        }
                        if (zBooleanValue) {
                            return;
                        }
                        i = i3;
                        i2 = 1;
                    } else {
                        bool = (Boolean) pairA2.second;
                    }
                } else {
                    bool = (Boolean) pairA.second;
                }
                zBooleanValue = bool.booleanValue();
                if (zBooleanValue) {
                    return;
                }
                i = i3;
                i2 = 1;
            }
        } catch (Throwable th) {
            if (y.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    public w(Context context, int i, int i2, byte[] bArr, String str, String str2, u uVar, int i3, int i4, boolean z, Map<String, String> map) {
        this.f13928a = 2;
        this.b = CMAESOptimizer.DEFAULT_MAXITERATIONS;
        this.m = null;
        this.p = 0;
        this.q = 0L;
        this.r = 0L;
        this.s = false;
        this.c = context;
        this.f13931f = com.tencent.bugly.crashreport.common.info.a.a(context);
        this.f13930e = bArr;
        this.f13932g = com.tencent.bugly.crashreport.common.strategy.a.a();
        this.f13933h = s.a(context);
        this.i = v.a();
        this.j = i;
        this.m = str;
        this.n = str2;
        this.k = uVar;
        this.l = null;
        this.f13929d = i2;
        if (i3 > 0) {
            this.f13928a = i3;
        }
        if (i4 > 0) {
            this.b = i4;
        }
        this.s = z;
        this.o = map;
    }

    private static boolean a(ao aoVar, com.tencent.bugly.crashreport.common.info.a aVar, com.tencent.bugly.crashreport.common.strategy.a aVar2) {
        if (aoVar == null) {
            y.d("resp == null!", new Object[0]);
            return false;
        }
        byte b = aoVar.f13845a;
        if (b != 0) {
            y.e("resp result error %d", Byte.valueOf(b));
            return false;
        }
        try {
            if (!ab.a(aoVar.f13847e) && !com.tencent.bugly.crashreport.common.info.a.b().m().equals(aoVar.f13847e)) {
                o.a().a(com.tencent.bugly.crashreport.common.strategy.a.f13703a, UtilityConfig.KEY_DEVICE_INFO, aoVar.f13847e.getBytes("UTF-8"), (n) null, true);
                aVar.f(aoVar.f13847e);
            }
        } catch (Throwable th) {
            y.a(th);
        }
        aVar.f13695h = aoVar.f13846d;
        int i = aoVar.b;
        if (i == 510) {
            byte[] bArr = aoVar.c;
            if (bArr == null) {
                y.e("[Upload] Strategy data is null. Response cmd: %d", Integer.valueOf(i));
                return false;
            }
            aq aqVar = (aq) a.a(bArr, aq.class);
            if (aqVar == null) {
                y.e("[Upload] Failed to decode strategy from server. Response cmd: %d", Integer.valueOf(aoVar.b));
                return false;
            }
            aVar2.a(aqVar);
        }
        return true;
    }

    private Pair<Boolean, Boolean> a(byte[] bArr, Map<String, String> map) {
        Boolean bool = Boolean.TRUE;
        Boolean bool2 = Boolean.FALSE;
        if (bArr == null) {
            y.e("[Upload] Failed to upload(%d): %s", 1, "Failed to upload for no response!");
            return new Pair<>(bool2, bool);
        }
        y.c("[Upload] Received %d bytes", Integer.valueOf(bArr.length));
        if (bArr.length == 0) {
            a(null, false, 1, "response data from server is empty");
            if (map != null) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    y.c("[Upload] HTTP headers from server: key = %s, value = %s", entry.getKey(), entry.getValue());
                }
            }
            return new Pair<>(bool2, bool2);
        }
        return new Pair<>(bool, bool);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0065  */
    /* JADX WARN: Code duplicated, block: B:23:0x008d  */
    /* JADX WARN: Code duplicated, block: B:26:0x009b A[LOOP:0: B:24:0x0095->B:26:0x009b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:29:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:32:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:34:0x010d  */
    /* JADX WARN: Instruction removed from duplicated block: B:32:0x00f5, please report this as an issue */
    private Pair<Boolean, Boolean> a(Map<String, String> map) {
        boolean z;
        int i;
        Boolean bool = Boolean.TRUE;
        Boolean bool2 = Boolean.FALSE;
        if (map == null || map.size() == 0) {
            y.d("[Upload] Headers is empty.", new Object[0]);
        } else if (!map.containsKey("status")) {
            y.d("[Upload] Headers does not contain %s", "status");
        } else {
            if (map.containsKey("Bugly-Version")) {
                String str = map.get("Bugly-Version");
                if (str.contains("bugly")) {
                    y.c("[Upload] Bugly version from headers is: %s", str);
                    z = true;
                } else {
                    y.d("[Upload] Bugly version is not valid: %s", str);
                }
                if (!z) {
                    y.c("[Upload] Headers from server is not valid, just try again (pid=%d | tid=%d).", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
                    y.e("[Upload] Failed to upload(%d): %s", 1, "[Upload] Failed to upload for no status header.");
                    if (map != null) {
                        for (Map.Entry<String, String> entry : map.entrySet()) {
                            y.c(String.format("[key]: %s, [value]: %s", entry.getKey(), entry.getValue()), new Object[0]);
                        }
                    }
                    y.c("[Upload] Failed to upload for no status header.", new Object[0]);
                    return new Pair<>(bool2, bool);
                }
                i = -1;
                try {
                    i = Integer.parseInt(map.get("status"));
                    y.c("[Upload] Status from server is %d (pid=%d | tid=%d).", Integer.valueOf(i), Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
                    if (i != 0) {
                        a(null, false, 1, "status of server is " + i);
                        return new Pair<>(bool2, bool2);
                    }
                    return new Pair<>(bool, bool);
                } catch (Throwable unused) {
                    y.e("[Upload] Failed to upload(%d): %s", 1, "[Upload] Failed to upload for format of status header is invalid: " + Integer.toString(i));
                    return new Pair<>(bool2, bool);
                }
            }
            y.d("[Upload] Headers does not contain %s", "Bugly-Version");
        }
        z = false;
        if (!z) {
            y.c("[Upload] Headers from server is not valid, just try again (pid=%d | tid=%d).", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
            y.e("[Upload] Failed to upload(%d): %s", 1, "[Upload] Failed to upload for no status header.");
            if (map != null) {
                while (r11.hasNext()) {
                    y.c(String.format("[key]: %s, [value]: %s", entry.getKey(), entry.getValue()), new Object[0]);
                }
            }
            y.c("[Upload] Failed to upload for no status header.", new Object[0]);
            return new Pair<>(bool2, bool);
        }
        i = -1;
        i = Integer.parseInt(map.get("status"));
        y.c("[Upload] Status from server is %d (pid=%d | tid=%d).", Integer.valueOf(i), Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
        if (i != 0) {
            a(null, false, 1, "status of server is " + i);
            return new Pair<>(bool2, bool2);
        }
        return new Pair<>(bool, bool);
    }

    public final void a(long j) {
        this.p++;
        this.q += j;
    }

    private static String a(String str) {
        if (ab.a(str)) {
            return str;
        }
        try {
            return String.format("%s?aid=%s", str, UUID.randomUUID().toString());
        } catch (Throwable th) {
            y.a(th);
            return str;
        }
    }
}
