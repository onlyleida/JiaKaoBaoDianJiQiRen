package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.utils.d;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes2.dex */
public class DiaoTouAngleChecker {
    private final cn.mucang.android.jiakaoyi.framework.h.a<Float, e> getter;
    private boolean hasClear;
    private final LinkedList<Float> angles = new LinkedList<>();
    private final LinkedList<Float> distance = new LinkedList<>();
    private final float threshold = 1.0f;

    public DiaoTouAngleChecker(boolean z) {
        this.getter = z ? new cn.mucang.android.jiakaoyi.framework.h.a() { // from class: cn.mucang.android.jiakaoyi.exam.k3.helper.b
            @Override // cn.mucang.android.jiakaoyi.framework.h.a
            public final Object a(Object obj) {
                return Float.valueOf(((e) obj).getCurrentPosition().f5277a);
            }
        } : new cn.mucang.android.jiakaoyi.framework.h.a() { // from class: cn.mucang.android.jiakaoyi.exam.k3.helper.a
            @Override // cn.mucang.android.jiakaoyi.framework.h.a
            public final Object a(Object obj) {
                return Float.valueOf(((e) obj).d().D);
            }
        };
        this.hasClear = false;
    }

    private float diffAngle() {
        return this.angles.size() < 2 ? BitmapDescriptorFactory.HUE_RED : Math.abs(d.c(this.angles.getFirst().floatValue() - this.angles.getLast().floatValue()));
    }

    private float diffDistance() {
        return this.distance.size() < 2 ? BitmapDescriptorFactory.HUE_RED : Math.abs(this.distance.getFirst().floatValue() - this.distance.getLast().floatValue());
    }

    public void insert(e eVar) {
        float fFloatValue = this.getter.a(eVar).floatValue();
        float f2 = eVar.d().B;
        if (this.angles.size() == 0) {
            this.angles.addFirst(Float.valueOf(fFloatValue));
            this.distance.addFirst(Float.valueOf(f2));
        } else {
            if (Math.abs(d.c(this.angles.getFirst().floatValue() - fFloatValue)) > this.threshold) {
                this.angles.addFirst(Float.valueOf(fFloatValue));
            }
            if (Math.abs(f2 - this.distance.getFirst().floatValue()) > 0.3d) {
                this.distance.addFirst(Float.valueOf(f2));
            }
        }
        if (this.hasClear || diffDistance() <= 5.0f || diffAngle() >= 5.0f) {
            return;
        }
        this.hasClear = true;
        this.angles.clear();
        this.distance.clear();
    }

    public boolean isEnd() {
        return diffAngle() >= 165.0f;
    }

    public boolean isHalf() {
        float fDiffAngle = diffAngle();
        return fDiffAngle >= 80.0f && fDiffAngle <= 100.0f;
    }
}
