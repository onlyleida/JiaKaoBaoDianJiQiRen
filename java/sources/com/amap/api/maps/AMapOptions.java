package com.amap.api.maps;

import android.os.Parcel;
import android.os.Parcelable;
import com.amap.api.maps.model.CameraPosition;

/* JADX INFO: loaded from: classes5.dex */
public class AMapOptions implements Parcelable {
    public static final AMapOptionsCreator CREATOR = new AMapOptionsCreator();
    public static final int LOGO_MARGIN_BOTTOM = 2;
    public static final int LOGO_MARGIN_LEFT = 0;
    public static final int LOGO_MARGIN_RIGHT = 1;
    public static final int LOGO_POSITION_BOTTOM_CENTER = 1;
    public static final int LOGO_POSITION_BOTTOM_LEFT = 0;
    public static final int LOGO_POSITION_BOTTOM_RIGHT = 2;
    public static final int ZOOM_POSITION_RIGHT_BUTTOM = 2;
    public static final int ZOOM_POSITION_RIGHT_CENTER = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private CameraPosition f11476h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f11471a = 1;
    private boolean b = true;
    private boolean c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f11472d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f11473e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f11474f = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f11475g = false;
    private boolean i = false;
    private boolean j = false;
    private int k = 0;

    public AMapOptions camera(CameraPosition cameraPosition) {
        this.f11476h = cameraPosition;
        return this;
    }

    public AMapOptions compassEnabled(boolean z) {
        this.i = z;
        return this;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public CameraPosition getCamera() {
        return this.f11476h;
    }

    public boolean getCompassEnabled() {
        return this.i;
    }

    public int getLogoPosition() {
        return this.k;
    }

    public int getMapType() {
        return this.f11471a;
    }

    public boolean getRotateGesturesEnabled() {
        return this.b;
    }

    public boolean getScaleControlsEnabled() {
        return this.j;
    }

    public boolean getScrollGesturesEnabled() {
        return this.c;
    }

    public boolean getTiltGesturesEnabled() {
        return this.f11472d;
    }

    public boolean getZOrderOnTop() {
        return this.f11475g;
    }

    public boolean getZoomControlsEnabled() {
        return this.f11474f;
    }

    public boolean getZoomGesturesEnabled() {
        return this.f11473e;
    }

    public AMapOptions logoPosition(int i) {
        this.k = i;
        return this;
    }

    public AMapOptions mapType(int i) {
        this.f11471a = i;
        return this;
    }

    public AMapOptions rotateGesturesEnabled(boolean z) {
        this.b = z;
        return this;
    }

    public AMapOptions scaleControlsEnabled(boolean z) {
        this.j = z;
        return this;
    }

    public AMapOptions scrollGesturesEnabled(boolean z) {
        this.c = z;
        return this;
    }

    public AMapOptions tiltGesturesEnabled(boolean z) {
        this.f11472d = z;
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f11476h, i);
        parcel.writeInt(this.f11471a);
        parcel.writeBooleanArray(new boolean[]{this.b, this.c, this.f11472d, this.f11473e, this.f11474f, this.f11475g, this.i, this.j});
    }

    public AMapOptions zOrderOnTop(boolean z) {
        this.f11475g = z;
        return this;
    }

    public AMapOptions zoomControlsEnabled(boolean z) {
        this.f11474f = z;
        return this;
    }

    public AMapOptions zoomGesturesEnabled(boolean z) {
        this.f11473e = z;
        return this;
    }
}
