package cn.mucang.android.jiakaoyi.signal.handle.gps;

import android.location.Location;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes3.dex */
public class h {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final float f5729e = CarModel.Y;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.signal.i.a f5730a = null;
    private float b = BitmapDescriptorFactory.HUE_RED;
    private LinkedList<Long> c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LinkedList<Pos> f5731d = null;

    private float b(LinkedList<Long> linkedList, LinkedList<Pos> linkedList2) {
        return (((float) (((((double) ((float) linkedList2.getFirst().distanceTo(linkedList2.getLast()))) * 3600.0d) * 0.01d) / ((double) ((linkedList2.size() - 1) * 200)))) * 0.4f) + ((((float) (((((double) ((float) linkedList2.getFirst().distanceTo(linkedList2.get(1)))) * 3600.0d) * 0.01d) / 200.0d)) + ((float) (((((double) ((float) linkedList2.get(1).distanceTo(linkedList2.get(2)))) * 3600.0d) * 0.01d) / 200.0d))) * 0.5f * 0.6f);
    }

    public float a(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        if (eVar.d().M == 3 && eVar.getCurrentPosition().c()) {
            Location location = eVar.getCurrentPosition().f5281g;
            if (k.c(location)) {
                Gps gpsFrom = Gps.from(location);
                if (this.f5730a == null) {
                    this.f5730a = new cn.mucang.android.jiakaoyi.signal.i.b(gpsFrom);
                    this.c = new LinkedList<>();
                    this.f5731d = new LinkedList<>();
                }
                this.f5731d.addFirst(this.f5730a.a(gpsFrom));
                this.c.addFirst(Long.valueOf(eVar.d().L));
                if (this.f5731d.size() > 8) {
                    this.f5731d.removeLast();
                    this.c.removeLast();
                }
                if (this.f5731d.size() >= 8) {
                    float fB = b(this.c, this.f5731d);
                    this.b = fB;
                    if (fB < f5729e) {
                        this.b = BitmapDescriptorFactory.HUE_RED;
                    }
                }
            }
        }
        return this.b;
    }
}
