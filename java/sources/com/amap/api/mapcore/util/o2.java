package com.amap.api.mapcore.util;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes5.dex */
public class o2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String[] f11041a = {"land", "water", "green", "building", "highway", "arterial", "local", "railway", "subway", "boundary", "poilabel", "districtlable"};
    public static final String[][] b = {new String[]{"land", "edu", "public", "traffic", "scenicSpot", "culture", "health", "sports", "business", "parkingLot", "subway"}, new String[]{"water"}, new String[]{"green"}, new String[]{"buildings"}, new String[]{"highWay"}, new String[]{"ringRoad", "nationalRoad"}, new String[]{"provincialRoad", "secondaryRoad", "levelThreeRoad", "levelFourRoad", "roadsBeingBuilt", "overPass", "underPass", "other"}, new String[]{"railway", "highSpeedRailway"}, new String[]{"subwayline", "subwayBeingBuilt"}, new String[]{"China", "foreign", "provincial"}, new String[]{"guideBoards", "pois", "aois"}, new String[]{"continent", "country", "province", "city", "district", "town", "village"}};
    public static final String[] c = {"regions", "water", "regions", "buildings", "roads", "roads", "roads", "roads", "roads", "borders", "labels", "labels"};

    public static String[] a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int i = -1;
        int i2 = 0;
        while (true) {
            String[] strArr = f11041a;
            if (i2 >= strArr.length) {
                break;
            }
            if (strArr[i2].equals(str)) {
                i = i2;
                break;
            }
            i2++;
        }
        if (i >= 0) {
            return b[i];
        }
        return null;
    }

    public static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int i = -1;
        int i2 = 0;
        while (true) {
            String[] strArr = f11041a;
            if (i2 >= strArr.length) {
                break;
            }
            if (strArr[i2].equals(str)) {
                i = i2;
                break;
            }
            i2++;
        }
        if (i >= 0) {
            return c[i];
        }
        return null;
    }
}
