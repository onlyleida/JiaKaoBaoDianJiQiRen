package com.amap.api.maps;

import android.content.Context;
import com.amap.api.mapcore.util.e6;
import com.amap.api.mapcore.util.i;
import com.amap.api.mapcore.util.k3;
import com.amap.api.mapcore.util.p3;
import com.amap.api.maps.model.LatLng;

/* JADX INFO: loaded from: classes5.dex */
public class CoordinateConverter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f11479a;
    private CoordType b = null;
    private LatLng c = null;

    /* JADX INFO: renamed from: com.amap.api.maps.CoordinateConverter$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f11480a;

        static {
            int[] iArr = new int[CoordType.values().length];
            f11480a = iArr;
            try {
                iArr[CoordType.BAIDU.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11480a[CoordType.MAPBAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f11480a[CoordType.MAPABC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f11480a[CoordType.SOSOMAP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f11480a[CoordType.ALIYUN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f11480a[CoordType.GOOGLE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f11480a[CoordType.GPS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public enum CoordType {
        BAIDU,
        MAPBAR,
        GPS,
        MAPABC,
        SOSOMAP,
        ALIYUN,
        GOOGLE
    }

    public CoordinateConverter(Context context) {
        this.f11479a = context;
    }

    public static boolean isAMapDataAvailable(double d2, double d3) {
        return k3.a(d2, d3);
    }

    public LatLng convert() {
        CoordType coordType = this.b;
        LatLng latLngE = null;
        if (coordType == null || this.c == null) {
            return null;
        }
        try {
            String str = "";
            switch (AnonymousClass1.f11480a[coordType.ordinal()]) {
                case 1:
                    latLngE = i.e(this.c);
                    str = "baidu";
                    break;
                case 2:
                    latLngE = i.k(this.f11479a, this.c);
                    str = "mapbar";
                    break;
                case 3:
                    str = "mapabc";
                    latLngE = this.c;
                    break;
                case 4:
                    str = "sosomap";
                    latLngE = this.c;
                    break;
                case 5:
                    str = "aliyun";
                    latLngE = this.c;
                    break;
                case 6:
                    str = "google";
                    latLngE = this.c;
                    break;
                case 7:
                    str = "gps";
                    latLngE = i.d(this.f11479a, this.c);
                    break;
            }
            p3.e(this.f11479a, str);
            return latLngE;
        } catch (Throwable th) {
            th.printStackTrace();
            e6.r(th, "CoordinateConverter", "convert");
            return this.c;
        }
    }

    public CoordinateConverter coord(LatLng latLng) {
        this.c = latLng;
        return this;
    }

    public CoordinateConverter from(CoordType coordType) {
        this.b = coordType;
        return this;
    }
}
