package com.amap.api.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.amap.api.mapcore.util.e6;
import com.amap.api.mapcore.util.k3;
import com.amap.api.mapcore.util.r3;

/* JADX INFO: loaded from: classes5.dex */
public final class CameraPosition implements Parcelable {
    private static final String CLASSNAME = "CameraPosition";
    public static final CameraPositionCreator CREATOR = new CameraPositionCreator();
    public final float bearing;
    public final boolean isAbroad;
    public final LatLng target;
    public final float tilt;
    public final float zoom;

    public static final class Builder {
        private float bearing;
        private LatLng target;
        private float tilt;
        private float zoom;

        public Builder() {
        }

        public Builder bearing(float f2) {
            this.bearing = f2;
            return this;
        }

        public CameraPosition build() {
            try {
                if (this.target != null) {
                    return new CameraPosition(this.target, this.zoom, this.tilt, this.bearing);
                }
                Log.w(CameraPosition.CLASSNAME, "target is null");
                return null;
            } catch (Throwable th) {
                e6.r(th, CameraPosition.CLASSNAME, "build");
                return null;
            }
        }

        public Builder target(LatLng latLng) {
            this.target = latLng;
            return this;
        }

        public Builder tilt(float f2) {
            this.tilt = f2;
            return this;
        }

        public Builder zoom(float f2) {
            this.zoom = f2;
            return this;
        }

        public Builder(CameraPosition cameraPosition) {
            target(cameraPosition.target).bearing(cameraPosition.bearing).tilt(cameraPosition.tilt).zoom(cameraPosition.zoom);
        }
    }

    public CameraPosition(LatLng latLng, float f2, float f3, float f4) {
        if (latLng == null) {
            Log.w(CLASSNAME, "构建CameraPosition时,位置(target)不能为null");
        }
        this.target = latLng;
        this.zoom = f2;
        this.tilt = f3;
        this.bearing = (((double) f4) <= 0.0d ? (f4 % 360.0f) + 360.0f : f4) % 360.0f;
        if (latLng != null) {
            this.isAbroad = !k3.a(latLng.latitude, latLng.longitude);
        } else {
            this.isAbroad = false;
        }
    }

    public static Builder builder() {
        return new Builder();
    }

    public static final CameraPosition fromLatLngZoom(LatLng latLng, float f2) {
        return new CameraPosition(latLng, f2, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CameraPosition)) {
            return false;
        }
        CameraPosition cameraPosition = (CameraPosition) obj;
        return this.target.equals(cameraPosition.target) && Float.floatToIntBits(this.zoom) == Float.floatToIntBits(cameraPosition.zoom) && Float.floatToIntBits(this.tilt) == Float.floatToIntBits(cameraPosition.tilt) && Float.floatToIntBits(this.bearing) == Float.floatToIntBits(cameraPosition.bearing);
    }

    public int hashCode() {
        return super.hashCode();
    }

    public String toString() {
        return r3.D(r3.C("target", this.target), r3.C("zoom", Float.valueOf(this.zoom)), r3.C("tilt", Float.valueOf(this.tilt)), r3.C("bearing", Float.valueOf(this.bearing)));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeFloat(this.bearing);
        parcel.writeFloat((float) this.target.latitude);
        parcel.writeFloat((float) this.target.longitude);
        parcel.writeFloat(this.tilt);
        parcel.writeFloat(this.zoom);
    }

    public static Builder builder(CameraPosition cameraPosition) {
        return new Builder(cameraPosition);
    }
}
