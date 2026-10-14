package com.amap.api.location;

import android.content.Context;
import android.text.TextUtils;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.loc.fi;
import com.loc.fk;
import com.loc.fn;
import com.loc.fp;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class CoordinateConverter {
    private static int b = 0;
    private static int c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f10415d = 2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f10416e = 4;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f10417f = 8;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f10418g = 16;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static int f10419h = 32;
    private static int i = 64;
    private Context j;
    private CoordType k = null;
    private DPoint l = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    DPoint f10420a = null;

    /* JADX INFO: renamed from: com.amap.api.location.CoordinateConverter$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f10421a;

        static {
            int[] iArr = new int[CoordType.values().length];
            f10421a = iArr;
            try {
                iArr[CoordType.BAIDU.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f10421a[CoordType.MAPBAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f10421a[CoordType.MAPABC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f10421a[CoordType.SOSOMAP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f10421a[CoordType.ALIYUN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f10421a[CoordType.GOOGLE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f10421a[CoordType.GPS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public enum CoordType {
        BAIDU,
        MAPBAR,
        MAPABC,
        SOSOMAP,
        ALIYUN,
        GOOGLE,
        GPS
    }

    public CoordinateConverter(Context context) {
        this.j = context;
    }

    public static float calculateLineDistance(DPoint dPoint, DPoint dPoint2) {
        try {
            return fp.a(dPoint, dPoint2);
        } catch (Throwable unused) {
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    public static boolean isAMapDataAvailable(double d2, double d3) {
        return fi.a(d2, d3);
    }

    public synchronized DPoint convert() throws Exception {
        int i2;
        int i3;
        DPoint dPointA;
        if (this.k == null) {
            throw new IllegalArgumentException("转换坐标类型不能为空");
        }
        DPoint dPoint = this.l;
        if (dPoint == null) {
            throw new IllegalArgumentException("转换坐标源不能为空");
        }
        if (dPoint.getLongitude() > 180.0d || this.l.getLongitude() < -180.0d) {
            throw new IllegalArgumentException("请传入合理经度");
        }
        if (this.l.getLatitude() > 90.0d || this.l.getLatitude() < -90.0d) {
            throw new IllegalArgumentException("请传入合理纬度");
        }
        boolean z = false;
        String str = null;
        switch (AnonymousClass1.f10421a[this.k.ordinal()]) {
            case 1:
                this.f10420a = fk.a(this.l);
                i2 = b;
                i3 = c;
                if ((i2 & i3) == 0) {
                    str = "baidu";
                    b = i2 | i3;
                    z = true;
                }
                break;
            case 2:
                this.f10420a = fk.b(this.j, this.l);
                i2 = b;
                i3 = f10415d;
                if ((i2 & i3) == 0) {
                    str = "mapbar";
                    b = i2 | i3;
                    z = true;
                }
                break;
            case 3:
                int i4 = b;
                int i5 = f10416e;
                if ((i4 & i5) == 0) {
                    str = "mapabc";
                    b = i4 | i5;
                    z = true;
                }
                dPointA = this.l;
                this.f10420a = dPointA;
                break;
            case 4:
                int i6 = b;
                int i7 = f10417f;
                if ((i6 & i7) == 0) {
                    str = "sosomap";
                    b = i6 | i7;
                    z = true;
                }
                dPointA = this.l;
                this.f10420a = dPointA;
                break;
            case 5:
                int i8 = b;
                int i9 = f10418g;
                if ((i8 & i9) == 0) {
                    str = "aliyun";
                    b = i8 | i9;
                    z = true;
                }
                dPointA = this.l;
                this.f10420a = dPointA;
                break;
            case 6:
                int i10 = b;
                int i11 = f10419h;
                if ((i10 & i11) == 0) {
                    str = "google";
                    b = i10 | i11;
                    z = true;
                }
                dPointA = this.l;
                this.f10420a = dPointA;
                break;
            case 7:
                int i12 = b;
                int i13 = i;
                if ((i12 & i13) == 0) {
                    str = "gps";
                    b = i12 | i13;
                    z = true;
                }
                dPointA = fk.a(this.j, this.l);
                this.f10420a = dPointA;
                break;
        }
        if (z) {
            JSONObject jSONObject = new JSONObject();
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put("amap_loc_coordinate", str);
            }
            fn.a(this.j, "O021", jSONObject);
        }
        return this.f10420a;
    }

    public synchronized CoordinateConverter coord(DPoint dPoint) throws Exception {
        try {
            if (dPoint == null) {
                throw new IllegalArgumentException("传入经纬度对象为空");
            }
            if (dPoint.getLongitude() > 180.0d || dPoint.getLongitude() < -180.0d) {
                throw new IllegalArgumentException("请传入合理经度");
            }
            if (dPoint.getLatitude() > 90.0d || dPoint.getLatitude() < -90.0d) {
                throw new IllegalArgumentException("请传入合理纬度");
            }
            this.l = dPoint;
        } catch (Throwable th) {
            throw th;
        }
        return this;
    }

    public synchronized CoordinateConverter from(CoordType coordType) {
        this.k = coordType;
        return this;
    }
}
