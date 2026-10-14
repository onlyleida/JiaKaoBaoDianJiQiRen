package com.amap.api.mapcore.util;

import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClient;
import com.amap.api.location.AMapLocationClientOption;
import com.autonavi.amap.mapcore.Inner_3dMap_location;
import com.autonavi.amap.mapcore.Inner_3dMap_locationListener;
import com.autonavi.amap.mapcore.Inner_3dMap_locationOption;

/* JADX INFO: loaded from: classes5.dex */
public final class i9 {
    public static Inner_3dMap_location b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    u8 f10922a = null;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f10923a;

        static {
            int[] iArr = new int[Inner_3dMap_locationOption.Inner_3dMap_Enum_LocationMode.values().length];
            f10923a = iArr;
            try {
                iArr[Inner_3dMap_locationOption.Inner_3dMap_Enum_LocationMode.Battery_Saving.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f10923a[Inner_3dMap_locationOption.Inner_3dMap_Enum_LocationMode.Device_Sensors.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f10923a[Inner_3dMap_locationOption.Inner_3dMap_Enum_LocationMode.Hight_Accuracy.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private static AMapLocationClientOption a(Inner_3dMap_locationOption inner_3dMap_locationOption) {
        AMapLocationClientOption aMapLocationClientOption = new AMapLocationClientOption();
        aMapLocationClientOption.setInterval(inner_3dMap_locationOption.getInterval());
        AMapLocationClientOption.AMapLocationMode aMapLocationMode = AMapLocationClientOption.AMapLocationMode.Hight_Accuracy;
        int i = a.f10923a[inner_3dMap_locationOption.getLocationMode().ordinal()];
        if (i == 1) {
            aMapLocationMode = AMapLocationClientOption.AMapLocationMode.Battery_Saving;
        } else if (i == 2) {
            aMapLocationMode = AMapLocationClientOption.AMapLocationMode.Device_Sensors;
        }
        aMapLocationClientOption.setLocationMode(aMapLocationMode);
        aMapLocationClientOption.setOnceLocation(inner_3dMap_locationOption.isOnceLocation());
        aMapLocationClientOption.setNeedAddress(inner_3dMap_locationOption.isNeedAddress());
        aMapLocationClientOption.setLocationCacheEnable(inner_3dMap_locationOption.isLocationCacheEnable());
        return aMapLocationClientOption;
    }

    public static Inner_3dMap_location b(AMapLocation aMapLocation) {
        Inner_3dMap_location inner_3dMap_location = new Inner_3dMap_location("");
        if (aMapLocation != null) {
            try {
                inner_3dMap_location.setLatitude(aMapLocation.getLatitude());
                inner_3dMap_location.setLongitude(aMapLocation.getLongitude());
                inner_3dMap_location.setAccuracy(aMapLocation.getAccuracy());
                inner_3dMap_location.setBearing(aMapLocation.getBearing());
                inner_3dMap_location.setAltitude(aMapLocation.getAltitude());
                inner_3dMap_location.setProvider(aMapLocation.getProvider());
                inner_3dMap_location.setSpeed(aMapLocation.getSpeed());
                inner_3dMap_location.setTime(aMapLocation.getTime());
                inner_3dMap_location.setErrorCode(aMapLocation.getErrorCode());
                inner_3dMap_location.setErrorInfo(aMapLocation.getErrorInfo());
                inner_3dMap_location.setLocationType(aMapLocation.getLocationType());
                inner_3dMap_location.setLocationDetail(aMapLocation.getLocationDetail());
                inner_3dMap_location.setProvince(aMapLocation.getProvince());
                inner_3dMap_location.setCity(aMapLocation.getCity());
                inner_3dMap_location.setCityCode(aMapLocation.getCityCode());
                inner_3dMap_location.setCountry(aMapLocation.getCountry());
                inner_3dMap_location.setDistrict(aMapLocation.getDistrict());
                inner_3dMap_location.setAddress(aMapLocation.getAddress());
                inner_3dMap_location.setAdCode(aMapLocation.getAdCode());
                inner_3dMap_location.setExtras(aMapLocation.getExtras());
                inner_3dMap_location.setRoad(aMapLocation.getRoad());
            } catch (Throwable th) {
                b9.b(th, "Util", "converterLocation");
            }
        }
        return inner_3dMap_location;
    }

    public static void d(Object obj, Inner_3dMap_locationOption inner_3dMap_locationOption) {
        if (obj == null) {
            return;
        }
        ((AMapLocationClient) obj).setLocationOption(a(inner_3dMap_locationOption));
    }

    public final void c(Object obj, Inner_3dMap_locationListener inner_3dMap_locationListener) {
        if (this.f10922a == null) {
            this.f10922a = new u8();
        }
        this.f10922a.a(inner_3dMap_locationListener);
        ((AMapLocationClient) obj).setLocationListener(this.f10922a);
    }
}
