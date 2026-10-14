package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.exam.k3.collision.CarToLineDistanceUtils;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jky.usbcamera.detectside.t;

/* JADX INFO: loaded from: classes2.dex */
public class TingCheSideDistanceHelper {
    private int errorCount;
    public double distance = cn.mucang.android.jiakaoyi.k3collect.collision.c.a.b;
    public SideDistanceCalHelper sideDistanceCalHelper = new SideDistanceCalHelper();

    public double calSideDistance(e eVar, CarToLineDistanceUtils.Mode mode, CarToLineDistanceUtils.CalLineType calLineType) {
        try {
            if (this.errorCount < 10) {
                if (!K3CollisionManager.getInstance().hasHpCollision(eVar)) {
                    this.distance = t.b();
                    LiveBus.d(TingCheDistance.class).l(new TingCheDistance((float) this.distance));
                } else if (eVar.d().h()) {
                    this.distance = this.sideDistanceCalHelper.calSideDistance(eVar, mode, calLineType, true);
                    w.g("右边距：" + w.n(this.distance) + "cm");
                    LiveBus.d(TingCheDistance.class).l(new TingCheDistance((float) this.distance));
                }
            }
        } catch (Throwable th) {
            int i = this.errorCount + 1;
            this.errorCount = i;
            if (i == 1) {
                f.o("边距计算出错 : " + th.getLocalizedMessage());
            }
        }
        return this.distance;
    }
}
