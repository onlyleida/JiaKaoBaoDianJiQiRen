package com.amap.api.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;

/* JADX INFO: loaded from: classes5.dex */
public final class GroundOverlayOptions extends BaseOptions implements Parcelable {
    private static final String CLASSNAME = "GroundOverlayOptions";
    public static final GroundOverlayOptionsCreator CREATOR = new GroundOverlayOptionsCreator();
    public static final float NO_DIMENSION = -1.0f;
    private final double NF_PI;
    private final double R;
    private float anchorU;
    private float anchorV;
    private float bearing;
    private BitmapDescriptor bitmapDescriptor;
    private String bitmapSymbol;
    private float height;
    private boolean isVisible;
    private LatLng latLng;
    private LatLngBounds latlngBounds;
    private final int mVersionCode;
    private LatLng northeast;
    private LatLng southwest;
    private float transparency;
    private final String type;
    private float width;
    private float zIndex;

    GroundOverlayOptions(int i, IBinder iBinder, LatLng latLng, float f2, float f3, LatLngBounds latLngBounds, float f4, float f5, boolean z, float f6, float f7, float f8) {
        this.zIndex = BitmapDescriptorFactory.HUE_RED;
        this.isVisible = true;
        this.transparency = BitmapDescriptorFactory.HUE_RED;
        this.anchorU = 0.5f;
        this.anchorV = 0.5f;
        this.NF_PI = 0.01745329251994329d;
        this.R = 6371000.79d;
        this.type = CLASSNAME;
        this.mVersionCode = i;
        this.bitmapDescriptor = BitmapDescriptorFactory.fromBitmap(null);
        this.latLng = latLng;
        this.width = f2;
        this.height = f3;
        this.latlngBounds = latLngBounds;
        this.bearing = f4;
        this.zIndex = f5;
        this.isVisible = z;
        this.transparency = f6;
        this.anchorU = f7;
        this.anchorV = f8;
        this.southwest = latLngBounds.southwest;
        this.northeast = latLngBounds.northeast;
    }

    private GroundOverlayOptions a(LatLng latLng, float f2, float f3) {
        this.latLng = latLng;
        this.width = f2;
        this.height = f3;
        b();
        return this;
    }

