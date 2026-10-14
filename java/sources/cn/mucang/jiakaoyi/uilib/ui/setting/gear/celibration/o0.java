package cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration;

import android.os.SystemClock;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.gearsensor.GearPose;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.alibaba.fastjson.JSON;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.tencent.bugly.Bugly;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class o0 implements cn.mucang.android.jiakaoyi.signal.gearsensor.i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public double f10048a = 0.0d;
    public double b = 0.0d;
    public double c = 0.0d;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public double f10049d = 0.0d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public double f10050e = 0.0d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public double f10051f = 0.0d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Pos f10052g = new Pos();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f10053h = false;
    private volatile GearPose i = null;
    private final LinkedList<Float> j = new LinkedList<>();
    private final List<GearPose> k = new ArrayList();
    public final List<GearPose> l = new ArrayList();
    private boolean m = false;
    private final Pos n = new Pos(0.0d, 0.0d);

    private List<Pos> p(GearPose gearPose) {
        ArrayList arrayList = new ArrayList(gearPose.points);
        if (arrayList.size() <= 14) {
            return arrayList;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (((Pos) arrayList.get(0)).distanceTo((Pos) arrayList.get(size)) >= 1.0E-8d) {
                break;
            }
            arrayList.remove(size);
        }
        return cn.mucang.android.jiakaoyi.signal.utils.j.a.d(arrayList, Double.valueOf(0.5d));
    }

    private List<Pos> q(List<Pos> list) {
        return cn.mucang.android.jiakaoyi.signal.gearsensor.h.W() ? cn.mucang.android.jiakaoyi.signal.gearsensor.k.e.a(list) : new cn.mucang.android.jiakaoyi.signal.gearsensor.k.d(list).e(10.0d);
    }

    private boolean s() {
        this.l.clear();
        GearPose gearPose = null;
        for (GearPose gearPose2 : this.k) {
            if (gearPose2 != null) {
                gearPose2.f5592a = BitmapDescriptorFactory.HUE_RED;
                if (gearPose2.gear == Gear.GearN.gear) {
                    gearPose = gearPose2;
                }
            }
        }
        if (gearPose == null) {
            cn.mucang.android.jiakaoyi.framework.p002e.g.a("jkyHasGearSensor", Bugly.SDK_IS_DEV);
            return false;
        }
        this.n.setPos(gearPose.roll, gearPose.pitch);
        cn.mucang.android.jiakaoyi.framework.p002e.g.a("jkyHasGearSensor", "true");
        Pos pos = new Pos();
        for (int i = 0; i < this.k.size(); i++) {
            GearPose gearPose3 = this.k.get(i);
            if (gearPose3 != null) {
                GearPose gearPoseCopyFrom = new GearPose().copyFrom(gearPose3);
                this.l.add(gearPoseCopyFrom);
                pos.setPos(gearPose3.roll, gearPose3.pitch);
                gearPoseCopyFrom.roll = (float) pos.x;
                gearPoseCopyFrom.pitch = (float) pos.y;
                Pos pos2 = new Pos(gearPose3.maxRoll, gearPose3.maxPitch);
                Pos pos3 = new Pos(gearPose3.minRoll, gearPose3.minPitch);
                gearPoseCopyFrom.maxRoll = (float) Math.max(pos2.x, pos3.x);
                gearPoseCopyFrom.minRoll = (float) Math.min(pos2.x, pos3.x);
                gearPoseCopyFrom.maxPitch = (float) Math.max(pos2.y, pos3.y);
                gearPoseCopyFrom.minPitch = (float) Math.min(pos2.y, pos3.y);
                gearPoseCopyFrom.width = gearPose3.width;
                gearPoseCopyFrom.height = gearPose3.height;
                gearPoseCopyFrom.offset = gearPose3.offset;
                gearPoseCopyFrom.src = gearPose3;
                cn.mucang.android.jiakaoyi.framework.log.f.o("初始化" + gearPose3.gear + "档");
            }
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("Bream初始化完成");
        return true;
    }

    private boolean t() {
        this.k.clear();
        this.l.clear();
        try {
            String strG = cn.mucang.android.jiakaoyi.framework.utils.i0.g("hardware_bream_gear_data", "");
            if (cn.mucang.android.core.utils.n0.e(strG)) {
                return false;
            }
            List array = JSON.parseArray(strG, GearPose.class);
            if (cn.mucang.android.core.utils.g.b(array)) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("bream档位学习数据为空");
                return false;
            }
            cn.mucang.android.jiakaoyi.framework.log.f.o("档位数据:" + strG);
            this.k.addAll(array);
            this.l.addAll(array);
            s();
            return true;
        } catch (Throwable th) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("bream初始化挡位失败:" + th.getLocalizedMessage());
            return false;
        }
    }

    private void u() {
        this.i = null;
    }

    private double w(double d2) {
        return ((double) ((int) (d2 * 100.0d))) / 100.0d;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public boolean a() {
        return this.f10053h;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public List<GearPose> b() {
        return this.l;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public boolean c() {
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public boolean d() {
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public void e(List<? extends GearPose> list) {
        String jSONString = JSON.toJSONString(list);
        cn.mucang.android.jiakaoyi.framework.log.f.o("保存硬件挡位数据: " + jSONString);
        cn.mucang.android.jiakaoyi.framework.utils.i0.m("hardware_bream_gear_data", jSONString);
        t();
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public List<GearPose> f(Gear gear) {
        ArrayList arrayList = new ArrayList();
        for (GearPose gearPose : this.l) {
            if (gearPose.gear == gear.gear) {
                arrayList.add(gearPose);
            }
        }
        return arrayList;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public Pos g() {
        return this.f10052g;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public List<GearPose> h() {
        String strG = cn.mucang.android.jiakaoyi.framework.utils.i0.g("hardware_bream_gear_data", "");
        if (cn.mucang.android.core.utils.n0.e(strG)) {
            return null;
        }
        List<GearPose> array = JSON.parseArray(strG, GearPose.class);
        if (!cn.mucang.android.core.utils.g.b(array)) {
            return array;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("本地硬件bream档位学习数据为空");
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public void i(GearPose gearPose) {
        this.k.remove(gearPose);
        this.l.remove(gearPose);
        for (GearPose gearPose2 : this.k) {
            if (gearPose2 == gearPose.src) {
                this.k.remove(gearPose2);
                this.l.remove(gearPose2);
                break;
            }
        }
        cn.mucang.android.jiakaoyi.framework.utils.i0.m("hardware_bream_gear_data", JSON.toJSONString(this.k));
        t();
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public boolean j() {
        double dAbs = Math.abs(this.f10051f - this.c);
        double dAbs2 = Math.abs(this.f10050e - this.b);
        return dAbs < 45.0d && dAbs2 < 45.0d && dAbs + dAbs2 < 70.0d;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public boolean k(Gear gear) {
        if (Math.abs(this.f10051f) + Math.abs(this.f10050e) + Math.abs(this.f10049d) < 1.0E-6d) {
            cn.mucang.android.core.utils.u.h("没有姿态传感器，不能进行姿态挡位学习");
            cn.mucang.android.jiakaoyi.framework.log.f.o("没有姿态传感器，不能进行姿态挡位学习:" + gear.gearName);
            return false;
        }
        Iterator<GearPose> it = this.k.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next().gear == gear.gear) {
                i++;
            }
        }
        if (i > 1) {
            cn.mucang.android.core.utils.u.h("同一个档位只能学习一次，请先删除再开始学习");
            return false;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("开始挡位学习:" + gear.gearName);
        this.i = new GearPose();
        this.i.gear = gear.gear;
        this.i.set((float) w((double) cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (this.f10051f - this.c))), (float) w((double) cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (this.f10050e - this.b))), (float) w((double) cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (this.f10049d - this.f10048a))));
        SystemClock.elapsedRealtime();
        cn.mucang.android.jiakaoyi.framework.log.f.o("开始学习档位，清空档位偏移参数");
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public Gear l(long j, boolean z, Gear gear, int i, int i2) {
        this.f10052g.setPos(cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (this.f10051f - this.c)), cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (this.f10050e - this.b)), cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (this.f10049d - this.f10048a)));
        return gear;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public boolean m() {
        return this.i == null;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public String n() {
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public void o(double d2, double d3, double d4, double d5, double d6, double d7) {
        r();
        this.c = d2;
        this.b = d3;
        this.f10048a = d4;
        this.f10051f = d5;
        this.f10050e = d6;
        this.f10049d = d7;
        float fC = cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (d5 - d2));
        double d8 = fC;
        double dC = cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (this.f10050e - this.b));
        this.f10052g.setPos(d8, dC, cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (this.f10049d - this.f10048a)));
        float fC2 = cn.mucang.android.jiakaoyi.signal.c.d.c();
        if (this.j.size() <= 1 || this.j.getFirst().floatValue() != fC2) {
            this.j.addFirst(Float.valueOf(fC2));
        }
        if (this.j.size() > 3) {
            this.j.removeLast();
        }
        GearPose gearPose = this.i;
        if (gearPose != null) {
            if (gearPose.points == null) {
                gearPose.points = new ArrayList();
            }
            Pos pos = new Pos(w(d8), w(dC));
            if (gearPose.points.size() == 0) {
                gearPose.points.add(pos);
                cn.mucang.android.jiakaoyi.framework.log.f.o(gearPose.gear + "档插入:" + pos.x + "," + pos.y);
                return;
            }
            List<Pos> list = gearPose.points;
            if (pos.distanceTo(list.get(list.size() - 1)) > 1.0d) {
                gearPose.points.add(pos);
                cn.mucang.android.jiakaoyi.framework.log.f.o(gearPose.gear + "档插入:" + pos.x + "," + pos.y);
            }
        }
    }

    public boolean r() {
        if (this.m) {
            return true;
        }
        this.m = true;
        return t();
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public void stop() {
        v(this.i);
    }

    public void v(GearPose gearPose) {
        if (gearPose == null) {
            u();
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("停止挡位学习:" + gearPose.gear);
        Gear gear = Gear.parse(gearPose.gear);
        u();
        if (cn.mucang.android.core.utils.g.b(gearPose.points)) {
            cn.mucang.android.jiakaoyi.framework.log.f.o(gear.gearName + "学习时，没有轨迹数据");
            return;
        }
        List<Pos> listQ = q(gearPose.points);
        gearPose.points = listQ;
        if (listQ == null) {
            cn.mucang.android.jiakaoyi.framework.log.f.o(gear.gearName + "学习时，求轨迹凸包多边形失败");
            cn.mucang.android.core.utils.u.h("档位学习失败");
            return;
        }
        if (listQ.size() > 13) {
            gearPose.points = p(gearPose);
        }
        this.k.add(gearPose);
        this.l.add(gearPose);
        cn.mucang.android.jiakaoyi.framework.utils.i0.m("hardware_bream_gear_data", JSON.toJSONString(this.k));
        t();
    }
}
