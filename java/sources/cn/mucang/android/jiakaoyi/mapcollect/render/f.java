package cn.mucang.android.jiakaoyi.mapcollect.render;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.car.CarData;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.hpmap.view.p.k;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public abstract class f {
    public SparseArray<cn.mucang.android.jiakaoyi.signal.pos.a> stepBounds = new SparseArray<>();

    public static int getKey(int i, int i2) {
        return i + (i2 * 100);
    }

    public abstract List<k> createLayers(MapView mapView, boolean z, boolean z2);

    public cn.mucang.android.jiakaoyi.signal.pos.a getBound(int i, int i2) {
        int key = getKey(i, i2);
        cn.mucang.android.jiakaoyi.signal.pos.a aVar = this.stepBounds.get(key);
        if (aVar != null) {
            return aVar;
        }
        cn.mucang.android.jiakaoyi.signal.pos.a aVar2 = new cn.mucang.android.jiakaoyi.signal.pos.a(Double.MAX_VALUE, Double.MAX_VALUE, -1.7976931348623157E308d, -1.7976931348623157E308d);
        this.stepBounds.put(key, aVar2);
        return aVar2;
    }

    public abstract CarData getCarData();

    public Map<Step, List<cn.mucang.android.jiakaoyi.hpmap.a.a.b>> getCollisions() {
        return null;
    }

    public abstract cn.mucang.android.jiakaoyi.signal.i.a getConverter();

    public abstract String getExamSiteId();

    public abstract cn.mucang.android.jiakaoyi.signal.pos.a getMapBound();

    public Map<Step, List<cn.mucang.android.jiakaoyi.hpmap.c.a>> getRenders() {
        return null;
    }
}
