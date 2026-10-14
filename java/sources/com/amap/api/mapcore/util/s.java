package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.amap.api.maps.AMap;
import com.amap.api.maps.InfoWindowParams;
import com.amap.api.maps.model.BasePointOverlay;
import com.amap.api.maps.model.Marker;
import com.autonavi.base.amap.api.mapcore.BaseOverlayImp;
import com.autonavi.base.amap.api.mapcore.infowindow.IInfoWindowAction;

/* JADX INFO: loaded from: classes5.dex */
public class s {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f11151d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f11152e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextView f11153f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    Context f11155h;
    private IInfoWindowAction i;
    private IInfoWindowAction j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    AMap.InfoWindowAdapter f11150a = null;
    AMap.CommonInfoWindowAdapter b = null;
    private boolean c = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Drawable f11154g = null;
    private AMap.InfoWindowAdapter k = new a();
    private AMap.CommonInfoWindowAdapter l = new b();

    class a implements AMap.InfoWindowAdapter {
        a() {
        }

        @Override // com.amap.api.maps.AMap.InfoWindowAdapter
        public View getInfoContents(Marker marker) {
            return null;
        }

        @Override // com.amap.api.maps.AMap.InfoWindowAdapter
        public View getInfoWindow(Marker marker) {
            try {
                if (s.this.f11154g == null) {
                    s sVar = s.this;
                    sVar.f11154g = g3.c(sVar.f11155h, "infowindow_bg.9.png");
                }
                if (s.this.f11151d == null) {
                    s.this.f11151d = new LinearLayout(s.this.f11155h);
                    s.this.f11151d.setBackground(s.this.f11154g);
                    s.this.f11152e = new TextView(s.this.f11155h);
                    s.this.f11152e.setText(marker.getTitle());
                    s.this.f11152e.setTextColor(ViewCompat.MEASURED_STATE_MASK);
                    s.this.f11153f = new TextView(s.this.f11155h);
                    s.this.f11153f.setTextColor(ViewCompat.MEASURED_STATE_MASK);
                    s.this.f11153f.setText(marker.getSnippet());
                    ((LinearLayout) s.this.f11151d).setOrientation(1);
                    ((LinearLayout) s.this.f11151d).addView(s.this.f11152e);
                    ((LinearLayout) s.this.f11151d).addView(s.this.f11153f);
                }
            } catch (Throwable th) {
                e6.r(th, "InfoWindowDelegate", "showInfoWindow decodeDrawableFromAsset");
                th.printStackTrace();
            }
            return s.this.f11151d;
        }
    }

    class b implements AMap.CommonInfoWindowAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private InfoWindowParams f11157a = null;

        b() {
        }

