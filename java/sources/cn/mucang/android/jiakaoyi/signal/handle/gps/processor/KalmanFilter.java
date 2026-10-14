package cn.mucang.android.jiakaoyi.signal.handle.gps.processor;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import com.amap.api.maps.AMapException;

/* JADX INFO: loaded from: classes3.dex */
public class KalmanFilter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private double f5745a;
    private double b;
    private double c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private double f5746d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private double f5747e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private double f5748f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private double f5749g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private double f5750h;
    private double i;
    private double j;
    private double k;
    private double l;
    private double m;
    private double n;
    private final int q;
    private Location r;
    private double o = 0.0d;
    private double p = 0.0d;
    private int s = 0;

    static class LatLng implements Parcelable, Cloneable {
        public static final Parcelable.Creator<LatLng> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final double f5751a;
        public final double b;

        static class a implements Parcelable.Creator<LatLng> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public LatLng createFromParcel(Parcel parcel) {
                return new LatLng(parcel.readDouble(), parcel.readDouble());
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public LatLng[] newArray(int i) {
                return new LatLng[i];
            }
        }

        public LatLng(double d2, double d3) {
            this(d2, d3, true);
        }

        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public LatLng clone() {
            return new LatLng(this.f5751a, this.b);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof LatLng)) {
                return false;
            }
            LatLng latLng = (LatLng) obj;
            return Double.doubleToLongBits(this.f5751a) == Double.doubleToLongBits(latLng.f5751a) && Double.doubleToLongBits(this.b) == Double.doubleToLongBits(latLng.b);
        }

        public int hashCode() {
            long jDoubleToLongBits = Double.doubleToLongBits(this.f5751a);
            int i = ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32))) + 31;
            long jDoubleToLongBits2 = Double.doubleToLongBits(this.b);
            return (i * 31) + ((int) (jDoubleToLongBits2 ^ (jDoubleToLongBits2 >>> 32)));
        }

        public String toString() {
            return "lat/lng: (" + this.f5751a + "," + this.b + ")";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeDouble(this.b);
            parcel.writeDouble(this.f5751a);
        }

        public LatLng(double d2, double d3, boolean z) {
            if (!z) {
                this.f5751a = d2;
                this.b = d3;
                return;
            }
            if (-180.0d > d3 || d3 >= 180.0d) {
                this.b = ((((d3 - 180.0d) % 360.0d) + 360.0d) % 360.0d) - 180.0d;
            } else {
                this.b = d3;
            }
            if (d2 < -90.0d || d2 > 90.0d) {
                try {
                    throw new Exception(AMapException.ERROR_ILLEGAL_VALUE);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            this.f5751a = Math.max(-90.0d, Math.min(90.0d, d2));
        }
    }

    public KalmanFilter(int i) {
        this.q = i;
        c();
    }

    private Location a(Location location) {
        Location location2 = new Location(location.getProvider());
        location2.setLatitude(location.getLatitude());
        location2.setLongitude(location.getLongitude());
        location2.setTime(location.getTime());
        location2.setAltitude(location.getAltitude());
        location2.setSpeed(location.getSpeed());
        location2.setBearing(location.getBearing());
        location2.setAccuracy(location.getAccuracy());
        return location2;
    }

    private void c() {
        this.m = 0.001d;
        this.n = 0.001d;
        this.f5749g = 5.698402909980532E-4d;
        this.f5750h = 5.698402909980532E-4d;
    }

    private LatLng d(double d2, double d3, double d4, double d5) {
        this.f5745a = d2;
        this.b = d3;
        double d6 = this.m;
        double d7 = this.f5749g;
        double dSqrt = Math.sqrt((d6 * d6) + (d7 * d7)) + this.p;
        this.i = dSqrt;
        double d8 = this.m;
        double dSqrt2 = Math.sqrt((dSqrt * dSqrt) / ((dSqrt * dSqrt) + (d8 * d8))) + this.o;
        this.k = dSqrt2;
        double d9 = this.b;
        double d10 = this.f5745a;
        this.f5747e = ((d9 - d10) * dSqrt2) + d10;
        double d11 = this.i;
        this.f5749g = Math.sqrt((1.0d - dSqrt2) * d11 * d11);
        this.c = d4;
        this.f5746d = d5;
        double d12 = this.n;
        double d13 = this.f5750h;
        double dSqrt3 = Math.sqrt((d12 * d12) + (d13 * d13)) + this.p;
        this.j = dSqrt3;
        double d14 = this.n;
        double dSqrt4 = Math.sqrt((dSqrt3 * dSqrt3) / ((dSqrt3 * dSqrt3) + (d14 * d14))) + this.o;
        this.l = dSqrt4;
        double d15 = this.f5746d;
        double d16 = this.c;
        this.f5748f = ((d15 - d16) * dSqrt4) + d16;
        double d17 = 1.0d - dSqrt4;
        double d18 = this.j;
        this.f5750h = Math.sqrt(d17 * d18 * d18);
        return new LatLng(this.f5748f, this.f5747e);
    }

    private Location e(Location location, Location location2, int i) {
        if (this.m == 0.0d || this.n == 0.0d) {
            c();
        }
        Location location3 = null;
        if (location != null && location2 != null) {
            if (i < 1) {
                i = 1;
            } else if (i > 5) {
                i = 5;
            }
            int i2 = 0;
            while (i2 < i) {
                LatLng latLngD = d(location.getLongitude(), location2.getLongitude(), location.getLatitude(), location2.getLatitude());
                location2 = a(location2);
                location2.setLongitude(latLngD.b);
                location2.setLatitude(latLngD.f5751a);
                i2++;
                location3 = location2;
            }
        }
        return location3;
    }

    public Location b(Location location) {
        int i = this.s + 1;
        this.s = i;
        Location location2 = this.r;
        if (location2 == null || i < 5) {
            this.r = location;
            return location;
        }
        Location locationE = e(location2, location, this.q);
        this.r = locationE;
        return locationE;
    }
}
