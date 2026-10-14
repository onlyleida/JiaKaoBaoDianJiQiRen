package cn.mucang.android.jiakaoyi.teachingk2.safe.c0.c;

import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.utils.d;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes4.dex */
public class a implements cn.mucang.android.jiakaoyi.teachingk2.safe.c0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f7628a;
    private float b;

    @Override // cn.mucang.android.jiakaoyi.teachingk2.safe.c0.a
    public boolean a(e eVar) {
        boolean z = true;
        if (eVar.c() == null || eVar.c().carRect == null) {
            return true;
        }
        boolean z2 = false;
        if (!eVar.getCurrentPosition().c()) {
            return false;
        }
        float f2 = (float) eVar.c().degree;
        float f3 = this.f7628a;
        float fC = BitmapDescriptorFactory.HUE_RED;
        if (f3 == BitmapDescriptorFactory.HUE_RED) {
            z = false;
        } else {
            fC = d.c(f2 - f3);
        }
        if (Math.abs(fC) <= 15.0f && Math.abs(fC) + Math.abs(this.b) <= 20.0f) {
            z2 = z;
        }
        this.f7628a = f2;
        this.b = fC;
        return z2;
    }
}
