package cn.mucang.android.jiakaoyi.engine.trace.model;

import cn.mucang.android.jiakaoyi.engine.trace.XYPos;
import cn.mucang.android.jiakaoyi.engine.trace.storage.DataType;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class TraceCarModel extends TraceBaseModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f3169a;
    public int x;
    public int y;

    public TraceCarModel() {
        this.tp = DataType.Car.typeId;
    }

    public void clear() {
        this.x = 0;
        this.y = 0;
        this.f3169a = BitmapDescriptorFactory.HUE_RED;
    }

    public TraceCarModel set(XYPos xYPos, float f2, float f3) {
        int i = xYPos.x;
        if (i == this.x && xYPos.y == this.y) {
            return null;
        }
        this.x = i;
        this.y = xYPos.y;
        this.f3169a = f2;
        this.t = f3;
        return this;
    }
}
