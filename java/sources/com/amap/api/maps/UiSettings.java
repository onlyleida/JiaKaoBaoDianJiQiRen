package com.amap.api.maps;

import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.autonavi.amap.mapcore.interfaces.IUiSettings;

/* JADX INFO: loaded from: classes5.dex */
public final class UiSettings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final IUiSettings f11508a;

    public UiSettings(IUiSettings iUiSettings) {
        this.f11508a = iUiSettings;
    }

    public float getLogoMarginRate(int i) {
        try {
            return this.f11508a.getLogoMarginRate(i);
        } catch (Throwable th) {
            th.printStackTrace();
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    public int getLogoPosition() {
        try {
            return this.f11508a.getLogoPosition();
        } catch (Throwable th) {
            th.printStackTrace();
            return 0;
        }
    }

    public int getZoomPosition() {
        try {
            return this.f11508a.getZoomPosition();
        } catch (Throwable th) {
            th.printStackTrace();
            return 2;
        }
    }

    public boolean isCompassEnabled() {
        try {
            return this.f11508a.isCompassEnabled();
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public boolean isGestureScaleByMapCenter() {
        try {
            return this.f11508a.isGestureScaleByMapCenter();
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public boolean isIndoorSwitchEnabled() {
        try {
            return this.f11508a.isIndoorSwitchEnabled();
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public boolean isMyLocationButtonEnabled() {
        try {
            return this.f11508a.isMyLocationButtonEnabled();
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public boolean isRotateGesturesEnabled() {
        try {
            return this.f11508a.isRotateGesturesEnabled();
        } catch (Throwable th) {
            th.printStackTrace();
            return true;
        }
    }

    public boolean isScaleControlsEnabled() {
        try {
            return this.f11508a.isScaleControlsEnabled();
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public boolean isScrollGesturesEnabled() {
        try {
            return this.f11508a.isScrollGesturesEnabled();
        } catch (Throwable th) {
            th.printStackTrace();
            return true;
        }
    }

    public boolean isTiltGesturesEnabled() {
        try {
            return this.f11508a.isTiltGesturesEnabled();
        } catch (Throwable th) {
            th.printStackTrace();
            return true;
        }
    }

    public boolean isZoomControlsEnabled() {
        try {
            return this.f11508a.isZoomControlsEnabled();
        } catch (Throwable th) {
            th.printStackTrace();
            return true;
        }
    }

    public boolean isZoomGesturesEnabled() {
        try {
            return this.f11508a.isZoomGesturesEnabled();
        } catch (Throwable th) {
            th.printStackTrace();
            return true;
        }
    }

    public void setAllGesturesEnabled(boolean z) {
        try {
            this.f11508a.setAllGesturesEnabled(z);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setCompassEnabled(boolean z) {
        try {
            this.f11508a.setCompassEnabled(z);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setGestureScaleByMapCenter(boolean z) {
        try {
            this.f11508a.setGestureScaleByMapCenter(z);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setIndoorSwitchEnabled(boolean z) {
        try {
            this.f11508a.setIndoorSwitchEnabled(z);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void setLogoBottomMargin(int i) {
        try {
            this.f11508a.setLogoBottomMargin(i);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setLogoCenter(int i, int i2) {
    }

    protected void setLogoEnable(boolean z) {
        try {
            this.f11508a.setLogoEnable(z);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void setLogoLeftMargin(int i) {
        try {
            this.f11508a.setLogoLeftMargin(i);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void setLogoMarginRate(int i, float f2) {
        try {
            this.f11508a.setLogoMarginRate(i, f2);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setLogoPosition(int i) {
        try {
            this.f11508a.setLogoPosition(i);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setMyLocationButtonEnabled(boolean z) {
        try {
            this.f11508a.setMyLocationButtonEnabled(z);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setRotateGesturesEnabled(boolean z) {
        try {
            this.f11508a.setRotateGesturesEnabled(z);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setScaleControlsEnabled(boolean z) {
        try {
            this.f11508a.setScaleControlsEnabled(z);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setScrollGesturesEnabled(boolean z) {
        try {
            this.f11508a.setScrollGesturesEnabled(z);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setTiltGesturesEnabled(boolean z) {
        try {
            this.f11508a.setTiltGesturesEnabled(z);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setZoomControlsEnabled(boolean z) {
        try {
            this.f11508a.setZoomControlsEnabled(z);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setZoomGesturesEnabled(boolean z) {
        try {
            this.f11508a.setZoomGesturesEnabled(z);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setZoomInByScreenCenter(boolean z) {
        try {
            this.f11508a.setZoomInByScreenCenter(z);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setZoomPosition(int i) {
        try {
            this.f11508a.setZoomPosition(i);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
