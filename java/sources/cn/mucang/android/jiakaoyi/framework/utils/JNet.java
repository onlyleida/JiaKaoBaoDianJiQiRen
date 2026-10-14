package cn.mucang.android.jiakaoyi.framework.utils;

import android.net.NetworkInfo;
import android.os.SystemClock;
import android.util.Log;
import cn.mucang.android.core.config.MucangConfig;
import com.google.android.exoplayer2.SimpleExoPlayer;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.InterruptedIOException;
import java.util.Arrays;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes2.dex */
public class JNet {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f3588a;
    private static String c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static volatile int f3591f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f3592g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int[] f3593h;
    private static final int[] i;
    private static Process j;
    private static final String[] b = {"1234.kakamobi.cn"};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile int f3589d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile boolean f3590e = false;

    public enum NetState {
        Good(50, "好"),
        Normal(40, "一般"),
        Poor(20, "延迟"),
        DisConnect(0, "未连接"),
        None(-1, "暂无");

        public final String desc;
        public final int state;

        NetState(int i, String str) {
            this.state = i;
            this.desc = str;
        }
    }

    static {
        NetState netState = NetState.None;
        f3591f = 0;
        f3592g = false;
        f3593h = new int[13];
        i = new int[]{0, 50, 100, 200, 300, Videoio.CAP_PROP_XI_DOWNSAMPLING, 500, Videoio.CAP_UNICAP, 700, 800, Videoio.CAP_OPENNI, 1000, 2000};
        j = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a() {
        int i2;
        int[] iArr;
        int i3 = -1;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int i6 = 1;
            i4++;
            synchronized (NetState.class) {
                i2 = f3589d;
            }
            if (i3 == i2 && i3 >= 0) {
                synchronized (NetState.class) {
                    int[] iArr2 = f3593h;
                    int length = iArr2.length - 1;
                    iArr2[length] = iArr2[length] + 1;
                    f3590e = false;
                    f3591f = 2000;
                    NetState netState = NetState.DisConnect;
                    i5++;
                    if (i5 >= 2) {
                        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.utils.k
                            @Override // java.lang.Runnable
                            public final void run() {
                                JNet.j();
                            }
                        });
                        i5 = 0;
                    }
                }
            }
            if (i4 % 60 == 0) {
                synchronized (NetState.class) {
                    StringBuilder sb = new StringBuilder();
                    NetworkInfo networkInfoB = cn.mucang.android.core.utils.x.b();
                    if (networkInfoB == null) {
                        sb.append("-1:0,");
                    } else if (networkInfoB.getType() == 0) {
                        sb.append("-1:2,");
                    } else if (networkInfoB.getType() == 1) {
                        sb.append("-1:3,");
                    } else if (networkInfoB.getType() == 9) {
                        sb.append("-1:1,");
                    } else {
                        sb.append("-1:0,");
                    }
                    sb.append(i[0]);
                    sb.append(":");
                    sb.append(f3593h[0]);
                    while (true) {
                        iArr = f3593h;
                        if (i6 >= iArr.length) {
                            break;
                        }
                        sb.append(",");
                        sb.append(i[i6]);
                        sb.append(":");
                        sb.append(iArr[i6]);
                        i6++;
                    }
                    cn.mucang.android.jiakaoyi.framework.log.f.p(sb.toString());
                    Arrays.fill(iArr, 0);
                }
            }
            SystemClock.sleep(SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
            if (f3589d > 2147483637) {
                return;
            } else {
                i3 = i2;
            }
        }
    }

    public static int b() {
        return f3591f;
    }

    private static void c() throws IOException {
        if (j != null) {
            try {
                if (MucangConfig.v()) {
                    Log.e("nettag", "destroy process : " + j);
                }
                j.destroy();
            } catch (Throwable th) {
                if (MucangConfig.v()) {
                    Log.e("nettag", "process destroy error :" + th.getMessage());
                }
            }
        }
        String str = c;
        if (str == null) {
            String[] strArr = b;
            str = strArr[f3588a % strArr.length];
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("开始ping：" + str);
        Process processExec = Runtime.getRuntime().exec("ping -i 2 -s 16 " + str);
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(processExec.getInputStream()));
        j = processExec;
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                return;
            }
            int[] iArr = f3593h;
            int length = iArr.length - 1;
            int iIndexOf = line.indexOf("time=");
            int iIndexOf2 = line.indexOf("ms");
            int length2 = 0;
            if (iIndexOf > 0 && iIndexOf2 > 0 && iIndexOf2 > iIndexOf) {
                f3590e = true;
                String strTrim = line.substring(iIndexOf + 5, iIndexOf2).trim();
                float f2 = 2000.0f;
                try {
                    f2 = Float.parseFloat(strTrim);
                    int i2 = (int) (f2 / 100.0f);
                    if (i2 < 1) {
                        if (f2 > 50.0f) {
                            length2 = f2 < 100.0f ? 1 : i2;
                        }
                    } else if (i2 < 10) {
                        length2 = i2 + 1;
                    } else {
                        length2 = i2 < 20 ? iArr.length - 2 : iArr.length - 1;
                    }
                    length = length2;
                } catch (Throwable unused) {
                    length = f3593h.length - 1;
                }
                if (f2 <= 120.0f) {
                    NetState netState = NetState.Good;
                } else if (f2 <= 500.0f) {
                    NetState netState2 = NetState.Normal;
                } else {
                    NetState netState3 = NetState.Poor;
                }
                f3591f = (int) f2;
                if (f2 > 300.0f && MucangConfig.v()) {
                    Log.e("nettag", line);
                    Log.e("nettag", "time = " + f2);
                }
            } else if (line.contains("16 data bytes")) {
                f3591f = 0;
                f3590e = true;
                NetState netState4 = NetState.Normal;
                length = 0;
            } else {
                f3590e = false;
                f3591f = 2000;
                NetState netState5 = NetState.DisConnect;
            }
            synchronized (NetState.class) {
                int[] iArr2 = f3593h;
                iArr2[length] = iArr2[length] + 1;
                f3589d++;
            }
        }
    }

    private static void d() {
        new Thread(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.utils.g
            @Override // java.lang.Runnable
            public final void run() {
                JNet.a();
            }
        }).start();
    }

    public static boolean e() {
        return f3590e;
    }

    static /* synthetic */ void g(String str) {
        cn.mucang.android.jiakaoyi.framework.log.f.o("设置 GPS host:" + str);
        c = str;
        j();
    }

    static /* synthetic */ void h() {
        try {
            c();
        } catch (Throwable th) {
            if (MucangConfig.v()) {
                Log.e("nettag", "check error :" + th.getMessage());
            }
            if (!(th instanceof InterruptedIOException)) {
                StringBuilder sb = new StringBuilder();
                sb.append("ping出错:");
                String[] strArr = b;
                sb.append(strArr[f3588a % strArr.length]);
                sb.append(" : ");
                sb.append(q0.d(th));
                cn.mucang.android.jiakaoyi.framework.log.f.o(sb.toString());
            }
            f3590e = false;
            f3588a++;
        }
    }

    public static void i(final String str) {
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.utils.h
            @Override // java.lang.Runnable
            public final void run() {
                JNet.g(str);
            }
        });
    }

    public static void j() {
        if (!f3592g) {
            f3592g = true;
            d();
        }
        new Thread(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.utils.i
            @Override // java.lang.Runnable
            public final void run() {
                JNet.h();
            }
        }).start();
    }
}
