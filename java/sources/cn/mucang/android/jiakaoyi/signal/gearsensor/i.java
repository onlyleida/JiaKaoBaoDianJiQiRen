package cn.mucang.android.jiakaoyi.signal.gearsensor;

import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface i {
    boolean a();

    List<GearPose> b();

    boolean c();

    boolean d();

    void e(List<? extends GearPose> list);

    List<GearPose> f(Gear gear);

    Pos g();

    List<GearPose> h();

    void i(GearPose gearPose);

    boolean j();

    boolean k(Gear gear);

    Gear l(long j, boolean z, Gear gear, int i, int i2);

    boolean m();

    String n();

    void o(double d2, double d3, double d4, double d5, double d6, double d7);

    void stop();
}
