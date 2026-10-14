package cn.mucang.jiakaoyi.uilib.n;

import android.app.ActivityManager;
import android.os.Debug;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.framework.p002e.n;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.signal.c.d;
import cn.mucang.jiakaoyi.uilib.debug.DebugCpuUtils;
import com.alibaba.fastjson.JSON;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import java.io.IOException;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f9455a = false;

    public static class a extends n {
        @Override // cn.mucang.android.jiakaoyi.framework.p002e.n, cn.mucang.android.core.api.a
        protected String getApiHost() {
            return "https://device-monitor.kakamobi.cn";
        }

        @Override // cn.mucang.android.jiakaoyi.framework.p002e.n, cn.mucang.android.core.api.a
        protected String getSignKey() {
            return "*#06#anmdQ6ZEc6ZrhHWORUmMfHx5";
        }

        public void m(String str) throws ApiException, InternalException, HttpException {
            httpPost("/api/open/device-runtime/report.htm", str.getBytes());
        }
    }

    private static float a() {
        return DebugCpuUtils.f();
    }

    public static void b() {
        if (f9455a) {
            return;
        }
        f9455a = true;
        new Thread(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.n.a
            @Override // java.lang.Runnable
            public final void run() {
                b.c();
                throw null;
            }
        }).start();
    }

    /* JADX INFO: Infinite loop detected, blocks: 8, insns: 0 */
    static /* synthetic */ void c() {
        while (true) {
            try {
                d();
            } catch (Throwable th) {
                t.d("TAG", "upload device error : " + th.getLocalizedMessage());
            }
            SystemClock.sleep(DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS);
        }
    }

    private static void d() throws ApiException, IOException, InternalException, HttpException {
        String strE = DeviceUtils.e();
        if (n0.e(strE)) {
            return;
        }
        HashMap map = new HashMap();
        map.put("hardwareId", strE);
        map.put("moduleType", "client");
        map.put("cpu", Float.valueOf(a()));
        ActivityManager activityManager = (ActivityManager) MucangConfig.getContext().getSystemService("activity");
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        activityManager.getMemoryInfo(memoryInfo);
        map.put("ramTotal", Long.valueOf(memoryInfo.totalMem));
        map.put("ramUsed", Long.valueOf(memoryInfo.availMem));
        StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        map.put("romTotal", Long.valueOf(statFs.getTotalBytes()));
        map.put("romUsed", Long.valueOf(statFs.getTotalBytes() - statFs.getAvailableBytes()));
        map.put("nativeTotal", Long.valueOf(Debug.getNativeHeapSize()));
        map.put("nativeUsed", Long.valueOf(Debug.getNativeHeapAllocatedSize()));
        map.put("voltage", Float.valueOf(d.t().d().N));
        new a().m(JSON.toJSONString(map));
    }
}
