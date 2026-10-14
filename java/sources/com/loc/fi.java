package com.loc;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClientOption;
import com.amap.api.location.DPoint;
import com.amap.api.maps.model.MyLocationStyle;
import com.iflytek.cloud.SpeechConstant;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialConstants;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class fi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f12904a = "5.3";
    static String c = "http://apilocate.amap.com/mobile/binary";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static String f12905d = "http://dualstack-a.apilocate.amap.com/mobile/binary";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static String f12906e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static String f12907f = "11G;11K;13J;13S;15O;15U;17J;17Y;197";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static String f12908g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static String f12909h = null;
    public static int i = 30000;
    public static String j = null;
    public static String k = null;
    static String l = null;
    static HashMap<String, String> m = null;
    static boolean n = false;
    static boolean o = false;
    private static v q = null;
    private static boolean r = false;
    private static boolean s = false;
    public static final String[] b = {"5.1"};
    private static final String[] p = {"com.amap.api.location", "com.loc", "com.amap.api.fence"};

    public static Bundle a(AMapLocationClientOption aMapLocationClientOption) {
        Bundle bundle = new Bundle();
        if (aMapLocationClientOption == null) {
            aMapLocationClientOption = new AMapLocationClientOption();
        }
        try {
            bundle.putParcelable("opt", aMapLocationClientOption);
        } catch (Throwable th) {
            a(th, "CoreUtil", "getOptionBundle");
        }
        return bundle;
    }

    public static AMapLocation a(AMapLocation aMapLocation, AMapLocation aMapLocation2) {
        if (aMapLocation2 == null) {
            return aMapLocation;
        }
        try {
            aMapLocation.setCountry(aMapLocation2.getCountry());
            aMapLocation.setRoad(aMapLocation2.getRoad());
            aMapLocation.setPoiName(aMapLocation2.getPoiName());
            aMapLocation.setStreet(aMapLocation2.getStreet());
            aMapLocation.setNumber(aMapLocation2.getStreetNum());
            String cityCode = aMapLocation2.getCityCode();
            String adCode = aMapLocation2.getAdCode();
            aMapLocation.setCityCode(cityCode);
            aMapLocation.setAdCode(adCode);
            aMapLocation.setCity(aMapLocation2.getCity());
            aMapLocation.setDistrict(aMapLocation2.getDistrict());
            aMapLocation.setProvince(aMapLocation2.getProvince());
            aMapLocation.setAoiName(aMapLocation2.getAoiName());
            aMapLocation.setAddress(aMapLocation2.getAddress());
            aMapLocation.setDescription(aMapLocation2.getDescription());
            if (aMapLocation.getExtras() != null) {
                aMapLocation.getExtras().putString("citycode", aMapLocation2.getCityCode());
                aMapLocation.getExtras().putString(SocialConstants.PARAM_APP_DESC, aMapLocation2.getExtras().getString(SocialConstants.PARAM_APP_DESC));
                aMapLocation.getExtras().putString("adcode", aMapLocation2.getAdCode());
            } else {
                Bundle bundle = new Bundle();
                bundle.putString("citycode", aMapLocation2.getCityCode());
                bundle.putString(SocialConstants.PARAM_APP_DESC, aMapLocation2.getExtras().getString(SocialConstants.PARAM_APP_DESC));
                bundle.putString("adcode", aMapLocation2.getAdCode());
                aMapLocation.setExtras(bundle);
            }
        } catch (Throwable unused) {
        }
        return aMapLocation;
    }

    public static AMapLocationClientOption a(Bundle bundle) {
        AMapLocationClientOption aMapLocationClientOption = new AMapLocationClientOption();
        if (bundle == null) {
            return aMapLocationClientOption;
        }
        try {
            bundle.setClassLoader(AMapLocationClientOption.class.getClassLoader());
            return (AMapLocationClientOption) bundle.getParcelable("opt");
        } catch (Throwable th) {
            a(th, "CoreUtil", "getOptionFromBundle");
            return aMapLocationClientOption;
        }
    }

    public static String a() {
        return c;
    }

    public static void a(Context context) {
        try {
            if (w.b(context)) {
                c = "http://abroad.apilocate.amap.com/mobile/binary";
                return;
            }
            f();
            String strA = ex.a(k.f(context));
            l = strA;
            a(strA);
        } catch (Throwable th) {
            a(th, "CoreUtil", "checkUrl");
        }
    }

    public static void a(AMapLocation aMapLocation, JSONObject jSONObject) {
        String strOptString;
        if (jSONObject != null) {
            try {
                double dOptDouble = jSONObject.optDouble("lat", aMapLocation.getLatitude());
                double dOptDouble2 = jSONObject.optDouble("lon", aMapLocation.getLongitude());
                aMapLocation.setProvider(jSONObject.optString("provider", aMapLocation.getProvider()));
                aMapLocation.setLatitude(dOptDouble);
                aMapLocation.setLongitude(dOptDouble2);
                aMapLocation.setAltitude(jSONObject.optDouble("altitude", aMapLocation.getAltitude()));
                try {
                    String strOptString2 = jSONObject.optString("accuracy");
                    if (!TextUtils.isEmpty(strOptString2)) {
                        aMapLocation.setAccuracy(Float.parseFloat(strOptString2));
                    }
                } catch (Throwable unused) {
                }
                try {
                    String strOptString3 = jSONObject.optString(SpeechConstant.SPEED);
                    if (!TextUtils.isEmpty(strOptString3)) {
                        aMapLocation.setSpeed(Float.parseFloat(strOptString3));
                    }
                } catch (Throwable unused2) {
                }
                try {
                    String strOptString4 = jSONObject.optString("bearing");
                    if (!TextUtils.isEmpty(strOptString4)) {
                        aMapLocation.setBearing(Float.parseFloat(strOptString4));
                    }
                } catch (Throwable unused3) {
                }
                aMapLocation.setAdCode(jSONObject.optString("adcode", aMapLocation.getAdCode()));
                aMapLocation.setCityCode(jSONObject.optString("citycode", aMapLocation.getCityCode()));
                aMapLocation.setAddress(jSONObject.optString("address", aMapLocation.getAddress()));
                String strOptString5 = jSONObject.optString(SocialConstants.PARAM_APP_DESC, "");
                aMapLocation.setCountry(jSONObject.optString("country", aMapLocation.getCountry()));
                aMapLocation.setProvince(jSONObject.optString("province", aMapLocation.getProvince()));
                aMapLocation.setCity(jSONObject.optString("city", aMapLocation.getCity()));
                aMapLocation.setDistrict(jSONObject.optString("district", aMapLocation.getDistrict()));
                aMapLocation.setRoad(jSONObject.optString("road", aMapLocation.getRoad()));
                aMapLocation.setStreet(jSONObject.optString("street", aMapLocation.getStreet()));
                aMapLocation.setNumber(jSONObject.optString(Constant.LOGIN_ACTIVITY_NUMBER, aMapLocation.getStreetNum()));
                aMapLocation.setPoiName(jSONObject.optString("poiname", aMapLocation.getPoiName()));
                aMapLocation.setAoiName(jSONObject.optString("aoiname", aMapLocation.getAoiName()));
                aMapLocation.setErrorCode(jSONObject.optInt(MyLocationStyle.ERROR_CODE, aMapLocation.getErrorCode()));
                aMapLocation.setErrorInfo(jSONObject.optString(MyLocationStyle.ERROR_INFO, aMapLocation.getErrorInfo()));
                aMapLocation.setLocationType(jSONObject.optInt(MyLocationStyle.LOCATION_TYPE, aMapLocation.getLocationType()));
                aMapLocation.setLocationDetail(jSONObject.optString("locationDetail", aMapLocation.getLocationDetail()));
                aMapLocation.setTime(jSONObject.optLong("time", aMapLocation.getTime()));
                boolean zOptBoolean = jSONObject.optBoolean("isOffset", aMapLocation.isOffset());
                aMapLocation.setOffset(zOptBoolean);
                aMapLocation.setBuildingId(jSONObject.optString("poiid", aMapLocation.getBuildingId()));
                aMapLocation.setFloor(jSONObject.optString("floor", aMapLocation.getFloor()));
                aMapLocation.setDescription(jSONObject.optString(SocialConstants.PARAM_COMMENT, aMapLocation.getDescription()));
                if (!jSONObject.has("coordType")) {
                    if (a(dOptDouble, dOptDouble2) && zOptBoolean) {
                        aMapLocation.setCoordType(AMapLocation.COORD_TYPE_GCJ02);
                    } else {
                        strOptString = AMapLocation.COORD_TYPE_WGS84;
                    }
                    Bundle bundle = new Bundle();
                    bundle.putString("citycode", aMapLocation.getCityCode());
                    bundle.putString(SocialConstants.PARAM_APP_DESC, strOptString5.toString());
                    bundle.putString("adcode", aMapLocation.getAdCode());
                    aMapLocation.setExtras(bundle);
                }
                strOptString = jSONObject.optString("coordType", AMapLocation.COORD_TYPE_GCJ02);
                aMapLocation.setCoordType(strOptString);
                Bundle bundle2 = new Bundle();
                bundle2.putString("citycode", aMapLocation.getCityCode());
                bundle2.putString(SocialConstants.PARAM_APP_DESC, strOptString5.toString());
                bundle2.putString("adcode", aMapLocation.getAdCode());
                aMapLocation.setExtras(bundle2);
            } catch (Throwable th) {
                a(th, "CoreUtil", "transformLocation");
            }
        }
    }

    private static void a(String str) {
        HashMap<String, String> map;
        if (str != null) {
            try {
                if (str.length() == 0 || (map = m) == null || !map.containsKey(str)) {
                    return;
                }
                String str2 = m.get(str);
                String str3 = null;
                if (str2 != null && str2.length() > 0) {
                    str3 = new String(ex.b(b(str2), str), "utf-8");
                }
                if (str3 == null || str3.length() <= 0 || !str3.contains("http:")) {
                    return;
                }
                f12906e = str3;
                c = str3;
            } catch (Throwable th) {
                a(th, "CoreUtil", "checkUrl");
            }
        }
    }

    public static void a(Throwable th, String str, String str2) {
        if ("reportError".equals(str2) || (th instanceof j)) {
            return;
        }
        try {
            am.b(th, str, str2);
        } catch (Throwable unused) {
        }
    }

    public static boolean a(double d2, double d3) {
        int i2 = (int) ((d3 - 73.0d) / 0.5d);
        int i3 = (int) ((d2 - 3.5d) / 0.5d);
        if (i3 < 0 || i3 >= 101 || i2 < 0 || i2 >= 124) {
            return false;
        }
        try {
            return "00000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100000001011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011101010111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111101111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000110111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011010111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001110011100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001010011100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111100110001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111000111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111110011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111000000000111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111100000000000010111110100000011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111110000000001111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111000000111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111101111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000101111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000011110000000001111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000011000011111100000000111111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000001111111100111111111100110111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000000101111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111011111000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100100000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100011100000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000111110000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110011111110000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110111111110000000000000000000000111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000011111111111111111111111111111111111111111111111100001111111111111111111111111111111111111111111111111010000000000000000000000111111111111111111111111111111111111111111110000000000000001111111111111111111111111111111111111111111100000000000000000000011111111111111111111111111111111100000000000000000000000000001111111111111111111111111111111111111111110000000000000000000001111111111111111111111111111111100000000000000000000000000000001111111111111111111111111111111111111111000000000000000000000111111111111111111111111111111110000000000000000000000000000001111111111111111111111111111111111111111100000000000000000000111111111111111111111111111111000000000000000000000000000000000111111111111111111111111111111111111111111000000000000000000001111111111111111111111111110000000000000000000000000000000000001110011111111111111111111111111111111111111100000000000000000000011111111111111111100000000000000000000000000000000000000000000000001111111111111111111111111111111111111000000000000000000001111111111111111111000000000000000000000000000000000000000000000000011111111111111111111111111111111111100000000000000000000011111111111111111100000000000000000000000000000000000000000000000000011111111111111111111111111111111111000000000000000000001111111111111111100000000000000000000000000000000000000000000000000000000111111111111111111111111111111110000000000000000000000000111111111100000000000000000000000000000000000000000000000000111111111111111111111111111111111111111000000000000000000000000011111111100000000000000000000000000000000000000000000000000011111111111111111111111111111110001111100000000000000000000000000111110000000000000000000000000000000000000000000000000000001111111111111111111111111111111000000000000000000000000000000000001110000000000000000000000000000000000000000000000000000000011111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010110000000000000000000000".charAt((i3 * 124) + i2) == '1';
        } catch (Throwable th) {
            a(th, "CoreUtil", "isChina");
            return true;
        }
    }

    private static boolean a(double d2, double d3, double d4, double d5, double d6, double d7) {
        return Math.abs(b(d2, d3, d4, d5, d6, d7)) < 1.0E-9d && (d2 - d4) * (d2 - d6) <= 0.0d && (d3 - d5) * (d3 - d7) <= 0.0d;
    }

    private static boolean a(double d2, double d3, double d4, double d5, double d6, double d7, double d8) {
        double d9 = d4 - d2;
        double d10 = d8 - d7;
        double d11 = d5 - d3;
        double d12 = 180.0d - d6;
        double d13 = (d9 * d10) - (d11 * d12);
        if (d13 != 0.0d) {
            double d14 = d3 - d7;
            double d15 = d2 - d6;
            double d16 = ((d12 * d14) - (d10 * d15)) / d13;
            double d17 = ((d14 * d9) - (d15 * d11)) / d13;
            if (d16 >= 0.0d && d16 <= 1.0d && d17 >= 0.0d && d17 <= 1.0d) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x009c  */
    public static boolean a(DPoint dPoint, List<DPoint> list) {
        int i2;
        double longitude = dPoint.getLongitude();
        double latitude = dPoint.getLatitude();
        double latitude2 = dPoint.getLatitude();
        if (!list.get(0).equals(list.get(list.size() - 1))) {
            list.add(list.get(0));
        }
        int i3 = 0;
        int i4 = 0;
        while (i3 < list.size() - 1) {
            double longitude2 = list.get(i3).getLongitude();
            double latitude3 = list.get(i3).getLatitude();
            int i5 = i3 + 1;
            double longitude3 = list.get(i5).getLongitude();
            double latitude4 = list.get(i5).getLatitude();
            if (a(longitude, latitude, longitude2, latitude3, longitude3, latitude4)) {
                return true;
            }
            if (Math.abs(latitude4 - latitude3) < 1.0E-9d) {
                i2 = i5;
            } else if (a(longitude2, latitude3, longitude, latitude, 180.0d, latitude2)) {
                if (latitude3 > latitude4) {
                    i4++;
                }
                i2 = i5;
            } else if (a(longitude3, latitude4, longitude, latitude, 180.0d, latitude2)) {
                if (latitude4 > latitude3) {
                    i4++;
                }
                i2 = i5;
            } else {
                i2 = i5;
                if (a(longitude2, latitude3, longitude3, latitude4, longitude, latitude, latitude2)) {
                    i4++;
                }
            }
            i3 = i2;
        }
        return i4 % 2 != 0;
    }

    private static double b(double d2, double d3, double d4, double d5, double d6, double d7) {
        return ((d4 - d2) * (d7 - d3)) - ((d6 - d2) * (d5 - d3));
    }

    public static String b() {
        return f12905d;
    }

    public static String b(Context context) {
        return r.a(k.e(context));
    }

    private static byte[] b(String str) {
        if (str == null || str.length() < 2) {
            return new byte[0];
        }
        String lowerCase = str.toLowerCase(Locale.US);
        int length = lowerCase.length() / 2;
        byte[] bArr = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i2 * 2;
            bArr[i2] = (byte) (fp.f(lowerCase.substring(i3, i3 + 2)) & 255);
        }
        return bArr;
    }

    public static v c() {
        try {
            if (q == null) {
                q = new v.a("loc", "5.6.2", "AMAP_Location_SDK_Android 5.6.2").a(e()).a("5.6.2").a();
            }
        } catch (Throwable th) {
            a(th, "CoreUtil", "getSDKInfo");
        }
        return q;
    }

    public static void c(Context context) {
        try {
            if (w.b(context)) {
                c = "http://abroad.apilocate.amap.com/mobile/binary";
                f12905d = "http://abroad.apilocate.amap.com/mobile/binary";
            } else {
                c = "http://apilocate.amap.com/mobile/binary";
                f12905d = "http://dualstack-a.apilocate.amap.com/mobile/binary";
            }
        } catch (Throwable th) {
            a(th, "CoreUtil", "changeUrl");
        }
    }

    public static String d() {
        return f12907f;
    }

    private static String[] e() {
        return (String[]) p.clone();
    }

    private static void f() {
        try {
            if (m == null) {
                m = new HashMap<>(16);
            }
            m.clear();
            m.put("fe643c382e5c3b3962141f1a2e815a78", "FB923EE67A8B4032DAA517DD8CD7A26FF7C25B0C3663F92A0B61251C4FFFA858DF169D61321C3E7919CB67DF8EFEC827");
            m.put("9a571aa113ad987d626c0457828962e6", "D2FF99A88BEB04683D89470D4FA72B1749DA456AB0D0F1A476477CE5A6874F53A9106423D905F9D808C0FCE8E7F1E04AC642F01FE41D0C7D933971F45CBA72B7");
            m.put("668319f11506def6208d6afe320dfd52", "53E53D46011A6BBAEA4FAE5442E659E0577CDD336F930C28635C322FB3F51C3C63F7FBAC9EAE448DFA2E5E5D716C4807");
        } catch (Throwable th) {
            a(th, "CoreUtil", "initUrlHash");
        }
    }
}
