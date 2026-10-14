package cn.mucang.android.jiakaoyi.signal.handle.gps.debug;

import android.location.Location;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.h;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.i;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\bJ\u0016\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eJ\u001e\u0010\u001f\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020!2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eJ(\u0010\"\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010#\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J \u0010%\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J0\u0010%\u001a\u00020\u00112\u0006\u0010&\u001a\u00020'2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010#\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u001eH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u000e\u0010\r\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006("}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;", "", "()V", "converter", "Lcn/mucang/android/jiakaoyi/signal/proj/Converter;", "initAngle", "", "initLatLng", "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;", "getInitLatLng", "()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;", "initLatLng$delegate", "Lkotlin/Lazy;", "lastAngel", "lastHeading", "", "lastLocation", "Landroid/location/Location;", "lastSpeed", "mainPos", "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", "offsetAngel", "changeInitPoint", "", "gps", "generateLocation", "Lcn/mucang/android/jiakaoyi/signal/center/model/LocationModel;", "signal", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "curTime", "", "generateLocation2", "posInfo", "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveBt3dPosInfo;", "nextLoc", "curSpeed", "curAngel", "nextLocation", "gear", "Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DebugGps {
    private Location c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f5707d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f5708e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private double f5710g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f5706a = i.b(new Function0<Gps>() { // from class: cn.mucang.android.jiakaoyi.signal.handle.gps.debug.DebugGps$initLatLng$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Gps invoke() {
            return AppUtils.f() ? new Gps(30.491832777373318d, 114.40446446866305d) : new Gps(30.491832777373318d, 114.40446446866305d);
        }
    });
    private cn.mucang.android.jiakaoyi.signal.i.a b = new cn.mucang.android.jiakaoyi.signal.i.b(d());

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f5709f = 9999.0f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Pos f5711h = new Pos();

    private final Gps d() {
        return (Gps) this.f5706a.getValue();
    }

    private final Location e(e eVar, Location location, long j) {
        if (this.f5709f == 9999.0f) {
            this.f5709f = eVar.d().D;
            this.f5710g = eVar.d().D;
        }
        float f2 = eVar.d().D - this.f5709f;
        if (f2 > 33.0f) {
            f2 = 33.0f;
        } else if (f2 < -33.0f) {
            f2 = -33.0f;
        }
        double radians = Math.toRadians(f2);
        double time = ((((((double) ((eVar.d().m == Gear.GearBack ? -1 : 1) * (eVar.d().b + this.f5708e))) * 0.5d) / 3.6d) * ((double) 100)) * (j - location.getTime())) / ((double) 1000);
        CarPos carPosC = eVar.c();
        double dAngleTo = carPosC.back.angleTo(carPosC.front);
        double dCos = Math.cos(dAngleTo);
        double dSin = Math.sin(dAngleTo);
        Pos posA = this.b.a(new Gps(location.getLatitude(), location.getLongitude()));
        if (Math.abs(radians) < 1.0E-5d) {
            Gps gpsB = this.b.b(new Pos(posA.x + (dCos * time), posA.y + (time * dSin)));
            Location location2 = new Location("gps");
            location2.setLongitude(gpsB.longitude);
            location2.setLatitude(gpsB.latitude);
            location2.setSpeed(eVar.d().b / 3.6f);
            location2.setBearing((float) this.f5710g);
            location2.setTime(j);
            return location2;
        }
        double dTan = 257.0d / Math.tan(radians);
        double d2 = (-Math.atan2(dTan, 0.0d)) + (time / dTan);
        Pos pos = new Pos(posA.x, posA.y + dTan);
        Pos pos2 = new Pos(pos.x + (Math.abs(dTan) * Math.cos(d2)), pos.y + (Math.abs(dTan) * Math.sin(d2)));
        pos2.rotate(posA, dCos, dSin);
        Gps gpsB2 = this.b.b(pos2);
        Location location3 = new Location("gps");
        location3.setLongitude(gpsB2.longitude);
        location3.setLatitude(gpsB2.latitude);
        location3.setSpeed(eVar.d().b / 3.6f);
        location3.setBearing(eVar.d().D);
        location3.setTime(j);
        this.f5710g = location3.getBearing();
        return location3;
    }

    private final Location f(Gear gear, Location location, float f2, float f3, long j) {
        double time = ((((((double) (f2 + this.f5708e)) * 0.5d) / 3.6d) * ((double) 100)) * (j - location.getTime())) / ((double) 1000);
        Pos posA = this.b.a(new Gps(location.getLatitude(), location.getLongitude()));
        float radians = (float) Math.toRadians(f3);
        double d2 = radians;
        double radians2 = (float) Math.toRadians(this.f5707d);
        float fAtan2 = (float) Math.atan2(((float) Math.sin(d2)) + ((float) Math.sin(radians2)), ((float) Math.cos(d2)) + ((float) Math.cos(radians2)));
        if (gear == Gear.GearBack) {
            fAtan2 = (float) (((double) fAtan2) - 3.141592653589793d);
        }
        double d3 = fAtan2;
        Gps gpsB = this.b.b(new Pos(posA.x + (((double) ((float) Math.cos(d3))) * time), posA.y + (time * ((double) ((float) Math.sin(d3))))));
        Location location2 = new Location("gps");
        location2.setLongitude(gpsB.longitude);
        location2.setLatitude(gpsB.latitude);
        location2.setSpeed(f2 / 3.6f);
        location2.setBearing(f3);
        location2.setTime(j);
        return location2;
    }

    public final synchronized void a(Gps gps) {
        r.e(gps, "gps");
        Location location = this.c;
        if (location != null) {
            location.setLatitude(gps.latitude);
        }
        Location location2 = this.c;
        if (location2 != null) {
            location2.setLongitude(gps.longitude);
        }
        Location location3 = this.c;
        if (location3 != null) {
            location3.setAltitude(gps.altitude);
        }
        d().setGps(gps);
        this.b = new cn.mucang.android.jiakaoyi.signal.i.b(d());
    }

    public final synchronized cn.mucang.android.jiakaoyi.signal.center.model.b b(e signal, long j) {
        Location locationF;
        cn.mucang.android.jiakaoyi.signal.center.model.b bVar;
        r.e(signal, "signal");
        Gear gear = signal.d().m;
        float f2 = signal.d().b;
        float f3 = signal.d().D;
        Location location = this.c;
        if (location == null) {
            locationF = null;
        } else if (signal.c().back != null) {
            locationF = e(signal, location, j);
        } else {
            r.d(gear, "gear");
            locationF = f(gear, location, f2, f3, j);
        }
        if (locationF == null) {
            locationF = new Location("debugGps");
            locationF.setLatitude(d().latitude);
            locationF.setLongitude(d().longitude);
            locationF.setSpeed(f2 / 3.6f);
            locationF.setBearing(f3);
            locationF.setTime(j);
        }
        this.f5707d = f3;
        this.c = locationF;
        this.f5708e = f2;
        bVar = new cn.mucang.android.jiakaoyi.signal.center.model.b();
        bVar.f5281g.set(locationF);
        bVar.f5278d = 0.8f;
        bVar.f5277a = f3;
        return bVar;
    }

    public final synchronized cn.mucang.android.jiakaoyi.signal.center.model.b c(h posInfo, e signal, long j) {
        cn.mucang.android.jiakaoyi.signal.center.model.b bVar;
        r.e(posInfo, "posInfo");
        r.e(signal, "signal");
        Pos pos = new Pos(posInfo.b, posInfo.c, posInfo.f5422d);
        float f2 = signal.d().b;
        float f3 = posInfo.f5423e;
        Pos pos2 = this.f5711h;
        if (pos2.x == 0.0d) {
            if ((pos2.y == 0.0d) && signal.c() != null) {
                this.f5711h.setPos(new cn.mucang.android.jiakaoyi.signal.utils.b(signal.c().center, f3, true).a(signal.c().main));
            }
        }
        Gps gpsB = this.b.b(new cn.mucang.android.jiakaoyi.signal.utils.b(pos, f3, true).c(this.f5711h));
        Location location = new Location("gps");
        location.setLongitude(gpsB.longitude);
        location.setLatitude(gpsB.latitude);
        float f4 = f2 / 3.6f;
        location.setSpeed(f4);
        location.setBearing(f3);
        location.setTime(j);
        this.f5707d = f3;
        this.c = location;
        this.f5708e = f4;
        bVar = new cn.mucang.android.jiakaoyi.signal.center.model.b();
        bVar.f5281g.set(location);
        bVar.f5278d = 0.8f;
        bVar.f5277a = f3;
        return bVar;
    }
}