        @Override // com.amap.api.maps.AMap.CommonInfoWindowAdapter
        public InfoWindowParams getInfoWindowParams(BasePointOverlay basePointOverlay) {
            try {
                if (this.f11157a == null) {
                    this.f11157a = new InfoWindowParams();
                    if (s.this.f11154g == null) {
                        s sVar = s.this;
                        sVar.f11154g = g3.c(sVar.f11155h, "infowindow_bg.9.png");
                    }
                    s.this.f11151d = new LinearLayout(s.this.f11155h);
                    s.this.f11151d.setBackground(s.this.f11154g);
                    s.this.f11152e = new TextView(s.this.f11155h);
                    s.this.f11152e.setText("标题");
                    s.this.f11152e.setTextColor(ViewCompat.MEASURED_STATE_MASK);
                    s.this.f11153f = new TextView(s.this.f11155h);
                    s.this.f11153f.setTextColor(ViewCompat.MEASURED_STATE_MASK);
                    s.this.f11153f.setText("内容");
                    ((LinearLayout) s.this.f11151d).setOrientation(1);
                    ((LinearLayout) s.this.f11151d).addView(s.this.f11152e);
                    ((LinearLayout) s.this.f11151d).addView(s.this.f11153f);
                    this.f11157a.setInfoWindowType(2);
                    this.f11157a.setInfoWindow(s.this.f11151d);
                }
                return this.f11157a;
            } catch (Throwable th) {
                e6.r(th, "InfoWindowDelegate", "showInfoWindow decodeDrawableFromAsset");
                th.printStackTrace();
                return null;
            }
        }
    }

    public s(Context context) {
        this.f11155h = context;
    }

    public boolean A() {
        IInfoWindowAction iInfoWindowActionY = y();
        if (iInfoWindowActionY != null) {
            return iInfoWindowActionY.isInfoWindowShown();
        }
        return false;
    }

    public Drawable B() {
        if (this.f11154g == null) {
            try {
                this.f11154g = g3.c(this.f11155h, "infowindow_bg.9.png");
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return this.f11154g;
    }

    public View d(BasePointOverlay basePointOverlay) {
        InfoWindowParams infoWindowParams;
        AMap.InfoWindowAdapter infoWindowAdapter = this.f11150a;
        if (infoWindowAdapter != null) {
            return infoWindowAdapter.getInfoWindow((Marker) basePointOverlay);
        }
        AMap.CommonInfoWindowAdapter commonInfoWindowAdapter = this.b;
        if (commonInfoWindowAdapter != null && (infoWindowParams = commonInfoWindowAdapter.getInfoWindowParams(basePointOverlay)) != null) {
            return infoWindowParams.getInfoWindow();
        }
        InfoWindowParams infoWindowParams2 = this.l.getInfoWindowParams(basePointOverlay);
        if (infoWindowParams2 != null) {
            return infoWindowParams2.getInfoWindow();
        }
        return null;
    }

    public View e(Marker marker) {
        AMap.InfoWindowAdapter infoWindowAdapter = this.f11150a;
        if (infoWindowAdapter == null || !(infoWindowAdapter instanceof AMap.MultiPositionInfoWindowAdapter)) {
            return null;
        }
        return ((AMap.MultiPositionInfoWindowAdapter) infoWindowAdapter).getInfoWindowClick(marker);
    }

    public synchronized void g(AMap.CommonInfoWindowAdapter commonInfoWindowAdapter) {
        this.b = commonInfoWindowAdapter;
        this.f11150a = null;
        if (commonInfoWindowAdapter == null) {
            this.b = this.l;
            this.c = true;
        } else {
            this.c = false;
        }
        IInfoWindowAction iInfoWindowAction = this.j;
        if (iInfoWindowAction != null) {
            iInfoWindowAction.hideInfoWindow();
        }
        IInfoWindowAction iInfoWindowAction2 = this.i;
        if (iInfoWindowAction2 != null) {
            iInfoWindowAction2.hideInfoWindow();
        }
    }

    public synchronized void h(AMap.InfoWindowAdapter infoWindowAdapter) {
        this.f11150a = infoWindowAdapter;
        this.b = null;
        if (infoWindowAdapter == null) {
            this.f11150a = this.k;
            this.c = true;
        } else {
            this.c = false;
        }
        IInfoWindowAction iInfoWindowAction = this.j;
        if (iInfoWindowAction != null) {
            iInfoWindowAction.hideInfoWindow();
        }
        IInfoWindowAction iInfoWindowAction2 = this.i;
        if (iInfoWindowAction2 != null) {
            iInfoWindowAction2.hideInfoWindow();
        }
    }

    public void i(BaseOverlayImp baseOverlayImp) throws RemoteException {
        IInfoWindowAction iInfoWindowActionY = y();
        if (iInfoWindowActionY != null) {
            iInfoWindowActionY.showInfoWindow(baseOverlayImp);
        }
    }

    public void j(IInfoWindowAction iInfoWindowAction) {
        synchronized (this) {
            this.i = iInfoWindowAction;
            if (iInfoWindowAction != null) {
                iInfoWindowAction.setInfoWindowAdapterManager(this);
            }
        }
    }

    public void k(String str, String str2) {
        TextView textView = this.f11152e;
        if (textView != null) {
            textView.requestLayout();
            this.f11152e.setText(str);
        }
        TextView textView2 = this.f11153f;
        if (textView2 != null) {
            textView2.requestLayout();
            this.f11153f.setText(str2);
        }
        View view = this.f11151d;
        if (view != null) {
            view.requestLayout();
        }
    }

    public synchronized boolean l() {
        return this.c;
    }

    public boolean m(MotionEvent motionEvent) {
        IInfoWindowAction iInfoWindowActionY = y();
        if (iInfoWindowActionY != null) {
            return iInfoWindowActionY.onInfoWindowTap(motionEvent);
        }
        return false;
    }

    public View o(BasePointOverlay basePointOverlay) {
        InfoWindowParams infoWindowParams;
        AMap.InfoWindowAdapter infoWindowAdapter = this.f11150a;
        if (infoWindowAdapter != null) {
            return infoWindowAdapter.getInfoContents((Marker) basePointOverlay);
        }
        AMap.CommonInfoWindowAdapter commonInfoWindowAdapter = this.b;
        if (commonInfoWindowAdapter != null && (infoWindowParams = commonInfoWindowAdapter.getInfoWindowParams(basePointOverlay)) != null) {
            return infoWindowParams.getInfoContents();
        }
        InfoWindowParams infoWindowParams2 = this.l.getInfoWindowParams(basePointOverlay);
        if (infoWindowParams2 != null) {
            return infoWindowParams2.getInfoContents();
        }
        return null;
    }

    public View p(Marker marker) {
        AMap.InfoWindowAdapter infoWindowAdapter = this.f11150a;
        if (infoWindowAdapter == null || !(infoWindowAdapter instanceof AMap.MultiPositionInfoWindowAdapter)) {
            return null;
        }
        return ((AMap.MultiPositionInfoWindowAdapter) infoWindowAdapter).getOverturnInfoWindow(marker);
    }

    public void r() {
        this.f11155h = null;
        this.f11151d = null;
        this.f11152e = null;
        this.f11153f = null;
        synchronized (this) {
            r3.I(this.f11154g);
            this.f11154g = null;
            this.k = null;
            this.f11150a = null;
        }
        this.b = null;
        this.i = null;
        this.j = null;
    }

    public void s(IInfoWindowAction iInfoWindowAction) {
        synchronized (this) {
            this.j = iInfoWindowAction;
            if (iInfoWindowAction != null) {
                iInfoWindowAction.setInfoWindowAdapterManager(this);
            }
        }
    }

    public long t(BasePointOverlay basePointOverlay) {
        InfoWindowParams infoWindowParams;
        AMap.InfoWindowAdapter infoWindowAdapter = this.f11150a;
        if (infoWindowAdapter != null && (infoWindowAdapter instanceof AMap.ImageInfoWindowAdapter)) {
            return ((AMap.ImageInfoWindowAdapter) infoWindowAdapter).getInfoWindowUpdateTime();
        }
        AMap.CommonInfoWindowAdapter commonInfoWindowAdapter = this.b;
        if (commonInfoWindowAdapter == null || (infoWindowParams = commonInfoWindowAdapter.getInfoWindowParams(basePointOverlay)) == null) {
            return 0L;
        }
        return infoWindowParams.getInfoWindowUpdateTime();
    }

    public View u(Marker marker) {
        AMap.InfoWindowAdapter infoWindowAdapter = this.f11150a;
        if (infoWindowAdapter == null || !(infoWindowAdapter instanceof AMap.MultiPositionInfoWindowAdapter)) {
            return null;
        }
        return ((AMap.MultiPositionInfoWindowAdapter) infoWindowAdapter).getOverturnInfoWindowClick(marker);
    }

    public void w() {
        IInfoWindowAction iInfoWindowActionY = y();
        if (iInfoWindowActionY != null) {
            iInfoWindowActionY.redrawInfoWindow();
        }
    }

    public synchronized IInfoWindowAction y() {
        AMap.InfoWindowAdapter infoWindowAdapter = this.f11150a;
        if (infoWindowAdapter != null) {
            if (infoWindowAdapter instanceof AMap.ImageInfoWindowAdapter) {
                return this.j;
            }
            if (infoWindowAdapter instanceof AMap.MultiPositionInfoWindowAdapter) {
                return this.j;
            }
        }
        AMap.CommonInfoWindowAdapter commonInfoWindowAdapter = this.b;
        if (commonInfoWindowAdapter == null || commonInfoWindowAdapter.getInfoWindowParams(null).getInfoWindowType() != 1) {
            return this.i;
        }
        return this.j;
    }

    public void z() {
        IInfoWindowAction iInfoWindowActionY = y();
        if (iInfoWindowActionY != null) {
            iInfoWindowActionY.hideInfoWindow();
        }
    }
}
