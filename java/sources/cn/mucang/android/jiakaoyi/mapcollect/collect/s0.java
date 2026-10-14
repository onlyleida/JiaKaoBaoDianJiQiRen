package cn.mucang.android.jiakaoyi.mapcollect.collect;

import android.os.SystemClock;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.sundial.library.activity.BaseActivity;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class s0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4833d;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public double f4837h;
    public cn.mucang.android.jiakaoyi.signal.i.b j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Gps f4832a = new Gps();
    public final Gps b = new Gps();
    private LinkedList<Gps> c = new LinkedList<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f4834e = BitmapDescriptorFactory.HUE_RED;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f4835f = BitmapDescriptorFactory.HUE_RED;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f4836g = 0;
    private List<Gps> i = new ArrayList();

    private String f(double d2, int i) {
        return String.format("%." + i + "f", Double.valueOf(d2));
    }

    public String a() {
        return "经度: " + f(this.b.longitude, 10) + " , 纬度: " + f(this.b.latitude, 10) + " , 航向角: " + f(this.f4834e, 2) + " , gps类型: " + this.f4833d + " , 俯仰角: " + this.f4837h;
    }

    public Gps b() {
        return c(true);
    }

    public Gps c(boolean z) {
        if (!cn.mucang.android.jiakaoyi.signal.handle.gps.f.a(this.f4833d)) {
            if (z) {
                e("当前gps精度不够");
            }
            return null;
        }
        if (SystemClock.elapsedRealtime() - this.f4836g > BaseActivity.INTERVAL) {
            if (z) {
                e("当前gps点是2秒之前的定位点，请检查gps组件是否连接完好");
            }
            return null;
        }
        if (this.c.size() >= 2) {
            return new Gps(this.f4832a);
        }
        if (z) {
            e("当前gps点还没稳定，请稍后采集");
        }
        return null;
    }

    public void d(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        if (eVar.d().M != 3) {
            return;
        }
        this.f4835f = eVar.getCurrentPosition().f5278d;
        this.f4834e = eVar.getCurrentPosition().f5277a;
        this.f4833d = eVar.getCurrentPosition().f5282h;
        this.f4837h = eVar.getCurrentPosition().f5279e;
        Gps gpsFrom = Gps.from(eVar.getCurrentPosition().f5281g);
        if (Math.abs(gpsFrom.latitude - this.b.latitude) + Math.abs(gpsFrom.longitude - this.b.longitude) < 1.0E-10d) {
            return;
        }
        this.b.setGps(gpsFrom);
        if (!cn.mucang.android.jiakaoyi.signal.handle.gps.f.a(this.f4833d) && !MucangConfig.v()) {
            this.f4832a.setGps(0.0d, 0.0d, 0.0d);
            this.i.clear();
            this.c.clear();
            return;
        }
        if (this.i.size() < 2) {
            Gps gps = this.f4832a;
            if (gps.latitude < 1.0E-10d && gps.longitude < 1.0E-10d) {
                this.i.add(gpsFrom);
                return;
            }
        }
        this.f4832a.setGps(gpsFrom);
        this.f4836g = SystemClock.elapsedRealtime();
        this.c.addLast(new Gps(gpsFrom));
        if (this.c.size() > 2) {
            this.c.removeFirst();
        }
        if (this.j == null) {
            this.j = new cn.mucang.android.jiakaoyi.signal.i.b(this.f4832a);
        }
    }

    public void e(String str) {
        TtsManager.H();
        TtsManager.r(str, TtsGrade.GlobalTip);
        cn.mucang.android.core.utils.u.h(str);
    }
}
