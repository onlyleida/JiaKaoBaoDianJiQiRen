package com.amap.api.location;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes5.dex */
public class DPoint implements Parcelable {
    public static final Parcelable.Creator<DPoint> CREATOR = new Parcelable.Creator<DPoint>() { // from class: com.amap.api.location.DPoint.1
        private static DPoint a(Parcel parcel) {
            return new DPoint(parcel);
        }

        private static DPoint[] a(int i) {
            return new DPoint[i];
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ DPoint createFromParcel(Parcel parcel) {
            return a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ DPoint[] newArray(int i) {
            return a(i);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private double f10423a;
    private double b;

    public DPoint() {
        this.f10423a = 0.0d;
        this.b = 0.0d;
    }

    public DPoint(double d2, double d3) {
        this.f10423a = 0.0d;
        this.b = 0.0d;
        d3 = d3 > 180.0d ? 180.0d : d3;
        d3 = d3 < -180.0d ? -180.0d : d3;
        d2 = d2 > 90.0d ? 90.0d : d2;
        d2 = d2 < -90.0d ? -90.0d : d2;
        this.f10423a = d3;
        this.b = d2;
    }

    protected DPoint(Parcel parcel) {
        this.f10423a = 0.0d;
        this.b = 0.0d;
        this.f10423a = parcel.readDouble();
        this.b = parcel.readDouble();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DPoint)) {
            return false;
        }
        DPoint dPoint = (DPoint) obj;
        return this.b == dPoint.b && this.f10423a == dPoint.f10423a;
    }

    public double getLatitude() {
        return this.b;
    }

    public double getLongitude() {
        return this.f10423a;
    }

    public int hashCode() {
        return Double.valueOf((this.b + this.f10423a) * 1000000.0d).intValue();
    }

    public void setLatitude(double d2) {
        if (d2 > 90.0d) {
            d2 = 90.0d;
        }
        if (d2 < -90.0d) {
            d2 = -90.0d;
        }
        this.b = d2;
    }

    public void setLongitude(double d2) {
        if (d2 > 180.0d) {
            d2 = 180.0d;
        }
        if (d2 < -180.0d) {
            d2 = -180.0d;
        }
        this.f10423a = d2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeDouble(this.f10423a);
        parcel.writeDouble(this.b);
    }
}
