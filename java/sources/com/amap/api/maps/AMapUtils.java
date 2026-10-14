package com.amap.api.maps;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import com.amap.api.mapcore.util.c5;
import com.amap.api.mapcore.util.e5;
import com.amap.api.mapcore.util.gb;
import com.amap.api.mapcore.util.m5;
import com.amap.api.mapcore.util.x9;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.NaviPara;
import com.amap.api.maps.model.PoiPara;
import com.amap.api.maps.model.RoutePara;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public class AMapUtils {
    public static final int BUS_COMFORT = 4;
    public static final int BUS_MONEY_LITTLE = 1;
    public static final int BUS_NO_SUBWAY = 5;
    public static final int BUS_TIME_FIRST = 0;
    public static final int BUS_TRANSFER_LITTLE = 2;
    public static final int BUS_WALK_LITTLE = 3;
    public static final int DRIVING_AVOID_CONGESTION = 4;
    public static final int DRIVING_DEFAULT = 0;
    public static final int DRIVING_NO_HIGHWAY = 3;
    public static final int DRIVING_NO_HIGHWAY_AVOID_CONGESTION = 6;
    public static final int DRIVING_NO_HIGHWAY_AVOID_SHORT_MONEY = 5;
    public static final int DRIVING_NO_HIGHWAY_SAVE_MONEY_AVOID_CONGESTION = 8;
    public static final int DRIVING_SAVE_MONEY = 1;
    public static final int DRIVING_SAVE_MONEY_AVOID_CONGESTION = 7;
    public static final int DRIVING_SHORT_DISTANCE = 2;

    static class a extends Thread {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f11477a;
        Context b;

        public a(String str, Context context) {
            this.f11477a = "";
            this.f11477a = str;
            if (context != null) {
                this.b = context.getApplicationContext();
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            if (this.b != null) {
                try {
                    m5.b bVar = new m5.b(this.f11477a, "7.4.0", x9.c);
                    bVar.b(new String[]{"com.amap.api.maps"});
                    e5.c(this.b, bVar.c());
                    interrupt();
                } catch (gb e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    private static void a(RoutePara routePara, Context context, int i) throws AMapException {
        if (!a(context)) {
            throw new AMapException(AMapException.AMAP_NOT_SUPPORT);
        }
        if (!a(routePara)) {
            throw new AMapException(AMapException.ILLEGAL_AMAP_ARGUMENT);
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(276824064);
            intent.addCategory("android.intent.category.DEFAULT");
            intent.setData(Uri.parse(b(routePara, context, i)));
            intent.setPackage("com.autonavi.minimap");
            new a("oan", context).start();
            context.startActivity(intent);
        } catch (Throwable unused) {
            throw new AMapException(AMapException.AMAP_NOT_SUPPORT);
        }
    }

    private static String b(RoutePara routePara, Context context, int i) {
        String str = String.format(Locale.US, "androidamap://route?sourceApplication=%s&slat=%f&slon=%f&sname=%s&dlat=%f&dlon=%f&dname=%s&dev=0&t=%d", c5.e(context), Double.valueOf(routePara.getStartPoint().latitude), Double.valueOf(routePara.getStartPoint().longitude), routePara.getStartName(), Double.valueOf(routePara.getEndPoint().latitude), Double.valueOf(routePara.getEndPoint().longitude), routePara.getEndName(), Integer.valueOf(i));
        if (i == 1) {
            return str + "&m=" + routePara.getTransitRouteStyle();
        }
        if (i != 2) {
            return str;
        }
        return str + "&m=" + routePara.getDrivingRouteStyle();
    }

    public static float calculateArea(LatLng latLng, LatLng latLng2) {
        if (latLng == null || latLng2 == null) {
            try {
                throw new AMapException(AMapException.ERROR_ILLEGAL_VALUE);
            } catch (AMapException e2) {
                e2.printStackTrace();
                return BitmapDescriptorFactory.HUE_RED;
            }
        }
        try {
            double dSin = Math.sin((latLng.latitude * 3.141592653589793d) / 180.0d) - Math.sin((latLng2.latitude * 3.141592653589793d) / 180.0d);
            double d2 = (latLng2.longitude - latLng.longitude) / 360.0d;
            if (d2 < 0.0d) {
                d2 += 1.0d;
            }
            return (float) (dSin * 2.5560394669790553E14d * d2);
        } catch (Throwable th) {
            th.printStackTrace();
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    public static float calculateLineDistance(LatLng latLng, LatLng latLng2) {
        if (latLng == null || latLng2 == null) {
            try {
                throw new AMapException(AMapException.ERROR_ILLEGAL_VALUE);
            } catch (AMapException e2) {
                e2.printStackTrace();
                return BitmapDescriptorFactory.HUE_RED;
            }
        }
        try {
            double d2 = latLng.longitude;
            double d3 = d2 * 0.01745329251994329d;
            double d4 = latLng.latitude * 0.01745329251994329d;
            double d5 = latLng2.longitude * 0.01745329251994329d;
            double d6 = latLng2.latitude * 0.01745329251994329d;
            double dSin = Math.sin(d3);
            double dSin2 = Math.sin(d4);
            double dCos = Math.cos(d3);
            double dCos2 = Math.cos(d4);
            double dSin3 = Math.sin(d5);
            double dSin4 = Math.sin(d6);
            double dCos3 = Math.cos(d5);
            double dCos4 = Math.cos(d6);
            double[] dArr = {dCos * dCos2, dCos2 * dSin, dSin2};
            double[] dArr2 = {dCos3 * dCos4, dCos4 * dSin3, dSin4};
            return (float) (Math.asin(Math.sqrt((((dArr[0] - dArr2[0]) * (dArr[0] - dArr2[0])) + ((dArr[1] - dArr2[1]) * (dArr[1] - dArr2[1]))) + ((dArr[2] - dArr2[2]) * (dArr[2] - dArr2[2]))) / 2.0d) * 1.27420015798544E7d);
        } catch (Throwable th) {
            th.printStackTrace();
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    public static void getLatestAMapApp(Context context) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(276824064);
            intent.addCategory("android.intent.category.DEFAULT");
            intent.setData(Uri.parse("http://wap.amap.com/"));
            new a("glaa", context).start();
            context.startActivity(intent);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void openAMapDrivingRoute(RoutePara routePara, Context context) throws AMapException {
        a(routePara, context, 2);
    }

    public static void openAMapNavi(NaviPara naviPara, Context context) throws AMapException {
        if (!a(context)) {
            throw new AMapException(AMapException.AMAP_NOT_SUPPORT);
        }
        if (naviPara.getTargetPoint() == null) {
            throw new AMapException(AMapException.ILLEGAL_AMAP_ARGUMENT);
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(276824064);
            intent.addCategory("android.intent.category.DEFAULT");
            intent.setData(Uri.parse(a(naviPara, context)));
            intent.setPackage("com.autonavi.minimap");
            new a("oan", context).start();
            context.startActivity(intent);
        } catch (Throwable unused) {
            throw new AMapException(AMapException.AMAP_NOT_SUPPORT);
        }
    }

    public static void openAMapPoiNearbySearch(PoiPara poiPara, Context context) throws AMapException {
        if (!a(context)) {
            throw new AMapException(AMapException.AMAP_NOT_SUPPORT);
        }
        if (poiPara.getKeywords() == null || poiPara.getKeywords().trim().length() <= 0) {
            throw new AMapException(AMapException.ILLEGAL_AMAP_ARGUMENT);
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(276824064);
            intent.addCategory("android.intent.category.DEFAULT");
            intent.setData(Uri.parse(a(poiPara, context)));
            intent.setPackage("com.autonavi.minimap");
            new a("oan", context).start();
            context.startActivity(intent);
        } catch (Throwable unused) {
            throw new AMapException(AMapException.AMAP_NOT_SUPPORT);
        }
    }

    public static void openAMapTransitRoute(RoutePara routePara, Context context) throws AMapException {
        a(routePara, context, 1);
    }

    public static void openAMapWalkingRoute(RoutePara routePara, Context context) throws AMapException {
        a(routePara, context, 4);
    }

    public static float calculateArea(List<LatLng> list) {
        if (list == null || list.size() < 3) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        double dCos = 0.0d;
        double d2 = 111319.49079327357d;
        int size = list.size();
        int i = 0;
        while (i < size) {
            LatLng latLng = list.get(i);
            i++;
            LatLng latLng2 = list.get(i % size);
            dCos += (((latLng.longitude * d2) * Math.cos(latLng.latitude * 0.017453292519943295d)) * (latLng2.latitude * 111319.49079327357d)) - (((latLng2.longitude * d2) * Math.cos(latLng2.latitude * 0.017453292519943295d)) * (latLng.latitude * d2));
            d2 = 111319.49079327357d;
        }
        return (float) Math.abs(dCos / 2.0d);
    }

    private static boolean a(RoutePara routePara) {
        return (routePara.getStartPoint() == null || routePara.getEndPoint() == null || routePara.getStartName() == null || routePara.getStartName().trim().length() <= 0 || routePara.getEndName() == null || routePara.getEndName().trim().length() <= 0) ? false : true;
    }

    private static String a(NaviPara naviPara, Context context) {
        return String.format(Locale.US, "androidamap://navi?sourceApplication=%s&lat=%f&lon=%f&dev=0&style=%d", c5.e(context), Double.valueOf(naviPara.getTargetPoint().latitude), Double.valueOf(naviPara.getTargetPoint().longitude), Integer.valueOf(naviPara.getNaviStyle()));
    }

    private static String a(PoiPara poiPara, Context context) {
        String str = String.format(Locale.US, "androidamap://arroundpoi?sourceApplication=%s&keywords=%s&dev=0", c5.e(context), poiPara.getKeywords());
        if (poiPara.getCenter() == null) {
            return str;
        }
        return str + "&lat=" + poiPara.getCenter().latitude + "&lon=" + poiPara.getCenter().longitude;
    }

    private static boolean a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo("com.autonavi.minimap", 0) != null;
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }
}
