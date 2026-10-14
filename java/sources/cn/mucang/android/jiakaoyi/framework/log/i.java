package cn.mucang.android.jiakaoyi.framework.log;

import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import com.sixents.sdk.BuildConfig;
import com.tencent.mm.opensdk.modelmsg.WXVideoFileObject;

/* JADX INFO: loaded from: classes2.dex */
public class i {
    public static final i i = new i(1, "通用", "normal", "txt", 600000, 2097152, 31457280, true);
    public static final i j = new i(2, "通信连接", "com", "txt", 600000, 2097152, 31457280, true);
    public static final i k = new i(3, "高精度", "hp", "txt", 600000, 2097152, 31457280, true);
    public static final i l = new i(4, "固件信号", "signal", "txt", 300000, 2097152, 314572800, AppUtils.n());
    public static final i m = new i(5, "刹车", "brake", "txt", 600000, 2097152, 31457280, true);
    public static final i n = new i(6, "Rtcm", "rtcm_server", "txt", 600000, 2097152, 31457280, true);
    public static final i o = new i(7, "刹车数据", "brake_data", "txt", 600000, 2097152, WXVideoFileObject.FILE_SIZE_LIMIT, true);
    public static final i p = new i(8, "自动驾驶", "ap", "txt", 1200000, 2097152, 10485760, true);
    public static final i q = new i(10, "自动驾驶轨迹", "at", "txt", 1200000, 2097152, 10485760, true);
    public static final i r = new i(20, "网络状态", "ping", "txt", 600000, 2097152, WXVideoFileObject.FILE_SIZE_LIMIT, true);
    public static final i s = new i(21, "人脸登录", "faceLogin", "txt", 600000, 2097152, WXVideoFileObject.FILE_SIZE_LIMIT, true);
    public static final i t = new i(31, "GPS分析", "gps", "txt", 600000, 2097152, 10485760, true);
    public static final i u = new i(10000, "本地Debug", BuildConfig.BUILD_TYPE, "txt", 1800000, 2097152, WXVideoFileObject.FILE_SIZE_LIMIT, false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3467a;
    public final String b;
    public final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f3468d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f3469e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f3470f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f3471g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f3472h;

    private i(int i2, String str, String str2, String str3, int i3, int i4, int i5, boolean z) {
        this.f3467a = str;
        this.b = str2;
        this.c = i3;
        this.f3468d = i4;
        this.f3470f = i2;
        this.f3469e = i5;
        this.f3471g = str3;
        this.f3472h = z;
    }

    public static i[] b() {
        return new i[]{i, j, k, l, m, n, o, p, q, u, r, s, t};
    }

    public String a(String str) {
        return str + "/" + this.b;
    }
}