    private void b() {
        LatLng latLng = this.latLng;
        if (latLng == null) {
            return;
        }
        double dCos = ((double) this.width) / ((Math.cos(latLng.latitude * 0.01745329251994329d) * 6371000.79d) * 0.01745329251994329d);
        double d2 = ((double) this.height) / 111194.94043265979d;
        try {
            LatLng latLng2 = this.latLng;
            LatLng latLng3 = new LatLng(latLng2.latitude - (((double) (1.0f - this.anchorV)) * d2), latLng2.longitude - (((double) this.anchorU) * dCos));
            LatLng latLng4 = this.latLng;
            LatLngBounds latLngBounds = new LatLngBounds(latLng3, new LatLng(latLng4.latitude + (((double) this.anchorV) * d2), latLng4.longitude + (((double) (1.0f - this.anchorU)) * dCos)));
            this.latlngBounds = latLngBounds;
            this.southwest = latLngBounds.southwest;
            this.northeast = latLngBounds.northeast;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public GroundOverlayOptions anchor(float f2, float f3) {
        this.anchorU = f2;
        this.anchorV = f3;
        if (this.latlngBounds != null) {
            a();
        } else if (this.latLng != null) {
            b();
        }
        return this;
    }

    public GroundOverlayOptions bearing(float f2) {
        this.bearing = f2;
        return this;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public float getAnchorU() {
        return this.anchorU;
    }

    public float getAnchorV() {
        return this.anchorV;
    }

    public float getBearing() {
        return this.bearing;
    }

    public LatLngBounds getBounds() {
        return this.latlngBounds;
    }

    public float getHeight() {
        return this.height;
    }

    public BitmapDescriptor getImage() {
        return this.bitmapDescriptor;
    }

    public LatLng getLocation() {
        return this.latLng;
    }

    public float getTransparency() {
        return this.transparency;
    }

    public float getWidth() {
        return this.width;
    }

    public float getZIndex() {
        return this.zIndex;
    }

    public GroundOverlayOptions image(BitmapDescriptor bitmapDescriptor) {
        this.bitmapDescriptor = bitmapDescriptor;
        if (bitmapDescriptor != null) {
            this.bitmapSymbol = bitmapDescriptor.getId();
        }
        return this;
    }

    public boolean isVisible() {
        return this.isVisible;
    }

    public GroundOverlayOptions position(LatLng latLng, float f2) {
        if (this.latlngBounds != null) {
            Log.w(CLASSNAME, "Position has already been set using positionFromBounds");
        }
        if (latLng == null) {
            Log.w(CLASSNAME, "Location must be specified");
        }
        if (f2 <= BitmapDescriptorFactory.HUE_RED) {
            Log.w(CLASSNAME, "Width must be non-negative");
        }
        return a(latLng, f2, f2);
    }

    public GroundOverlayOptions positionFromBounds(LatLngBounds latLngBounds) {
        this.latlngBounds = latLngBounds;
        this.southwest = latLngBounds.southwest;
        this.northeast = latLngBounds.northeast;
        a();
        return this;
    }

    public GroundOverlayOptions transparency(float f2) {
        if (f2 < BitmapDescriptorFactory.HUE_RED) {
            Log.w(CLASSNAME, "Transparency must be in the range [0..1]");
            f2 = BitmapDescriptorFactory.HUE_RED;
        }
        this.transparency = f2;
        return this;
    }

    public GroundOverlayOptions visible(boolean z) {
        this.isVisible = z;
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mVersionCode);
        parcel.writeParcelable(this.bitmapDescriptor, i);
        parcel.writeParcelable(this.latLng, i);
        parcel.writeFloat(this.width);
        parcel.writeFloat(this.height);
        parcel.writeParcelable(this.latlngBounds, i);
        parcel.writeFloat(this.bearing);
        parcel.writeFloat(this.zIndex);
        parcel.writeByte(this.isVisible ? (byte) 1 : (byte) 0);
        parcel.writeFloat(this.transparency);
        parcel.writeFloat(this.anchorU);
        parcel.writeFloat(this.anchorV);
    }

    public GroundOverlayOptions zIndex(float f2) {
        this.zIndex = f2;
        return this;
    }

    private void a() {
        if (this.southwest == null || this.northeast == null) {
            return;
        }
        LatLng latLng = this.southwest;
        double d2 = latLng.latitude;
        double d3 = 1.0f - this.anchorV;
        LatLng latLng2 = this.northeast;
        double d4 = d2 + (d3 * (latLng2.latitude - d2));
        double d5 = latLng.longitude;
        LatLng latLng3 = new LatLng(d4, d5 + (((double) this.anchorU) * (latLng2.longitude - d5)));
        this.latLng = latLng3;
        double dCos = Math.cos(latLng3.latitude * 0.01745329251994329d) * 6371000.79d;
        LatLng latLng4 = this.northeast;
        double d6 = latLng4.longitude;
        LatLng latLng5 = this.southwest;
        this.width = (float) (dCos * (d6 - latLng5.longitude) * 0.01745329251994329d);
        this.height = (float) ((latLng4.latitude - latLng5.latitude) * 6371000.79d * 0.01745329251994329d);
    }

    public GroundOverlayOptions position(LatLng latLng, float f2, float f3) {
        if (this.latlngBounds != null) {
            Log.w(CLASSNAME, "Position has already been set using positionFromBounds");
        }
        if (latLng == null) {
            Log.w(CLASSNAME, "Location must be specified");
        }
        if (f2 <= BitmapDescriptorFactory.HUE_RED || f3 <= BitmapDescriptorFactory.HUE_RED) {
            Log.w(CLASSNAME, "Width and Height must be non-negative");
        }
        return a(latLng, f2, f3);
    }

    public GroundOverlayOptions() {
        this.zIndex = BitmapDescriptorFactory.HUE_RED;
        this.isVisible = true;
        this.transparency = BitmapDescriptorFactory.HUE_RED;
        this.anchorU = 0.5f;
        this.anchorV = 0.5f;
        this.NF_PI = 0.01745329251994329d;
        this.R = 6371000.79d;
        this.type = CLASSNAME;
        this.mVersionCode = 1;
    }
}
