package cn.mucang.android.jiakaoyi.signal.handle.gear;

import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.lang.reflect.Array;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class c {
    private static final float[] b;
    private static final float[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final float[] f5686d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final float[] f5687e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final float[] f5688f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final float[][] f5689g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f5690a;

    static {
        float[] fArr = {BitmapDescriptorFactory.HUE_RED, 32.0f};
        b = fArr;
        float[] fArr2 = {2.0f, 40.0f};
        c = fArr2;
        float[] fArr3 = {4.0f, 61.0f};
        f5686d = fArr3;
        float[] fArr4 = {6.0f, 85.0f};
        f5687e = fArr4;
        float[] fArr5 = {8.0f, 200.0f};
        f5688f = fArr5;
        float[][] fArr6 = (float[][]) Array.newInstance((Class<?>) float.class, 6, 2);
        f5689g = fArr6;
        fArr6[Gear.Gear1.gear] = fArr;
        fArr6[Gear.Gear2.gear] = fArr2;
        fArr6[Gear.Gear3.gear] = fArr3;
        fArr6[Gear.Gear4.gear] = fArr4;
        fArr6[Gear.Gear5.gear] = fArr5;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0057  */
    /* JADX WARN: Code duplicated, block: B:44:0x0087  */
    /* JADX WARN: Code duplicated, block: B:67:0x00d7  */
    public Gear a(float f2, float f3) {
        Gear gear;
        float[] fArr;
        float f4;
        float[] fArr2;
        if (f2 < 1.0f) {
            return Gear.Invalid;
        }
        Map<Gear, GearLinearResult> mapG = cn.mucang.android.jiakaoyi.signal.center.config.a.h().g();
        if (mapG == null || mapG.size() < 3) {
            return null;
        }
        float f5 = f3 / f2;
        int i = 1;
        boolean z = false;
        while (true) {
            if (i > 5) {
                gear = null;
                break;
            }
            gear = Gear.parse(i);
            GearLinearResult gearLinearResult = mapG.get(gear);
            if (gearLinearResult != null) {
                float f6 = gearLinearResult.max;
                if (f6 > BitmapDescriptorFactory.HUE_RED) {
                    float f7 = gearLinearResult.min;
                    if (f7 <= BitmapDescriptorFactory.HUE_RED) {
                        f4 = f5;
                    } else {
                        if (i == 1 && f5 > f6) {
                            break;
                        }
                        int i2 = gear.gear;
                        if (i2 >= 0) {
                            float[][] fArr3 = f5689g;
                            if (i2 < fArr3.length) {
                                fArr2 = fArr3[i2];
                            } else {
                                fArr2 = null;
                            }
                        } else {
                            fArr2 = null;
                        }
                        if (fArr2 != null && f2 >= fArr2[0] && f2 <= fArr2[1]) {
                            double d2 = f5;
                            f4 = f5;
                            if (d2 >= ((double) f7) * 0.94d && d2 <= ((double) f6) * 1.06d) {
                                z = true;
                                break;
                            }
                        } else {
                            f4 = f5;
                        }
                        z = true;
                    }
                } else {
                    f4 = f5;
                }
            } else {
                f4 = f5;
            }
            i++;
            f5 = f4;
        }
        if (z) {
            return gear != null ? gear : Gear.Invalid;
        }
        int i3 = this.f5690a + 1;
        this.f5690a = i3;
        if (i3 <= 6) {
            return null;
        }
        float f8 = 1.0E8f;
        for (Map.Entry<Gear, GearLinearResult> entry : mapG.entrySet()) {
            GearLinearResult value = entry.getValue();
            List<LineAB> list = value.lines;
            if (list != null && !list.isEmpty()) {
                int i4 = entry.getKey().gear;
                if (i4 >= 0) {
                    float[][] fArr4 = f5689g;
                    if (i4 < fArr4.length) {
                        fArr = fArr4[i4];
                    } else {
                        fArr = null;
                    }
                } else {
                    fArr = null;
                }
                if (fArr != null && f2 >= fArr[0] && f2 <= fArr[1]) {
                    float fDistance = value.lines.get(0).distance(f2, f3);
                    if (fDistance < f8) {
                        Gear key = entry.getKey();
                        this.f5690a = 0;
                        gear = key;
                        f8 = fDistance;
                    }
                }
            }
        }
        return gear;
    }

    public Gear b(float f2, float f3) {
        if (f2 < 0.2d) {
            return Gear.Invalid;
        }
        Map<Gear, GearLinearResult> mapG = cn.mucang.android.jiakaoyi.signal.center.config.a.h().g();
        Gear gear = Gear.Gear1;
        GearLinearResult gearLinearResult = mapG.get(gear);
        Gear gear2 = Gear.Gear2;
        GearLinearResult gearLinearResult2 = mapG.get(gear2);
        if (gearLinearResult == null || gearLinearResult2 == null) {
            return null;
        }
        double d2 = f3 / f2;
        if (d2 <= ((double) gearLinearResult.min) * 0.95d) {
            gear = null;
        }
        return d2 < ((double) gearLinearResult2.max) * 1.05d ? gear2 : gear;
    }

    public void c() {
        this.f5690a = 0;
    }
}
