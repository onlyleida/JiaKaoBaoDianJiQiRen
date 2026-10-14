package cn.mucang.android.jiakaoyi.hpmap.view.p;

import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class e extends b<a> {

    public static class a extends b.a {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public float f3747f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public float f3748g;

        public a(float f2, int i) {
            super(f2, i);
            this.f3747f = 30.0f;
            this.f3748g = 30.0f;
        }

        @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.b.a
        public /* bridge */ /* synthetic */ b.a a(String str) {
            e(str);
            return this;
        }

        @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.b.a
        public /* bridge */ /* synthetic */ b.a b(Pos pos) {
            f(pos);
            return this;
        }

        public a c(float f2) {
            this.f3748g = f2;
            return this;
        }

        public a d(float f2) {
            this.f3747f = f2;
            return this;
        }

        public a e(String str) {
            this.c = str;
            return this;
        }

        public a f(Pos pos) {
            this.f3739d = pos;
            return this;
        }
    }

    public e(MapView mapView, Pos pos, Pos pos2, a aVar) {
        super(mapView, pos, pos2, aVar);
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.view.p.b
    protected void i(Paint paint, Matrix matrix) {
        super.i(paint, matrix);
        paint.setPathEffect(new DashPathEffect(new float[]{matrix.mapRadius(cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(((a) this.m).f3747f)), matrix.mapRadius(cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(((a) this.m).f3748g))}, BitmapDescriptorFactory.HUE_RED));
    }
}
