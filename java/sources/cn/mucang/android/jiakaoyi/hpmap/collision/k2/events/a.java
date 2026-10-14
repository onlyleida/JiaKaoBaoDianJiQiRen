package cn.mucang.android.jiakaoyi.hpmap.collision.k2.events;

import cn.mucang.android.jiakaoyi.hpmap.a.a.b;
import cn.mucang.android.jiakaoyi.hpmap.a.a.e;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.utils.d;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f3706a;
    public final boolean b;
    public final cn.mucang.android.jiakaoyi.signal.pos.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f3707d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f3708e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Pos f3709f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final float f3710g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f3711h;
    public final boolean i;
    public final Pos j;
    public final Pos k;

    public a(boolean z, boolean z2, b bVar) {
        this.f3706a = z;
        this.b = z2;
        this.c = bVar == null ? null : bVar.b();
        if (bVar == null) {
            this.f3707d = 100000.0f;
            this.f3708e = 100000.0f;
            this.j = null;
            this.k = null;
            this.f3709f = null;
            this.f3710g = BitmapDescriptorFactory.HUE_RED;
            this.f3711h = BitmapDescriptorFactory.HUE_RED;
            this.i = true;
            return;
        }
        if (bVar instanceof e) {
            e eVar = (e) bVar;
            this.j = eVar.C();
            this.k = eVar.y();
            this.f3709f = eVar.x();
            this.f3710g = eVar.D();
            this.f3711h = (float) eVar.z();
            this.i = eVar.E();
            return;
        }
        this.f3710g = BitmapDescriptorFactory.HUE_RED;
        this.f3711h = BitmapDescriptorFactory.HUE_RED;
        this.f3707d = 100000.0f;
        this.f3708e = 100000.0f;
        this.j = null;
        this.k = null;
        this.f3709f = null;
        this.i = true;
    }

    public void a(MapView mapView) {
        Pos pos = this.j;
        if (pos == null || this.k == null) {
            this.f3707d = 100000.0f;
            this.f3708e = 100000.0f;
            return;
        }
        float[] fArrB = mapView.b((float) pos.x, (float) pos.y);
        Pos pos2 = this.k;
        float[] fArrB2 = mapView.b((float) pos2.x, (float) pos2.y);
        float degrees = (float) Math.toDegrees(new Pos(fArrB[0], fArrB[1]).angleTo(new Pos(fArrB2[0], fArrB2[1])));
        float currentRotateDegrees = (float) mapView.getCurrentRotateDegrees();
        this.f3707d = currentRotateDegrees;
        this.f3708e = d.c(currentRotateDegrees - degrees);
    }
}
