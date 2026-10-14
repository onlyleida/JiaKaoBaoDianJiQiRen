package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.jiakaoyi.exam.k3.collision.CarToLineDistanceUtils;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ZhiXianStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.utils.d;

/* JADX INFO: loaded from: classes2.dex */
public class HpZhiXianDistanceChecker {
    protected static final int DEFAULT_VALUE = -99999999;
    private K3ZhiXianStepConfig config;
    public double diffAngle;
    private SideDistanceCalHelper leftSideDistanceCalHelper;
    public double offsetDistance;
    private SideDistanceCalHelper rightSideDistanceCalHelper;
    private boolean isInit = false;
    private double initSideDis = 0.0d;
    public boolean hasStart = false;
    public float startBearing = -1.0E8f;
    public float startHeading = -1.0E8f;
    public CarToLineDistanceUtils.Mode mode = CarToLineDistanceUtils.Mode.CarBack;
    public CarToLineDistanceUtils.CalLineType calLineType = CarToLineDistanceUtils.CalLineType.DashFullLine;

    public HpZhiXianDistanceChecker(K3ZhiXianStepConfig k3ZhiXianStepConfig) {
        this.config = k3ZhiXianStepConfig;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void check(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        float bearing = eVar.getCurrentPosition().f5281g.getBearing();
        float f2 = eVar.getCurrentPosition().f5277a;
        if (this.leftSideDistanceCalHelper == null) {
            this.leftSideDistanceCalHelper = new SideDistanceCalHelper();
        }
        if (this.rightSideDistanceCalHelper == null) {
            this.rightSideDistanceCalHelper = new SideDistanceCalHelper();
        }
        if (this.isInit) {
            if (((Integer) this.config.p204117.value).intValue() == 0) {
                double dCalSideDistance = this.rightSideDistanceCalHelper.calSideDistance(eVar, this.mode, this.calLineType, true);
                double dCalSideDistance2 = this.leftSideDistanceCalHelper.calSideDistance(eVar, this.mode, this.calLineType, false);
                int i = cn.mucang.android.jiakaoyi.k3collect.collision.c.a.b;
                if (dCalSideDistance != i && dCalSideDistance2 != i) {
                    this.offsetDistance = ((dCalSideDistance - dCalSideDistance2) - this.initSideDis) * (-0.5d);
                }
            } else if (((Integer) this.config.p204117.value).intValue() == 3) {
                double dCalSideDistance3 = this.leftSideDistanceCalHelper.calSideDistance(eVar, this.mode, this.calLineType, false);
                if (dCalSideDistance3 != cn.mucang.android.jiakaoyi.k3collect.collision.c.a.b) {
                    this.offsetDistance = dCalSideDistance3 - this.initSideDis;
                }
            } else {
                double dCalSideDistance4 = this.rightSideDistanceCalHelper.calSideDistance(eVar, this.mode, this.calLineType, true);
                if (dCalSideDistance4 != cn.mucang.android.jiakaoyi.k3collect.collision.c.a.b) {
                    this.offsetDistance = -(dCalSideDistance4 - this.initSideDis);
                }
            }
            if (this.hasStart) {
                float fC = d.c(bearing - this.startBearing);
                float fC2 = d.c(f2 - this.startHeading);
                if (Math.abs(fC) < Math.abs(fC2)) {
                    this.diffAngle = fC;
                } else {
                    this.diffAngle = fC2;
                }
            } else {
                this.diffAngle = 0.0d;
            }
            this.offsetDistance *= 0.01d;
            return;
        }
        if (((Integer) this.config.p204117.value).intValue() == 0) {
            double dCalSideDistance5 = this.leftSideDistanceCalHelper.calSideDistance(eVar, this.mode, this.calLineType, false);
            double dCalSideDistance6 = this.leftSideDistanceCalHelper.calSideDistance(eVar, this.mode, this.calLineType, true);
            int i2 = cn.mucang.android.jiakaoyi.k3collect.collision.c.a.b;
            if (dCalSideDistance5 != i2 && dCalSideDistance6 != i2) {
                this.initSideDis = dCalSideDistance6 - dCalSideDistance5;
                this.isInit = true;
                this.hasStart = true;
            }
        } else if (((Integer) this.config.p204117.value).intValue() == 3) {
            double dCalSideDistance7 = this.leftSideDistanceCalHelper.calSideDistance(eVar, this.mode, this.calLineType, false);
            if (dCalSideDistance7 != cn.mucang.android.jiakaoyi.k3collect.collision.c.a.b) {
                this.initSideDis = dCalSideDistance7;
                this.isInit = true;
                this.hasStart = true;
            }
        } else {
            double dCalSideDistance8 = this.rightSideDistanceCalHelper.calSideDistance(eVar, this.mode, this.calLineType, true);
            if (dCalSideDistance8 != cn.mucang.android.jiakaoyi.k3collect.collision.c.a.b) {
                this.initSideDis = dCalSideDistance8;
                this.isInit = true;
                this.hasStart = true;
            }
        }
        this.startBearing = bearing;
        this.startHeading = f2;
    }
}
