package cn.mucang.android.jiakaoyi.engine.trace.storage;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.m;
import cn.mucang.android.jiakaoyi.engine.trace.TraceCacheManager;
import cn.mucang.android.jiakaoyi.engine.trace.TraceExtraData;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.framework.utils.h0;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import com.alibaba.fastjson.JSON;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3184a;
    public final String b;
    public final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f3185d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f3186e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f3187f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f3188g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f3189h = false;
    private boolean i = false;
    private final Map<Integer, b> j;

    public a(String str, String str2, String str3, TraceExtraData traceExtraData) {
        this.f3188g = false;
        this.f3184a = str;
        this.b = str2;
        String strReplace = str3.replace("_", "");
        this.c = strReplace;
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.f3186e = jCurrentTimeMillis;
        this.f3185d = DeviceUtils.c();
        this.j = new HashMap();
        this.f3187f = c() + File.separator + a();
        traceExtraData.valid = false;
        traceExtraData.subCode = "";
        traceExtraData.guideMark = false;
        if (AppUtils.h() || AppUtils.d() || Objects.equals(traceExtraData.kemu, "3") || traceExtraData.getType() == 7) {
            traceExtraData.valid = true;
            this.f3188g = true;
        }
        traceExtraData.traceId = UUID.randomUUID().toString().replaceAll("-", "");
        LiveBus.d(TraceExtraData.class).l(traceExtraData);
        i0.m(h0.d(str + str2 + strReplace + jCurrentTimeMillis), JSON.toJSONString(traceExtraData));
        d();
    }

    private String a() {
        return "trace-temp-" + this.f3184a + "_" + this.b + "_" + this.f3185d + "_" + this.c + "_" + this.f3186e;
    }

    public static String c() {
        return MucangConfig.getContext().getFilesDir() + File.separator + "exam_trace";
    }

    private void d() {
        File file = new File(this.f3187f);
        if (!file.exists()) {
            file.mkdirs();
        }
        e(DataType.Site.typeId);
        e(DataType.Car.typeId);
        e(DataType.Signal.typeId);
        e(DataType.Step.typeId);
        e(DataType.Exam.typeId);
        e(DataType.Error.typeId);
        e(DataType.Deduct.typeId);
        e(DataType.Behavior.typeId);
        e(DataType.CarData.typeId);
        e(DataType.ExtraInfo.typeId);
    }

    public void b(int i) {
        b bVar = this.j.get(Integer.valueOf(i));
        if (bVar != null) {
            bVar.a();
            new File(bVar.f3190a).delete();
            this.j.put(Integer.valueOf(i), new b(this.f3187f, i));
        }
    }

    public void e(int i) {
        this.j.put(Integer.valueOf(i), new b(this.f3187f, i));
    }

    public void f(boolean z) {
        if (this.f3189h) {
            return;
        }
        String strD = h0.d(this.f3184a + this.b + this.c + this.f3186e);
        try {
            TraceExtraData traceExtraData = (TraceExtraData) JSON.parseObject(i0.g(strD, ""), TraceExtraData.class);
            traceExtraData.guideMark = z;
            i0.m(strD, JSON.toJSONString(traceExtraData));
            this.f3189h = true;
        } catch (Exception unused) {
        }
    }

    public void g(String str) {
        if (this.i) {
            return;
        }
        String strD = h0.d(this.f3184a + this.b + this.c + this.f3186e);
        try {
            TraceExtraData traceExtraData = (TraceExtraData) JSON.parseObject(i0.g(strD, ""), TraceExtraData.class);
            traceExtraData.subCode = str;
            i0.m(strD, JSON.toJSONString(traceExtraData));
            this.i = true;
        } catch (Exception unused) {
        }
    }

    public void h(boolean z) {
        if (this.f3188g) {
            return;
        }
        TraceCacheManager.l(true);
        String strD = h0.d(this.f3184a + this.b + this.c + this.f3186e);
        try {
            TraceExtraData traceExtraData = (TraceExtraData) JSON.parseObject(i0.g(strD, ""), TraceExtraData.class);
            traceExtraData.valid = z;
            i0.m(strD, JSON.toJSONString(traceExtraData));
            this.f3188g = true;
        } catch (Exception unused) {
        }
    }

    public void i() {
        Iterator<b> it = this.j.values().iterator();
        while (it.hasNext()) {
            it.next().a();
        }
        this.j.clear();
        String str = this.f3187f.replace("trace-temp-", "") + "_" + System.currentTimeMillis();
        if (m.r(this.f3187f, str)) {
            this.f3187f = str;
        }
    }

    public void j(int i) {
        b bVar = this.j.get(Integer.valueOf(i));
        if (bVar != null) {
            bVar.a();
            this.j.remove(Integer.valueOf(i));
        }
    }

    public void k(int i, String str) {
        b bVar = this.j.get(Integer.valueOf(i));
        if (bVar != null) {
            bVar.b(str);
        }
    }
}
