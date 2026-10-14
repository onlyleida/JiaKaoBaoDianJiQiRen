package cn.mucang.android.jiakaoyi.mapcollect.collect.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.view.ViewTreeObserver;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.R;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes3.dex */
public class h {

    class a implements ViewTreeObserver.OnGlobalLayoutListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ MapView f4987a;
        final /* synthetic */ CarPos b;

        a(h hVar, MapView mapView, CarPos carPos) {
            this.f4987a = mapView;
            this.b = carPos;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            this.f4987a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            double dL = this.b.bound.l();
            double dF = this.b.bound.f();
            MapView mapView = this.f4987a;
            mapView.setCurrentZoom(cn.mucang.android.jiakaoyi.hpmap.view.r.a.a(dL, dF, mapView) * 0.8f);
            this.f4987a.setCurrentRotateDegrees((float) ((-90.0d) - this.b.degree));
            MapView mapView2 = this.f4987a;
            Pos pos = this.b.center;
            mapView2.i((float) pos.x, (float) pos.y);
        }
    }

    public h(Activity activity, CarPos carPos) {
        Dialog dialog = new Dialog(activity);
        dialog.setContentView(R.layout.hpmap__preview_car_dialog);
        final MapView mapView = (MapView) dialog.findViewById(R.id.car_view);
        mapView.u.R(-1);
        mapView.u.g(new cn.mucang.android.jiakaoyi.hpmap.c.c.a(mapView, carPos));
        mapView.getViewTreeObserver().addOnGlobalLayoutListener(new a(this, mapView, carPos));
        dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.y0.c
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                mapView.c();
            }
        });
        dialog.show();
    }
}
