package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import cn.mucang.sundial.library.entity.ExtraKey;
import com.amap.api.maps.AMapUtils;
import com.amap.api.maps.MapsInitializer;
import com.amap.api.maps.model.BaseHoleOptions;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.CircleHoleOptions;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.LatLngBounds;
import com.amap.api.maps.model.PolygonHoleOptions;
import com.amap.api.maps.utils.SpatialRelationUtil;
import com.autonavi.amap.api.mapcore.IGLMapState;
import com.autonavi.amap.mapcore.AbstractCameraUpdateMessage;
import com.autonavi.amap.mapcore.DPoint;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.VirtualEarthProjection;
import com.autonavi.amap.mapcore.interfaces.IMapConfig;
import com.autonavi.base.amap.api.mapcore.IAMapDelegate;
import com.autonavi.base.amap.mapcore.AeUtil;
import com.autonavi.base.amap.mapcore.FPoint;
import com.autonavi.base.amap.mapcore.FPoint3;
import com.autonavi.base.amap.mapcore.FileUtil;
import com.serenegiant.glutils.ShaderConst;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class r3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static FPoint[] f11123a = {FPoint.obtain(), FPoint.obtain(), FPoint.obtain(), FPoint.obtain()};

    static {
        new ArrayList(4);
        new ArrayList(4);
    }

    public static String A(InputStream inputStream) {
        try {
            return new String(o0(inputStream), "utf-8");
        } catch (Throwable th) {
            e6.r(th, "Util", "decodeAssetResData");
            th.printStackTrace();
            return null;
        }
    }

    public static String B(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            Uri uri = Uri.parse(str);
            if (uri.getAuthority().startsWith("dualstack-")) {
                return str;
            }
            return uri.buildUpon().authority("dualstack-" + uri.getAuthority()).build().toString();
        } catch (Throwable unused) {
            return str;
        }
    }

    public static String C(String str, Object obj) {
        return str + "=" + String.valueOf(obj);
    }

    public static String D(String... strArr) {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        for (String str : strArr) {
            sb.append(str);
            if (i != strArr.length - 1) {
                sb.append(",");
            }
            i++;
        }
        return sb.toString();
    }

    public static FloatBuffer E(float[] fArr) {
        try {
            ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(fArr.length * 4);
            byteBufferAllocateDirect.order(ByteOrder.nativeOrder());
            FloatBuffer floatBufferAsFloatBuffer = byteBufferAllocateDirect.asFloatBuffer();
            floatBufferAsFloatBuffer.put(fArr);
            floatBufferAsFloatBuffer.position(0);
            return floatBufferAsFloatBuffer;
        } catch (Throwable th) {
            e6.r(th, "Util", "makeFloatBuffer1");
            th.printStackTrace();
            return null;
        }
    }

    public static FloatBuffer F(float[] fArr, FloatBuffer floatBuffer) {
        try {
            floatBuffer.clear();
            floatBuffer.put(fArr);
            floatBuffer.position(0);
            return floatBuffer;
        } catch (Throwable th) {
            e6.r(th, "Util", "makeFloatBuffer2");
            th.printStackTrace();
            return null;
        }
    }

    public static List<FPoint> G(FPoint[] fPointArr, List<FPoint> list, boolean z) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(list);
        for (byte b = 0; b < 4; b = (byte) (b + 1)) {
            arrayList.clear();
            int size = arrayList2.size();
            int i = 0;
            while (true) {
                if (i >= (z ? size : size - 1)) {
                    break;
                }
                FPoint fPoint = (FPoint) arrayList2.get(i % size);
                int i2 = i + 1;
                FPoint fPoint2 = (FPoint) arrayList2.get(i2 % size);
                if (i == 0 && Q(fPoint, fPointArr[b], fPointArr[(b + 1) % fPointArr.length])) {
                    arrayList.add(fPoint);
                }
                int i3 = b + 1;
                if (Q(fPoint, fPointArr[b], fPointArr[i3 % fPointArr.length])) {
                    if (Q(fPoint2, fPointArr[b], fPointArr[i3 % fPointArr.length])) {
                        arrayList.add(fPoint2);
                    } else {
                        arrayList.add(w(fPointArr[b], fPointArr[i3 % fPointArr.length], fPoint, fPoint2));
                    }
                } else if (Q(fPoint2, fPointArr[b], fPointArr[i3 % fPointArr.length])) {
                    arrayList.add(w(fPointArr[b], fPointArr[i3 % fPointArr.length], fPoint, fPoint2));
                    arrayList.add(fPoint2);
                }
                i = i2;
            }
            arrayList2.clear();
            for (int i4 = 0; i4 < arrayList.size(); i4++) {
                arrayList2.add(arrayList.get(i4));
            }
        }
        return arrayList2;
    }

    public static void H(Rect rect) {
        if (rect != null) {
            rect.set(Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
        }
    }

    public static void I(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    public static void J(Throwable th) {
        try {
            if (MapsInitializer.getExceptionLogger() != null) {
                MapsInitializer.getExceptionLogger().onException(th);
            }
        } catch (Throwable unused) {
        }
    }

    public static boolean K() {
        return Build.VERSION.SDK_INT >= 8;
    }

    public static boolean L(double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        double d10 = d4 - d2;
        double d11 = d9 - d7;
        double d12 = d5 - d3;
        double d13 = d8 - d6;
        double d14 = (d10 * d11) - (d12 * d13);
        if (d14 != 0.0d) {
            double d15 = d3 - d7;
            double d16 = d2 - d6;
            double d17 = ((d13 * d15) - (d11 * d16)) / d14;
            double d18 = ((d15 * d10) - (d16 * d12)) / d14;
            if (d17 >= 0.0d && d17 <= 1.0d && d18 >= 0.0d && d18 <= 1.0d) {
                return true;
            }
        }
        return false;
    }

    public static boolean M(Rect rect, int i, int i2) {
        return rect.contains(i, i2);
    }

    public static boolean N(BaseHoleOptions baseHoleOptions, LatLng latLng) {
        if (baseHoleOptions instanceof CircleHoleOptions) {
            CircleHoleOptions circleHoleOptions = (CircleHoleOptions) baseHoleOptions;
            LatLng center = circleHoleOptions.getCenter();
            return center != null && ((double) AMapUtils.calculateLineDistance(center, latLng)) <= circleHoleOptions.getRadius();
        }
        List<LatLng> points = ((PolygonHoleOptions) baseHoleOptions).getPoints();
        if (points == null || points.size() == 0) {
            return false;
        }
        return P(latLng, points);
    }

    public static boolean O(CircleHoleOptions circleHoleOptions, CircleHoleOptions circleHoleOptions2) {
        try {
            return ((double) AMapUtils.calculateLineDistance(circleHoleOptions2.getCenter(), circleHoleOptions.getCenter())) < circleHoleOptions.getRadius() + circleHoleOptions2.getRadius();
        } catch (Throwable th) {
            e6.r(th, "Util", "isPolygon2CircleIntersect");
            th.printStackTrace();
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x00a1  */
    public static boolean P(LatLng latLng, List<LatLng> list) {
        double d2;
        double d3 = latLng.longitude;
        double d4 = latLng.latitude;
        if (list.size() < 3) {
            return false;
        }
        if (!list.get(0).equals(list.get(list.size() - 1))) {
            list.add(list.get(0));
        }
        int i = 0;
        int i2 = 0;
        while (i < list.size() - 1) {
            double d5 = list.get(i).longitude;
            double d6 = list.get(i).latitude;
            i++;
            double d7 = list.get(i).longitude;
            double d8 = list.get(i).latitude;
            double d9 = d4;
            if (k0(d3, d4, d5, d6, d7, d8)) {
                return true;
            }
            if (Math.abs(d8 - d6) < 1.0E-9d) {
                d2 = d3;
            } else if (k0(d5, d6, d3, d9, 180.0d, d9)) {
                if (d6 > d8) {
                    i2++;
                }
                d2 = d3;
            } else if (k0(d7, d8, d3, d9, 180.0d, d9)) {
                if (d8 > d6) {
                    i2++;
                }
                d2 = d3;
            } else {
                d2 = d3;
                if (L(d5, d6, d7, d8, d3, d9, 180.0d, d9)) {
                    i2++;
                }
            }
            d3 = d2;
            d4 = d9;
        }
        return i2 % 2 != 0;
    }

    private static boolean Q(FPoint fPoint, FPoint fPoint2, FPoint fPoint3) {
        float f2 = ((PointF) fPoint3).x;
        float f3 = ((PointF) fPoint2).x;
        float f4 = ((PointF) fPoint).y;
        float f5 = ((PointF) fPoint2).y;
        return ((double) (((f2 - f3) * (f4 - f5)) - ((((PointF) fPoint).x - f3) * (((PointF) fPoint3).y - f5)))) >= 0.0d;
    }

    public static boolean R(FPoint fPoint, FPoint[] fPointArr) {
        if (fPointArr == null) {
            return false;
        }
        byte b = 0;
        while (b < fPointArr.length) {
            FPoint fPoint2 = fPointArr[b];
            int i = b + 1;
            if (!Q(fPoint, fPoint2, fPointArr[i % fPointArr.length])) {
                return false;
            }
            b = (byte) i;
        }
        return true;
    }

    public static boolean S(List<IPoint> list, int i, int i2) {
        if (i2 < 3) {
            return false;
        }
        int i3 = i2 - 1;
        double d2 = 0.0d;
        for (int i4 = 0; i4 < i2; i4++) {
            IPoint iPoint = list.get(i3);
            IPoint iPoint2 = list.get(i4);
            d2 += ((((double) ((Point) iPoint).x) / 1000000.0d) * (((double) ((Point) iPoint2).y) / 1000000.0d)) - ((((double) ((Point) iPoint2).x) / 1000000.0d) * (((double) ((Point) iPoint).y) / 1000000.0d));
            i3 = i4;
        }
        return d2 < 0.0d;
    }

    public static boolean T(List<BaseHoleOptions> list, CircleHoleOptions circleHoleOptions) {
        boolean zO = false;
        for (int i = 0; i < list.size(); i++) {
            BaseHoleOptions baseHoleOptions = list.get(i);
            if (baseHoleOptions instanceof PolygonHoleOptions) {
                zO = m0(((PolygonHoleOptions) baseHoleOptions).getPoints(), circleHoleOptions);
                if (zO) {
                    return true;
                }
            } else if ((baseHoleOptions instanceof CircleHoleOptions) && (zO = O(circleHoleOptions, (CircleHoleOptions) baseHoleOptions))) {
                return true;
            }
        }
        return zO;
    }

    public static boolean U(List<BaseHoleOptions> list, PolygonHoleOptions polygonHoleOptions) {
        boolean zM0 = false;
        for (int i = 0; i < list.size(); i++) {
            BaseHoleOptions baseHoleOptions = list.get(i);
            if (baseHoleOptions instanceof PolygonHoleOptions) {
                zM0 = V(((PolygonHoleOptions) baseHoleOptions).getPoints(), polygonHoleOptions.getPoints());
                if (zM0) {
                    return true;
                }
            } else if (baseHoleOptions instanceof CircleHoleOptions) {
                zM0 = m0(polygonHoleOptions.getPoints(), (CircleHoleOptions) baseHoleOptions);
                if (zM0) {
                    return true;
                }
            } else {
                continue;
            }
        }
        return zM0;
    }

    public static boolean V(List<LatLng> list, List<LatLng> list2) {
        for (int i = 0; i < list2.size(); i++) {
            try {
                if (P(list2.get(i), list)) {
                    return true;
                }
            } catch (Throwable th) {
                e6.r(th, "Util", "isPolygon2PolygonIntersect");
                th.printStackTrace();
                return false;
            }
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (P(list.get(i2), list2)) {
                return true;
            }
        }
        return n0(list, list2);
    }

    public static byte[] W(byte[] bArr, int i) {
        return X(bArr, i, i, true);
    }

    public static byte[] X(byte[] bArr, int i, int i2, boolean z) {
        try {
            Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
            Bitmap bitmapCopy = bitmapDecodeByteArray.copy(bitmapDecodeByteArray.getConfig(), true);
            int width = bitmapDecodeByteArray.getWidth();
            int height = bitmapDecodeByteArray.getHeight();
            for (int i3 = 0; i3 < width; i3++) {
                for (int i4 = 0; i4 < height; i4++) {
                    if (i3 != 0 && i4 != 0) {
                        bitmapCopy.setPixel(i3, i4, i);
                    } else if (!z) {
                        bitmapCopy.setPixel(i3, i4, i2);
                    }
                }
            }
            byte[] bArrR0 = r0(bitmapCopy);
            if (bArrR0 == null) {
                bArrR0 = bArr;
            }
            g0(bitmapCopy);
            g0(bitmapDecodeByteArray);
            return bArrR0;
        } catch (Throwable th) {
            th.printStackTrace();
            return bArr;
        }
    }

    public static byte[] Y(byte[] bArr, int[] iArr) {
        try {
            int i = 0;
            Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
            Bitmap bitmapCopy = bitmapDecodeByteArray.copy(bitmapDecodeByteArray.getConfig(), true);
            bitmapDecodeByteArray.getWidth();
            bitmapDecodeByteArray.getHeight();
            int i2 = 6;
            int i3 = 6;
            for (int i4 = 1; i4 < 72; i4++) {
                for (int i5 = 8; i5 < 12; i5++) {
                    bitmapDecodeByteArray.getPixel(i5, i4);
                    if (i4 < 4 * i3) {
                        bitmapCopy.setPixel(i5, i4, iArr[i]);
                    } else {
                        i++;
                        i2--;
                        i3 += i2;
                    }
                }
            }
            byte[] bArrR0 = r0(bitmapCopy);
            if (bArrR0 == null) {
                bArrR0 = bArr;
            }
            g0(bitmapCopy);
            g0(bitmapDecodeByteArray);
            return bArrR0;
        } catch (Throwable th) {
            th.printStackTrace();
            return bArr;
        }
    }

    public static synchronized int[] Z(int i, int i2, int i3, int i4, IMapConfig iMapConfig, IGLMapState iGLMapState, int i5, int i6) {
        int mapWidth;
        int mapHeight;
        int anchorX;
        int anchorY;
        mapWidth = iMapConfig.getMapWidth();
        mapHeight = iMapConfig.getMapHeight();
        anchorX = iMapConfig.getAnchorX();
        anchorY = iMapConfig.getAnchorY();
        return new int[]{(int) Math.max(i3 + d(iMapConfig.getMapZoomScale(), iGLMapState.getMapZoomer(), anchorX), Math.min(i5, i - d(iMapConfig.getMapZoomScale(), iGLMapState.getMapZoomer(), mapWidth - anchorX))), (int) Math.max(i2 + d(iMapConfig.getMapZoomScale(), iGLMapState.getMapZoomer(), anchorY), Math.min(i6, i4 - d(iMapConfig.getMapZoomScale(), iGLMapState.getMapZoomer(), mapHeight - anchorY)))};
    }

    public static double a(double d2, double d3, double d4, double d5, double d6, double d7) {
        return ((d4 - d2) * (d7 - d3)) - ((d6 - d2) * (d5 - d3));
    }

    public static FPoint[] a0(IAMapDelegate iAMapDelegate, boolean z) {
        int i;
        int i2;
        float skyHeight = iAMapDelegate.getSkyHeight();
        if (z) {
            i = 100;
            i2 = 10;
        } else {
            i = 0;
            i2 = 0;
        }
        FPoint fPointObtain = FPoint.obtain();
        int i3 = -i;
        int i4 = (int) (skyHeight - i2);
        iAMapDelegate.pixel2Map(i3, i4, fPointObtain);
        f11123a[0].set(((PointF) fPointObtain).x, ((PointF) fPointObtain).y);
        FPoint fPointObtain2 = FPoint.obtain();
        iAMapDelegate.pixel2Map(iAMapDelegate.getMapWidth() + i, i4, fPointObtain2);
        f11123a[1].set(((PointF) fPointObtain2).x, ((PointF) fPointObtain2).y);
        FPoint fPointObtain3 = FPoint.obtain();
        iAMapDelegate.pixel2Map(iAMapDelegate.getMapWidth() + i, iAMapDelegate.getMapHeight() + i, fPointObtain3);
        f11123a[2].set(((PointF) fPointObtain3).x, ((PointF) fPointObtain3).y);
        FPoint fPointObtain4 = FPoint.obtain();
        iAMapDelegate.pixel2Map(i3, iAMapDelegate.getMapHeight() + i, fPointObtain4);
        f11123a[3].set(((PointF) fPointObtain4).x, ((PointF) fPointObtain4).y);
        fPointObtain.recycle();
        fPointObtain2.recycle();
        fPointObtain3.recycle();
        fPointObtain4.recycle();
        return f11123a;
    }

    public static double b(float f2, double d2, double d3) {
        return 20.0d - (Math.log(d3 / (d2 * ((double) f2))) / Math.log(2.0d));
    }

    public static float b0(IMapConfig iMapConfig, int i, int i2, int i3, int i4, int i5, int i6) {
        float sz = iMapConfig.getSZ();
        if (i == i3 || i2 == i4) {
            return sz;
        }
        return Math.max((float) b(iMapConfig.getMapZoomScale(), i5, Math.abs(i3 - i)), (float) b(iMapConfig.getMapZoomScale(), i6, Math.abs(i4 - i2)));
    }

    private static float c(float f2, float f3, double d2) {
        return (float) (d2 / (Math.pow(2.0d, 20.0f - f3) * ((double) f2)));
    }

    public static int c0(int i, Bitmap bitmap, boolean z) {
        if (bitmap == null || bitmap.isRecycled()) {
            return 0;
        }
        if (i == 0) {
            int[] iArr = {0};
            GLES20.glGenTextures(1, iArr, 0);
            i = iArr[0];
        }
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(ShaderConst.GL_TEXTURE_2D, i);
        GLES20.glTexParameterf(ShaderConst.GL_TEXTURE_2D, 10241, 9729.0f);
        GLES20.glTexParameterf(ShaderConst.GL_TEXTURE_2D, 10240, 9729.0f);
        if (z) {
            GLES20.glTexParameterf(ShaderConst.GL_TEXTURE_2D, 10242, 10497.0f);
            GLES20.glTexParameterf(ShaderConst.GL_TEXTURE_2D, 10243, 10497.0f);
        } else {
            GLES20.glTexParameterf(ShaderConst.GL_TEXTURE_2D, 10242, 33071.0f);
            GLES20.glTexParameterf(ShaderConst.GL_TEXTURE_2D, 10243, 33071.0f);
        }
        GLUtils.texImage2D(ShaderConst.GL_TEXTURE_2D, 0, bitmap, 0);
        return i;
    }

    private static float d(float f2, float f3, float f4) {
        return (float) (((double) f4) * Math.pow(2.0d, 20.0f - f3) * ((double) f2));
    }

    public static String d0(Context context) {
        StringBuilder sb = new StringBuilder();
        sb.append(FileUtil.getMapBaseStorage(context));
        String str = File.separator;
        sb.append(str);
        sb.append("data");
        sb.append(str);
        return sb.toString();
    }

    public static float e(DPoint dPoint, DPoint dPoint2) {
        if (dPoint == null || dPoint2 == null) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        double d2 = dPoint.x;
        double d3 = dPoint2.x;
        return (float) ((Math.atan2(dPoint2.y - dPoint.y, d3 - d2) / 3.141592653589793d) * 180.0d);
    }

    public static List<FPoint> e0(FPoint[] fPointArr, List<FPoint> list, boolean z) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(list);
        for (byte b = 0; b < 4; b = (byte) (b + 1)) {
            arrayList.clear();
            int size = arrayList2.size();
            int i = 0;
            while (true) {
                if (i >= (z ? size : size - 1)) {
                    break;
                }
                FPoint3 fPoint3 = (FPoint3) arrayList2.get(i % size);
                int i2 = i + 1;
                FPoint3 fPoint4 = (FPoint3) arrayList2.get(i2 % size);
                if (i == 0 && Q(fPoint3, fPointArr[b], fPointArr[(b + 1) % fPointArr.length])) {
                    arrayList.add(fPoint3);
                }
                int i3 = b + 1;
                if (Q(fPoint3, fPointArr[b], fPointArr[i3 % fPointArr.length])) {
                    if (Q(fPoint4, fPointArr[b], fPointArr[i3 % fPointArr.length])) {
                        arrayList.add(fPoint4);
                    } else {
                        arrayList.add(v(fPointArr[b], fPointArr[i3 % fPointArr.length], fPoint3, fPoint4, fPoint4.colorIndex));
                    }
                } else if (Q(fPoint4, fPointArr[b], fPointArr[i3 % fPointArr.length])) {
                    arrayList.add(v(fPointArr[b], fPointArr[i3 % fPointArr.length], fPoint3, fPoint4, fPoint3.colorIndex));
                    arrayList.add(fPoint4);
                }
                i = i2;
            }
            arrayList2.clear();
            for (int i4 = 0; i4 < arrayList.size(); i4++) {
                arrayList2.add(arrayList.get(i4));
            }
        }
        return arrayList2;
    }

    public static float f(IMapConfig iMapConfig, float f2) {
        if (iMapConfig != null) {
            if (f2 > iMapConfig.getMaxZoomLevel()) {
                return iMapConfig.getMaxZoomLevel();
            }
            return f2 < iMapConfig.getMinZoomLevel() ? iMapConfig.getMinZoomLevel() : f2;
        }
        if (f2 > 20.0f) {
            return 20.0f;
        }
        if (f2 < 3.0f) {
            return 3.0f;
        }
        return f2;
    }

    public static void f0(int i) {
        GLES20.glDeleteTextures(1, new int[]{i}, 0);
    }

    public static float g(IMapConfig iMapConfig, float f2, float f3) {
        boolean z;
        boolean z2 = false;
        if (iMapConfig != null) {
            boolean zIsAbroadEnable = iMapConfig.isAbroadEnable();
            z = iMapConfig.getAbroadState() != 1;
            z2 = zIsAbroadEnable;
        } else {
            z = false;
        }
        int i = 40;
        if (z2 && z) {
            float f4 = 40;
            return f2 > f4 ? f4 : f2;
        }
        if (f2 <= 40.0f) {
            return f2;
        }
        if (f3 > 15.0f) {
            if (f3 <= 16.0f) {
                i = 56;
            } else if (f3 <= 17.0f) {
                i = 66;
            } else if (f3 <= 18.0f) {
                i = 74;
            } else {
                i = f3 <= 18.0f ? 78 : 80;
            }
        }
        float f5 = i;
        return f2 > f5 ? f5 : f2;
    }

    public static void g0(Bitmap bitmap) {
        if (bitmap == null || Build.VERSION.SDK_INT > 10 || bitmap.isRecycled()) {
            return;
        }
        bitmap.recycle();
    }

    public static int h(int i, int i2) {
        return j(0, Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888), true);
    }

    public static void h0(Rect rect, int i, int i2) {
        if (rect != null) {
            if (i < rect.left) {
                rect.left = i;
            }
            if (i > rect.right) {
                rect.right = i;
            }
            if (i2 > rect.top) {
                rect.top = i2;
            }
            if (i2 < rect.bottom) {
                rect.bottom = i2;
            }
        }
    }

    public static int i(int i, Bitmap bitmap, int i2, int i3) {
        if (bitmap == null || bitmap.isRecycled()) {
            return 0;
        }
        if (i == 0) {
            int[] iArr = {0};
            GLES20.glGenTextures(1, iArr, 0);
            i = iArr[0];
        }
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(ShaderConst.GL_TEXTURE_2D, i);
        GLUtils.texSubImage2D(ShaderConst.GL_TEXTURE_2D, 0, i2, i3, bitmap);
        return i;
    }

    private static void i0(View view) {
        int i = 0;
        if (!(view instanceof ViewGroup)) {
            if (view instanceof TextView) {
                ((TextView) view).setHorizontallyScrolling(false);
            }
        } else {
            while (true) {
                ViewGroup viewGroup = (ViewGroup) view;
                if (i >= viewGroup.getChildCount()) {
                    return;
                }
                i0(viewGroup.getChildAt(i));
                i++;
            }
        }
    }

    public static int j(int i, Bitmap bitmap, boolean z) {
        int iC0 = c0(i, bitmap, z);
        g0(bitmap);
        return iC0;
    }

    public static boolean j0() {
        return Build.VERSION.SDK_INT >= 9;
    }

    public static int k(Bitmap bitmap) {
        return l(bitmap, false);
    }

    public static boolean k0(double d2, double d3, double d4, double d5, double d6, double d7) {
        return Math.abs(a(d2, d3, d4, d5, d6, d7)) < 1.0E-9d && (d2 - d4) * (d2 - d6) <= 0.0d && (d3 - d5) * (d3 - d7) <= 0.0d;
    }

    public static int l(Bitmap bitmap, boolean z) {
        return j(0, bitmap, z);
    }

    public static boolean l0(int i, int i2) {
        if (i > 0 && i2 > 0) {
            return true;
        }
        Log.w("3dmap", "the map must have a size");
        return false;
    }

    public static int m(Object[] objArr) {
        return Arrays.hashCode(objArr);
    }

    public static boolean m0(List<LatLng> list, CircleHoleOptions circleHoleOptions) {
        int i;
        try {
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < list.size(); i2++) {
                arrayList.add(list.get(i2));
            }
            arrayList.add(list.get(0));
            ArrayList arrayList2 = new ArrayList();
            int i3 = 0;
            while (i3 < arrayList.size() && (i = i3 + 1) < arrayList.size()) {
                if (circleHoleOptions.getRadius() < AMapUtils.calculateLineDistance(circleHoleOptions.getCenter(), (LatLng) arrayList.get(i3)) && circleHoleOptions.getRadius() < AMapUtils.calculateLineDistance(circleHoleOptions.getCenter(), (LatLng) arrayList.get(i))) {
                    arrayList2.clear();
                    arrayList2.add(arrayList.get(i3));
                    arrayList2.add(arrayList.get(i));
                    if (circleHoleOptions.getRadius() >= ((double) AMapUtils.calculateLineDistance(circleHoleOptions.getCenter(), (LatLng) SpatialRelationUtil.calShortestDistancePoint(arrayList2, circleHoleOptions.getCenter()).second))) {
                        return true;
                    }
                    i3 = i;
                }
                return true;
            }
        } catch (Throwable th) {
            e6.r(th, "Util", "isPolygon2CircleIntersect");
            th.printStackTrace();
        }
        return false;
    }

    public static Bitmap n(int i, int i2, int i3, int i4) {
        int i5 = i3 * i4;
        try {
            int[] iArr = new int[i5];
            int[] iArr2 = new int[i5];
            IntBuffer intBufferWrap = IntBuffer.wrap(iArr);
            intBufferWrap.position(0);
            GLES20.glReadPixels(i, i2, i3, i4, 6408, 5121, intBufferWrap);
            for (int i6 = 0; i6 < i4; i6++) {
                for (int i7 = 0; i7 < i3; i7++) {
                    int i8 = iArr[(i6 * i3) + i7];
                    iArr2[(((i4 - i6) - 1) * i3) + i7] = (i8 & (-16711936)) | ((i8 << 16) & 16711680) | ((i8 >> 16) & 255);
                }
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i3, i4, Bitmap.Config.ARGB_8888);
            bitmapCreateBitmap.setPixels(iArr2, 0, i3, 0, 0, i3, i4);
            return bitmapCreateBitmap;
        } catch (Throwable th) {
            e6.r(th, "AMapDelegateImpGLSurfaceView", "SavePixels");
            th.printStackTrace();
            return null;
        }
    }

    private static boolean n0(List<LatLng> list, List<LatLng> list2) {
        int i;
        int i2;
        int i3 = 0;
        while (i3 < list.size() && (i = i3 + 1) < list.size()) {
            try {
                int i4 = 0;
                while (i4 < list2.size() && (i2 = i4 + 1) < list2.size()) {
                    boolean zB = m3.b(list.get(i3), list.get(i), list2.get(i4), list2.get(i2));
                    if (zB) {
                        return zB;
                    }
                    i4 = i2;
                }
                i3 = i;
            } catch (Throwable th) {
                e6.r(th, "Util", "isSegmentsIntersect");
                th.printStackTrace();
            }
        }
        return false;
    }

    public static Bitmap o(Context context, String str) {
        try {
            InputStream inputStreamOpen = l3.b(context).open(str);
            Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpen);
            inputStreamOpen.close();
            return bitmapDecodeStream;
        } catch (Throwable th) {
            e6.r(th, "Util", "fromAsset");
            J(th);
            return null;
        }
    }

    public static byte[] o0(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[2048];
        while (true) {
            int i = inputStream.read(bArr, 0, 2048);
            if (i == -1) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i);
        }
    }

    public static Bitmap p(Bitmap bitmap, float f2) {
        if (bitmap == null) {
            return null;
        }
        return Bitmap.createScaledBitmap(bitmap, (int) (bitmap.getWidth() * f2), (int) (bitmap.getHeight() * f2), true);
    }

    public static String p0(Context context) {
        String strY = y(context);
        if (strY == null) {
            return null;
        }
        File file = new File(strY, "VMAP2");
        if (!file.exists()) {
            file.mkdir();
        }
        return file.toString() + File.separator;
    }

    public static Bitmap q(View view) {
        try {
            i0(view);
            view.destroyDrawingCache();
            view.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
            view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
            Bitmap drawingCache = view.getDrawingCache();
            if (drawingCache != null) {
                return drawingCache.copy(Bitmap.Config.ARGB_8888, false);
            }
            return null;
        } catch (Throwable th) {
            e6.r(th, "Utils", "getBitmapFromView");
            th.printStackTrace();
            return null;
        }
    }

    public static boolean q0() {
        return Build.VERSION.SDK_INT >= 11;
    }

    public static Pair<Float, IPoint> r(AbstractCameraUpdateMessage abstractCameraUpdateMessage, IGLMapState iGLMapState, IMapConfig iMapConfig) {
        return t(iMapConfig, Math.max(abstractCameraUpdateMessage.paddingLeft, 1), Math.max(abstractCameraUpdateMessage.paddingRight, 1), Math.max(abstractCameraUpdateMessage.paddingTop, 1), Math.max(abstractCameraUpdateMessage.paddingBottom, 1), abstractCameraUpdateMessage.bounds, abstractCameraUpdateMessage.width, abstractCameraUpdateMessage.height);
    }

    private static byte[] r0(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
                return byteArray;
            } catch (Throwable unused) {
                if (byteArrayOutputStream != null) {
                    try {
                        byteArrayOutputStream.close();
                    } catch (Throwable th2) {
                        th2.printStackTrace();
                    }
                }
                return null;
            }
        } catch (Throwable unused2) {
            byteArrayOutputStream = null;
        }
    }

    public static Pair<Float, Boolean> s(IMapConfig iMapConfig, int i, int i2, int i3, int i4, int i5, int i6) {
        float fMin;
        iMapConfig.getSZ();
        boolean z = true;
        if (i == i3 && i2 == i4) {
            fMin = iMapConfig.getMaxZoomLevel();
        } else {
            float fB = (float) b(iMapConfig.getMapZoomScale(), i6, Math.abs(i4 - i2));
            float fB2 = (float) b(iMapConfig.getMapZoomScale(), i5, Math.abs(i3 - i));
            float fMin2 = Math.min(fB2, fB);
            z = fMin2 == fB2;
            fMin = Math.min(iMapConfig.getMaxZoomLevel(), Math.max(iMapConfig.getMinZoomLevel(), fMin2));
        }
        return new Pair<>(Float.valueOf(fMin), Boolean.valueOf(z));
    }

    public static boolean s0() {
        return Build.VERSION.SDK_INT >= 12;
    }

    public static Pair<Float, IPoint> t(IMapConfig iMapConfig, int i, int i2, int i3, int i4, LatLngBounds latLngBounds, int i5, int i6) {
        LatLng latLng;
        int i7;
        float f2;
        float f3;
        int i8;
        if (latLngBounds == null || (latLng = latLngBounds.northeast) == null || latLngBounds.southwest == null || iMapConfig == null) {
            return null;
        }
        Point pointLatLongToPixels = VirtualEarthProjection.latLongToPixels(latLng.latitude, latLng.longitude, 20);
        LatLng latLng2 = latLngBounds.southwest;
        Point pointLatLongToPixels2 = VirtualEarthProjection.latLongToPixels(latLng2.latitude, latLng2.longitude, 20);
        int i9 = pointLatLongToPixels.x;
        int i10 = pointLatLongToPixels2.x;
        int i11 = i9 - i10;
        int i12 = pointLatLongToPixels2.y;
        int i13 = pointLatLongToPixels.y;
        int i14 = i12 - i13;
        int i15 = i5 - (i + i2);
        int i16 = i6 - (i3 + i4);
        if (i11 < 0 && i14 < 0) {
            return null;
        }
        if (i11 <= 0) {
            i11 = 1;
        }
        int i17 = i14 <= 0 ? 1 : i14;
        if (i15 <= 0) {
            i15 = 1;
        }
        if (i16 <= 0) {
            i16 = 1;
        }
        Pair<Float, Boolean> pairS = s(iMapConfig, i9, i13, i10, i12, i15, i16);
        float fFloatValue = ((Float) pairS.first).floatValue();
        boolean zBooleanValue = ((Boolean) pairS.second).booleanValue();
        float fC = c(iMapConfig.getMapZoomScale(), fFloatValue, i11);
        float fC2 = c(iMapConfig.getMapZoomScale(), fFloatValue, i17);
        if (fFloatValue < iMapConfig.getMaxZoomLevel()) {
            if (zBooleanValue) {
                i7 = (int) (pointLatLongToPixels2.x + ((((i5 / 2) - i) / fC) * i11));
                i8 = pointLatLongToPixels.y;
            } else {
                i7 = (int) (pointLatLongToPixels2.x + ((((i2 - i) + fC) * i11) / (fC * 2.0f)));
                f2 = pointLatLongToPixels.y;
                f3 = (((i6 / 2) - i3) / fC2) * i17;
            }
            return new Pair<>(Float.valueOf(fFloatValue), IPoint.obtain((int) (i7 + d(iMapConfig.getMapZoomScale(), fFloatValue, iMapConfig.getAnchorX() - (iMapConfig.getMapWidth() >> 1))), (int) (((int) (f2 + f3)) + d(iMapConfig.getMapZoomScale(), fFloatValue, iMapConfig.getAnchorY() - (iMapConfig.getMapHeight() >> 1)))));
        }
        i7 = (int) (pointLatLongToPixels2.x + ((((i2 - i) + fC) * i11) / (fC * 2.0f)));
        i8 = pointLatLongToPixels.y;
        f2 = i8;
        f3 = (((i4 - i3) + fC2) * i17) / (fC2 * 2.0f);
        return new Pair<>(Float.valueOf(fFloatValue), IPoint.obtain((int) (i7 + d(iMapConfig.getMapZoomScale(), fFloatValue, iMapConfig.getAnchorX() - (iMapConfig.getMapWidth() >> 1))), (int) (((int) (f2 + f3)) + d(iMapConfig.getMapZoomScale(), fFloatValue, iMapConfig.getAnchorY() - (iMapConfig.getMapHeight() >> 1)))));
    }

    public static boolean t0(Context context) {
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        NetworkInfo.State state;
        return (context == null || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || (state = activeNetworkInfo.getState()) == null || state == NetworkInfo.State.DISCONNECTED || state == NetworkInfo.State.DISCONNECTING) ? false : true;
    }

    public static DPoint u(LatLng latLng) {
        double d2 = (latLng.longitude / 360.0d) + 0.5d;
        double dSin = Math.sin(Math.toRadians(latLng.latitude));
        return DPoint.obtain(d2 * 1.0d, (((Math.log((dSin + 1.0d) / (1.0d - dSin)) * 0.5d) / (-6.283185307179586d)) + 0.5d) * 1.0d);
    }

    public static m5 u0() {
        try {
            if (x9.f11345d == null) {
                m5.b bVar = new m5.b("3dmap", "7.4.0", x9.c);
                bVar.b(new String[]{"com.amap.api.maps", "com.amap.api.mapcore", "com.autonavi.amap.mapcore", "com.autonavi.amap", "com.autonavi.ae", "com.autonavi.base", "com.autonavi.patch", "com.amap.api.3dmap.admic", "com.amap.api.trace", "com.amap.api.trace.core"});
                bVar.a("7.4.0");
                x9.f11345d = bVar.c();
            }
            return x9.f11345d;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static FPoint3 v(FPoint fPoint, FPoint fPoint2, FPoint3 fPoint3, FPoint3 fPoint4, int i) {
        FPoint3 fPoint5 = new FPoint3(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, i);
        float f2 = ((PointF) fPoint2).y;
        float f3 = ((PointF) fPoint).y;
        float f4 = ((PointF) fPoint).x;
        float f5 = ((PointF) fPoint3).x;
        float f6 = ((PointF) fPoint2).x;
        float f7 = ((PointF) fPoint3).y;
        double d2 = ((f2 - f3) * (f4 - f5)) - ((f6 - f4) * (f3 - f7));
        float f8 = f2 - f3;
        float f9 = ((PointF) fPoint4).x;
        float f10 = f6 - f4;
        float f11 = ((PointF) fPoint4).y;
        double d3 = (f8 * (f9 - f5)) - (f10 * (f11 - f7));
        ((PointF) fPoint5).x = (float) (((double) f5) + ((((double) (f9 - f5)) * d2) / d3));
        ((PointF) fPoint5).y = (float) (((double) f7) + ((((double) (f11 - f7)) * d2) / d3));
        return fPoint5;
    }

    public static boolean v0(Context context) {
        File file = new File(d0(context));
        if (file.exists()) {
            return FileUtil.deleteFile(file);
        }
        return true;
    }

    private static FPoint w(FPoint fPoint, FPoint fPoint2, FPoint fPoint3, FPoint fPoint4) {
        FPoint fPointObtain = FPoint.obtain(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        float f2 = ((PointF) fPoint2).y;
        float f3 = ((PointF) fPoint).y;
        float f4 = ((PointF) fPoint).x;
        float f5 = ((PointF) fPoint3).x;
        float f6 = ((PointF) fPoint2).x;
        float f7 = ((PointF) fPoint3).y;
        double d2 = ((f2 - f3) * (f4 - f5)) - ((f6 - f4) * (f3 - f7));
        float f8 = f2 - f3;
        float f9 = ((PointF) fPoint4).x;
        float f10 = f6 - f4;
        float f11 = ((PointF) fPoint4).y;
        double d3 = (f8 * (f9 - f5)) - (f10 * (f11 - f7));
        ((PointF) fPointObtain).x = (float) (((double) f5) + ((((double) (f9 - f5)) * d2) / d3));
        ((PointF) fPointObtain).y = (float) (((double) f7) + ((((double) (f11 - f7)) * d2) / d3));
        return fPointObtain;
    }

    public static String x(int i) {
        if (i < 1000) {
            return i + "m";
        }
        return (i / 1000) + ExtraKey.km;
    }

    public static String y(Context context) {
        File file = new File(FileUtil.getMapBaseStorage(context), AeUtil.ROOT_DATA_PATH_NAME);
        if (!file.exists()) {
            file.mkdir();
        }
        StringBuilder sb = new StringBuilder();
        sb.append(file.toString());
        String str = File.separator;
        sb.append(str);
        File file2 = new File(sb.toString());
        if (!file2.exists()) {
            file2.mkdir();
        }
        return file.toString() + str;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x00e2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:104:0x00e4 A[Catch: IOException -> 0x00d2, TRY_ENTER, TRY_LEAVE, TryCatch #2 {IOException -> 0x00d2, blocks: (B:104:0x00e4, B:93:0x00ce), top: B:106:0x00c0 }] */
    /* JADX WARN: Code duplicated, block: B:118:0x00c2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x0087 A[Catch: IOException -> 0x002b, TRY_ENTER, TRY_LEAVE, TryCatch #8 {IOException -> 0x002b, blocks: (B:10:0x0026, B:18:0x0037, B:58:0x0087, B:49:0x0076, B:80:0x00b6, B:71:0x00a5, B:9:0x0023, B:64:0x0099), top: B:116:0x0008, inners: #1, #14 }] */
    /* JADX WARN: Code duplicated, block: B:80:0x00b6 A[Catch: IOException -> 0x002b, TRY_ENTER, TRY_LEAVE, TryCatch #8 {IOException -> 0x002b, blocks: (B:10:0x0026, B:18:0x0037, B:58:0x0087, B:49:0x0076, B:80:0x00b6, B:71:0x00a5, B:9:0x0023, B:64:0x0099), top: B:116:0x0008, inners: #1, #14 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r7v23 */
    /* JADX WARN: Type inference failed for: r7v5 */
    public static String z(File file) throws Throwable {
        ?? r7;
        FileInputStream fileInputStream;
        IOException e2;
        BufferedReader bufferedReader;
        FileNotFoundException e3;
        StringBuffer stringBuffer = new StringBuffer();
        FileInputStream fileInputStream2 = null;
        try {
            try {
                try {
                    fileInputStream = new FileInputStream(file);
                    try {
                        bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream, "utf-8"));
                        while (true) {
                            try {
                                String line = bufferedReader.readLine();
                                if (line != null) {
                                    stringBuffer.append(line);
                                } else {
                                    try {
                                        try {
                                            break;
                                        } catch (IOException e4) {
                                            e4.printStackTrace();
                                            bufferedReader.close();
                                        }
                                    } catch (Throwable th) {
                                        try {
                                            bufferedReader.close();
                                        } catch (IOException e5) {
                                            e5.printStackTrace();
                                        }
                                        throw th;
                                    }
                                }
                            } catch (FileNotFoundException e6) {
                                e3 = e6;
                                e6.r(e3, "Util", "readFile fileNotFound");
                                e3.printStackTrace();
                                if (fileInputStream != null) {
                                    try {
                                        try {
                                            fileInputStream.close();
                                            if (bufferedReader != null) {
                                                bufferedReader.close();
                                            }
                                        } catch (IOException e7) {
                                            e7.printStackTrace();
                                            if (bufferedReader != null) {
                                                bufferedReader.close();
                                            }
                                        }
                                    } catch (Throwable th2) {
                                        if (bufferedReader != null) {
                                            try {
                                                bufferedReader.close();
                                            } catch (IOException e8) {
                                                e8.printStackTrace();
                                            }
                                        }
                                        throw th2;
                                    }
                                } else if (bufferedReader != null) {
                                    bufferedReader.close();
                                }
                            } catch (IOException e9) {
                                e2 = e9;
                                e6.r(e2, "Util", "readFile io");
                                e2.printStackTrace();
                                if (fileInputStream != null) {
                                    try {
                                        try {
                                            fileInputStream.close();
                                            if (bufferedReader != null) {
                                                bufferedReader.close();
                                            }
                                        } catch (IOException e10) {
                                            e10.printStackTrace();
                                            if (bufferedReader != null) {
                                                bufferedReader.close();
                                            }
                                        }
                                    } catch (Throwable th3) {
                                        if (bufferedReader != null) {
                                            try {
                                                bufferedReader.close();
                                            } catch (IOException e11) {
                                                e11.printStackTrace();
                                            }
                                        }
                                        throw th3;
                                    }
                                } else if (bufferedReader != null) {
                                    bufferedReader.close();
                                }
                            }
                        }
                        fileInputStream.close();
                        bufferedReader.close();
                    } catch (FileNotFoundException e12) {
                        e3 = e12;
                        bufferedReader = null;
                    } catch (IOException e13) {
                        e2 = e13;
                        bufferedReader = null;
                    } catch (Throwable th4) {
                        th = th4;
                        file = null;
                        fileInputStream2 = fileInputStream;
                        r7 = file;
                        try {
                            try {
                                if (fileInputStream2 != null) {
                                    try {
                                        fileInputStream2.close();
                                        if (r7 != 0) {
                                            r7.close();
                                        }
                                    } catch (IOException e14) {
                                        e14.printStackTrace();
                                        if (r7 != 0) {
                                            r7.close();
                                        }
                                        throw th;
                                    }
                                } else if (r7 != 0) {
                                    r7.close();
                                }
                            } catch (Throwable th5) {
                                if (r7 != 0) {
                                    try {
                                        r7.close();
                                    } catch (IOException e15) {
                                        e15.printStackTrace();
                                    }
                                }
                                throw th5;
                            }
                        } catch (IOException e16) {
                            e16.printStackTrace();
                        }
                        throw th;
                    }
                } catch (IOException e17) {
                    e17.printStackTrace();
                }
            } catch (FileNotFoundException e18) {
                fileInputStream = null;
                e3 = e18;
                bufferedReader = null;
            } catch (IOException e19) {
                fileInputStream = null;
                e2 = e19;
                bufferedReader = null;
            } catch (Throwable th6) {
                th = th6;
                r7 = 0;
                if (fileInputStream2 != null) {
                    fileInputStream2.close();
                    if (r7 != 0) {
                        r7.close();
                    }
                } else if (r7 != 0) {
                    r7.close();
                }
                throw th;
            }
            return stringBuffer.toString();
        } catch (Throwable th7) {
            th = th7;
        }
    }
}
