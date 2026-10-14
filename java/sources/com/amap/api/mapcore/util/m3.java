package com.amap.api.mapcore.util;

import com.amap.api.maps.model.LatLng;

/* JADX INFO: loaded from: classes5.dex */
public class m3 {
    private static double a(LatLng latLng, LatLng latLng2, LatLng latLng3) {
        double d2 = latLng.latitude;
        double d3 = d2 - latLng3.latitude;
        double d4 = latLng.longitude;
        double d5 = latLng2.longitude;
        return ((d4 - d5) * (d2 - latLng2.latitude)) - ((d4 - d5) * d3);
    }

    public static boolean b(LatLng latLng, LatLng latLng2, LatLng latLng3, LatLng latLng4) {
        double dA = a(latLng3, latLng4, latLng);
        double dA2 = a(latLng3, latLng4, latLng2);
        double dA3 = a(latLng, latLng2, latLng3);
        double dA4 = a(latLng, latLng2, latLng4);
        if (((dA > 0.0d && dA2 < 0.0d) || (dA < 0.0d && dA2 > 0.0d)) && ((dA3 > 0.0d && dA4 < 0.0d) || (dA3 < 0.0d && dA4 > 0.0d))) {
            return true;
        }
        if (dA == 0.0d && c(latLng3, latLng4, latLng)) {
            return true;
        }
        if (dA2 == 0.0d && c(latLng3, latLng4, latLng2)) {
            return true;
        }
        if (dA3 == 0.0d && c(latLng, latLng2, latLng3)) {
            return true;
        }
        return dA4 == 0.0d && c(latLng, latLng2, latLng4);
    }

    private static boolean c(LatLng latLng, LatLng latLng2, LatLng latLng3) {
        double d2 = latLng.longitude;
        double d3 = latLng2.longitude;
        double d4 = d2 - d3 > 0.0d ? d2 : d3;
        if (d2 - d3 >= 0.0d) {
            d2 = d3;
        }
        double d5 = latLng.latitude;
        double d6 = latLng2.latitude;
        double d7 = d5 - d6 > 0.0d ? d5 : d6;
        if (d5 - d6 >= 0.0d) {
            d5 = d6;
        }
        double d8 = latLng3.longitude;
        if (d2 > d8 || d8 > d4) {
            return false;
        }
        double d9 = latLng3.latitude;
        return d5 <= d9 && d9 <= d7;
    }
}
