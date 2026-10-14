package cn.mucang.android.jiakaoyi.signal.communicate.receive;

import cn.mucang.android.jiakaoyi.framework.base.model.ModuleVersionInfo;

/* JADX INFO: loaded from: classes3.dex */
public class u extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5448a;
    public final int b;
    public final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f5449d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f5450e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f5451f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f5452g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f5453h;
    public final int i;
    public final int j;
    public final int k;
    public final int l;
    public final int m;
    public final int n;

    public u(int i, cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
        super(i, rVar);
        this.f5448a = rVar.l();
        this.b = rVar.l();
        this.c = rVar.l();
        this.f5449d = rVar.l();
        this.f5450e = rVar.l();
        this.f5451f = rVar.l();
        this.f5452g = rVar.l();
        this.f5453h = rVar.l();
        this.i = rVar.l();
        this.j = rVar.l();
        this.k = rVar.l();
        this.l = rVar.l();
        this.m = rVar.l();
        this.n = rVar.l();
    }

    public ModuleVersionInfo a() {
        ModuleVersionInfo moduleVersionInfo = new ModuleVersionInfo();
        moduleVersionInfo.collectorHardwareVersion = this.f5448a;
        moduleVersionInfo.collectorFirmwareVersion = this.b;
        moduleVersionInfo.ultrasonic1HardwareVersion = this.c;
        moduleVersionInfo.ultrasonic1FirmwareVersion = this.f5449d;
        moduleVersionInfo.ultrasonic2HardwareVersion = this.f5450e;
        moduleVersionInfo.ultrasonic2FirmwareVersion = this.f5451f;
        moduleVersionInfo.safeHardwareVersion = this.f5452g;
        moduleVersionInfo.safeFirmwareVersion = this.f5453h;
        moduleVersionInfo.throttleHardwareVersion = this.i;
        moduleVersionInfo.throttleFirmwareVersion = this.j;
        moduleVersionInfo.gearHardwareVersion = this.k;
        moduleVersionInfo.gearFirmwareVersion = this.l;
        moduleVersionInfo.microwaveHardwareVersion = this.m;
        moduleVersionInfo.microwaveFirmwareVersion = this.n;
        return moduleVersionInfo;
    }
}
