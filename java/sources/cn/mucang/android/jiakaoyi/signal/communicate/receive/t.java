package cn.mucang.android.jiakaoyi.signal.communicate.receive;

import android.location.Location;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.gps.GpsAnalysis;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes3.dex */
public class t extends l {
    private static float j = 100000.0f;
    private static float k = 100000.0f;
    private static float l = 100000.0f;
    private static float m = -1.0f;
    private static final cn.mucang.android.jiakaoyi.signal.communicate.utils.c n = new cn.mucang.android.jiakaoyi.signal.communicate.utils.c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Location f5442a;
    public final float b;
    public float c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f5443d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5444e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f5445f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final float f5446g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f5447h;
    public byte i;

    /* JADX WARN: Code duplicated, block: B:29:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:31:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:40:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:42:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:44:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:55:0x0141  */
    /* JADX WARN: Code duplicated, block: B:57:0x0148  */
    /* JADX WARN: Code duplicated, block: B:59:0x017a  */
    /* JADX WARN: Code duplicated, block: B:60:0x017d  */
    /* JADX WARN: Code duplicated, block: B:62:0x018b  */
    /* JADX WARN: Code duplicated, block: B:64:0x019f  */
    /* JADX WARN: Code duplicated, block: B:89:0x00c5 A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:57:0x0148, please report this as an issue */
    public t(int i, cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
        float fI;
        float fB;
        float fI2;
        int i2;
        Gear gearE;
        float f2;
        byte bE;
        double dE;
        int i3;
        super(i, rVar);
        this.f5444e = 0;
        this.i = (byte) 0;
        Location location = new Location("gps");
        this.f5442a = location;
        int iJ = rVar.j();
        float fI3 = rVar.i();
        this.f5447h = fI3;
        double dH = rVar.h();
        boolean z = rVar.o() == 78;
        double dH2 = rVar.h();
        boolean z2 = rVar.o() == 69;
        float fA = n.a(rVar.l() * 0.01f * 0.514444f * 3.6f, fI3);
        int iL = rVar.l();
        rVar.l();
        rVar.o();
        rVar.o();
        rVar.j();
        rVar.o();
        rVar.o();
        this.f5445f = rVar.o();
        this.f5443d = rVar.o();
        location.setTime(iJ);
        if (z) {
            location.setLatitude(dH);
        } else {
            location.setLatitude(-dH);
        }
        if (z2) {
            location.setLongitude(dH2);
        } else {
            location.setLongitude(-dH2);
        }
        try {
            fI = rVar.i();
            try {
                fB = rVar.i();
                try {
                    fI2 = rVar.i();
                    try {
                        location.setAltitude(rVar.i());
                        this.f5444e = rVar.o();
                        cn.mucang.android.jiakaoyi.framework.utils.b0.a().e(this.f5444e);
                    } catch (Throwable unused) {
                    }
                } catch (Throwable unused2) {
                    fI2 = BitmapDescriptorFactory.HUE_RED;
                }
            } catch (Throwable unused3) {
                fB = BitmapDescriptorFactory.HUE_RED;
                fI2 = BitmapDescriptorFactory.HUE_RED;
                for (i2 = 0; i2 < 6; i2++) {
                    if (rVar.b()) {
                        rVar.e();
                    }
                }
                if (rVar.b()) {
                    cn.mucang.android.jiakaoyi.framework.log.f.q("固件5秒没有收到rtcm数据");
                }
                gearE = cn.mucang.android.jiakaoyi.signal.c.d.e();
                if (rVar.b()) {
                    bE = rVar.e();
                    this.i = bE;
                    if (bE == 5) {
                        dE = cn.mucang.android.jiakaoyi.signal.gps.c.e();
                        if (dE != 0.0d) {
                            if (Math.abs(k) > 1.0E-5d) {
                                if (fA > 0.25d) {
                                    cn.mucang.android.jiakaoyi.framework.log.f.i("没有定向解,readHeading=" + fB + ",bearing=" + iL + ",lastBearing=" + j + ",speed=" + fA);
                                    if (gearE == Gear.GearBack) {
                                        i3 = 180;
                                    } else {
                                        i3 = 0;
                                    }
                                    fB = b(iL + ((float) (dE + ((double) i3))));
                                    l = fB;
                                } else if (Math.abs(l - 100000.0f) > 0.1d) {
                                    fB = l;
                                }
                            } else if (fA > 0.25d) {
                                cn.mucang.android.jiakaoyi.framework.log.f.i("没有定向解,readHeading=" + fB + ",bearing=" + iL + ",lastBearing=" + j + ",speed=" + fA);
                                if (gearE == Gear.GearBack) {
                                    i3 = 180;
                                } else {
                                    i3 = 0;
                                }
                                fB = b(iL + ((float) (dE + ((double) i3))));
                                l = fB;
                            } else if (Math.abs(l - 100000.0f) > 0.1d) {
                                fB = l;
                            }
                        }
                    }
                }
                this.b = fI;
                this.f5446g = fI2;
                this.c = b(fB);
                k = fB;
                f2 = m;
                if (f2 > BitmapDescriptorFactory.HUE_RED) {
                    j = 100000.0f;
                }
                a(this.f5442a, fA, iL);
                m = this.f5447h;
                GpsAnalysis.f().o(this.f5443d);
                GpsAnalysis.f().m(this.i);
                GpsAnalysis.f().p(this.f5445f);
                GpsAnalysis.f().n(fI);
                if (dH != 0.0d) {
                }
                GpsAnalysis.f().d();
            }
        } catch (Throwable unused4) {
            fI = BitmapDescriptorFactory.HUE_RED;
        }
        while (i2 < 6) {
            if (rVar.b()) {
                rVar.e();
            }
        }
        if (rVar.b() && rVar.e() == 1) {
            cn.mucang.android.jiakaoyi.framework.log.f.q("固件5秒没有收到rtcm数据");
        }
        gearE = cn.mucang.android.jiakaoyi.signal.c.d.e();
        if (rVar.b()) {
            bE = rVar.e();
            this.i = bE;
            if (bE == 5) {
                dE = cn.mucang.android.jiakaoyi.signal.gps.c.e();
                if (dE != 0.0d) {
                    if (Math.abs(k) > 1.0E-5d || Math.abs(fB) <= 1.0E-5d) {
                        if (fA > 0.25d) {
                            cn.mucang.android.jiakaoyi.framework.log.f.i("没有定向解,readHeading=" + fB + ",bearing=" + iL + ",lastBearing=" + j + ",speed=" + fA);
                            if (gearE == Gear.GearBack) {
                                i3 = 180;
                            } else {
                                i3 = 0;
                            }
                            fB = b(iL + ((float) (dE + ((double) i3))));
                            l = fB;
                        } else if (Math.abs(l - 100000.0f) > 0.1d) {
                            fB = l;
                        }
                    } else if (Math.abs(cn.mucang.android.jiakaoyi.signal.utils.d.c(k - fB)) >= 5.0f) {
                        float f3 = iL;
                        if (Math.abs(cn.mucang.android.jiakaoyi.signal.utils.d.c(j - f3)) <= 10.0f && Math.abs(cn.mucang.android.jiakaoyi.signal.utils.d.c(fB - f3)) >= 5.0f) {
                            if (fA > 0.25d) {
                                cn.mucang.android.jiakaoyi.framework.log.f.i("没有定向解,readHeading=" + fB + ",bearing=" + iL + ",lastBearing=" + j + ",speed=" + fA);
                                if (gearE == Gear.GearBack) {
                                    i3 = 180;
                                } else {
                                    i3 = 0;
                                }
                                fB = b(iL + ((float) (dE + ((double) i3))));
                                l = fB;
                            } else if (Math.abs(l - 100000.0f) > 0.1d) {
                                fB = l;
                            }
                        }
                    }
                }
            }
        }
        this.b = fI;
        this.f5446g = fI2;
        this.c = b(fB);
        k = fB;
        f2 = m;
        if (f2 > BitmapDescriptorFactory.HUE_RED && this.f5447h - f2 > 3.0f) {
            j = 100000.0f;
        }
        a(this.f5442a, fA, iL);
        m = this.f5447h;
        GpsAnalysis.f().o(this.f5443d);
        GpsAnalysis.f().m(this.i);
        GpsAnalysis.f().p(this.f5445f);
        GpsAnalysis.f().n(fI);
        if (dH != 0.0d || dH2 == 0.0d) {
            GpsAnalysis.f().d();
        }
    }

    private void a(Location location, float f2, float f3) {
        location.setSpeed(f2 / 3.6f);
        float fB = b(f3);
        float f4 = j;
        if (f4 != 100000.0f && f2 < 2.0f && b(fB - f4) > 50.0f) {
            location.setBearing(j);
        } else {
            location.setBearing(fB);
            j = fB;
        }
    }

    private float b(float f2) {
        while (f2 < BitmapDescriptorFactory.HUE_RED) {
            f2 += 360.0f;
        }
        while (f2 >= 360.0f) {
            f2 -= 360.0f;
        }
        return f2;
    }
}
