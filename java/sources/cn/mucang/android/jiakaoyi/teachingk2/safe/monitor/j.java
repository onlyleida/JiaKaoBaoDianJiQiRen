package cn.mucang.android.jiakaoyi.teachingk2.safe.monitor;

import cn.mucang.android.jiakaoyi.signal.center.model.CarBrakeSource;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.z;
import cn.mucang.android.jiakaoyi.teachingk2.safe.BrakeReason;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f7788a;
    private CarBrakeSource b;
    public BrakeReason c = BrakeReason.None;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final LinkedList<String> f7789d = new LinkedList<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final LinkedList<String> f7790e = new LinkedList<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final LinkedList<String> f7791f = new LinkedList<>();

    j() {
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0035  */
    private BrakeReason a(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        BrakeReason brakeReason;
        CarBrakeSource carBrakeSource = eVar.d().G.safeModuleBrakeReason;
        if (carBrakeSource == null) {
            brakeReason = null;
        } else if (carBrakeSource.isBrakedByRadar() || carBrakeSource.isBrakedByCamera()) {
            brakeReason = BrakeReason.Radar;
        } else if (carBrakeSource.isBrakedBySpeed()) {
            brakeReason = BrakeReason.HardwareSpeed;
        } else if (carBrakeSource.isDrivingOpenDoor()) {
            brakeReason = BrakeReason.Door;
        } else if (carBrakeSource.isDrivingOpenBelt()) {
            brakeReason = BrakeReason.Belt;
        } else {
            brakeReason = null;
        }
        return brakeReason == null ? this.c : brakeReason;
    }

    private void b(String str) {
        String strE = e(this.f7790e, "车辆信号:");
        String strE2 = e(this.f7789d, "GPS信号:");
        String strE3 = e(this.f7791f, "雷达信号:");
        this.f7790e.clear();
        this.f7789d.clear();
        this.f7791f.clear();
        cn.mucang.android.jiakaoyi.framework.log.f.e(str + ":\n" + strE + "\n" + strE2 + "\n" + strE3);
    }

    private String e(List<String> list, String str) {
        StringBuilder sb = new StringBuilder(str);
        sb.append("\n");
        int i = 0;
        for (String str2 : list) {
            i++;
            sb.append(i);
            sb.append(":");
            sb.append(str2);
            sb.append("\n");
        }
        return sb.toString();
    }

    void c(z zVar) {
        this.f7791f.addLast(zVar.toString());
        if (this.f7791f.size() > 100) {
            this.f7791f.removeFirst();
        }
    }

    void d(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        if (eVar.d().k()) {
            this.f7790e.addLast(eVar.d().toString());
            if (this.f7790e.size() > 100) {
                this.f7790e.removeFirst();
            }
        } else if (eVar.d().h()) {
            this.f7789d.addLast(eVar.getCurrentPosition().toString());
            if (this.f7789d.size() > 100) {
                this.f7789d.removeFirst();
            }
        }
        CarBrakeSource carBrakeSource = eVar.d().G == null ? null : eVar.d().G.safeModuleBrakeReason;
        if (carBrakeSource != null && carBrakeSource != CarBrakeSource.BRAKE_SOURCE_NONE && carBrakeSource != this.b) {
            this.f7788a = eVar.d().L;
            BrakeReason brakeReasonA = a(eVar);
            b("刹车前数据:" + BrakeGlobalMonitor.f7792a.b() + ":" + brakeReasonA.getCode() + "-" + brakeReasonA.getZhTitle() + ":" + carBrakeSource.id + "-" + carBrakeSource.zhSrc);
        } else if (carBrakeSource == this.b && carBrakeSource != null && carBrakeSource != CarBrakeSource.BRAKE_SOURCE_NONE && eVar.d().L - this.f7788a < 10000 && this.f7790e.size() > 1 && this.f7789d.size() > 1 && this.f7791f.size() > 1) {
            BrakeReason brakeReasonA2 = a(eVar);
            b("持续刹车记录:" + BrakeGlobalMonitor.f7792a.b() + ":" + brakeReasonA2.getCode() + "-" + brakeReasonA2.getZhTitle() + ":" + carBrakeSource.id + "-" + carBrakeSource.zhSrc);
        }
        this.b = carBrakeSource;
    }
}
