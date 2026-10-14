package com.amap.api.maps.utils;

import android.util.Pair;
import com.amap.api.mapcore.util.r3;
import com.amap.api.maps.AMapUtils;
import com.amap.api.maps.model.LatLng;
import com.autonavi.amap.mapcore.DPoint;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class SpatialRelationUtil {
    public static final int A_CIRCLE_DEGREE = 360;
    public static final int A_HALF_CIRCLE_DEGREE = 180;
    public static final int MIN_OFFSET_DEGREE = 50;
    public static final int MIN_POLYLINE_POINT_SIZE = 2;

    public static Pair<Integer, LatLng> calShortestDistancePoint(List<LatLng> list, LatLng latLng, float f2, double d2) {
        if (list != null && latLng != null) {
            try {
                if (list.size() != 0) {
                    ArrayList arrayList = new ArrayList();
                    int i = 0;
                    for (LatLng latLng2 : list) {
                        arrayList.add(DPoint.obtain(latLng2.latitude, latLng2.longitude));
                        if (latLng2.equals(latLng)) {
                            return new Pair<>(Integer.valueOf(i), latLng);
                        }
                        i++;
                    }
                    Pair<Integer, DPoint> pairCalShortestDistancePoint = calShortestDistancePoint(arrayList, DPoint.obtain(latLng.latitude, latLng.longitude), f2);
                    if (pairCalShortestDistancePoint != null) {
                        DPoint dPoint = (DPoint) pairCalShortestDistancePoint.second;
                        if (AMapUtils.calculateLineDistance(new LatLng(dPoint.x, dPoint.y), latLng) < d2) {
                            Object obj = pairCalShortestDistancePoint.first;
                            Object obj2 = pairCalShortestDistancePoint.second;
                            return new Pair<>(obj, new LatLng(((DPoint) obj2).x, ((DPoint) obj2).y));
                        }
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return null;
    }

    private static boolean checkRotateIsMatch(DPoint dPoint, DPoint dPoint2, float f2) {
        if (f2 == -1.0f) {
            return true;
        }
        if (dPoint != null && dPoint2 != null) {
            float fAbs = Math.abs((r3.e(dPoint, dPoint2) + 360.0f) - f2) % 360.0f;
            if (fAbs > 180.0f) {
                fAbs = 360.0f - fAbs;
            }
            if (fAbs < 50.0f) {
                return true;
            }
        }
        return false;
    }

    private static Pair<Double, DPoint> pointToSegDist(double d2, double d3, double d4, double d5, double d6, double d7) {
        double d8 = d6 - d4;
        double d9 = d2 - d4;
        double d10 = d7 - d5;
        double d11 = d3 - d5;
        double d12 = (d8 * d9) + (d10 * d11);
        if (d12 <= 0.0d) {
            return new Pair<>(Double.valueOf(Math.sqrt((d9 * d9) + (d11 * d11))), new DPoint(d4, d5));
        }
        double d13 = (d8 * d8) + (d10 * d10);
        if (d12 >= d13) {
            double d14 = d2 - d6;
            double d15 = d3 - d7;
            return new Pair<>(Double.valueOf(Math.sqrt((d14 * d14) + (d15 * d15))), new DPoint(d6, d7));
        }
        double d16 = d12 / d13;
        double d17 = d4 + (d8 * d16);
        double d18 = d5 + (d10 * d16);
        double d19 = d2 - d17;
        double d20 = d18 - d3;
        return new Pair<>(Double.valueOf(Math.sqrt((d19 * d19) + (d20 * d20))), new DPoint(d17, d18));
    }

    public static Pair<Integer, LatLng> calShortestDistancePoint(List<LatLng> list, LatLng latLng) {
        if (list != null && latLng != null) {
            try {
                if (list.size() != 0) {
                    ArrayList arrayList = new ArrayList();
                    int i = 0;
                    for (LatLng latLng2 : list) {
                        arrayList.add(DPoint.obtain(latLng2.latitude, latLng2.longitude));
                        if (latLng2.equals(latLng)) {
                            return new Pair<>(Integer.valueOf(i), latLng);
                        }
                        i++;
                    }
                    Pair<Integer, DPoint> pairCalShortestDistancePoint = calShortestDistancePoint(arrayList, DPoint.obtain(latLng.latitude, latLng.longitude));
                    if (pairCalShortestDistancePoint != null) {
                        Object obj = pairCalShortestDistancePoint.first;
                        Object obj2 = pairCalShortestDistancePoint.second;
                        return new Pair<>(obj, new LatLng(((DPoint) obj2).x, ((DPoint) obj2).y));
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return null;
    }

    public static Pair<Integer, DPoint> calShortestDistancePoint(List<DPoint> list, DPoint dPoint) {
        return calShortestDistancePoint(list, dPoint, -1.0f);
    }

    public static Pair<Integer, DPoint> calShortestDistancePoint(List<DPoint> list, DPoint dPoint, float f2) {
        int i;
        int i2;
        List<DPoint> list2 = list;
        DPoint dPoint2 = dPoint;
        Pair<Integer, DPoint> pair = null;
        if (list2 != null && dPoint2 != null && list.size() != 0) {
            if (list.size() >= 2) {
                DPoint dPoint3 = list2.get(0);
                double dDoubleValue = 0.0d;
                int size = list.size();
                int i3 = 1;
                int i4 = 1;
                while (true) {
                    int i5 = size - 1;
                    if (i4 > i5) {
                        break;
                    }
                    DPoint dPoint4 = list2.get(i4);
                    if (i4 == i5 && dPoint4.equals(dPoint2)) {
                        return new Pair<>(Integer.valueOf(i4), dPoint2);
                    }
                    if (!checkRotateIsMatch(dPoint3, dPoint4, f2)) {
                        i2 = size;
                        i = i4;
                    } else {
                        if (dPoint3.equals(dPoint2)) {
                            return new Pair<>(Integer.valueOf(i4 - i3), dPoint2);
                        }
                        i = i4;
                        double d2 = dDoubleValue;
                        i2 = size;
                        Pair<Double, DPoint> pairPointToSegDist = pointToSegDist(dPoint2.x, dPoint2.y, dPoint3.x, dPoint3.y, dPoint4.x, dPoint4.y);
                        if (pair == null) {
                            dDoubleValue = ((Double) pairPointToSegDist.first).doubleValue();
                            pair = new Pair<>(Integer.valueOf(i - 1), pairPointToSegDist.second);
                        } else if (d2 > ((Double) pairPointToSegDist.first).doubleValue()) {
                            dDoubleValue = ((Double) pairPointToSegDist.first).doubleValue();
                            pair = new Pair<>(Integer.valueOf(i - 1), pairPointToSegDist.second);
                        } else {
                            dDoubleValue = d2;
                        }
                    }
                    i4 = i + 1;
                    list2 = list;
                    dPoint2 = dPoint;
                    dPoint3 = dPoint4;
                    size = i2;
                    i3 = 1;
                }
            } else {
                return null;
            }
        }
        return pair;
    }
}
