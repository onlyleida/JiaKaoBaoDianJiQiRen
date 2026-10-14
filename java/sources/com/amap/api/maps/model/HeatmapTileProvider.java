package com.amap.api.maps.model;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.util.Log;
import androidx.collection.d;
import com.amap.api.mapcore.util.v2;
import com.amap.api.maps.AMapException;
import com.autonavi.amap.mapcore.DPoint;
import java.io.ByteArrayOutputStream;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class HeatmapTileProvider implements TileProvider {
    public static final Gradient DEFAULT_GRADIENT;
    private static final int[] DEFAULT_GRADIENT_COLORS;
    private static final float[] DEFAULT_GRADIENT_START_POINTS;
    private static final int DEFAULT_MAX_ZOOM = 11;
    private static final int DEFAULT_MIN_ZOOM = 5;
    public static final double DEFAULT_OPACITY = 0.6d;
    public static final int DEFAULT_RADIUS = 12;
    private static final int MAX_RADIUS = 50;
    private static final int MAX_ZOOM_LEVEL = 21;
    private static final int MIN_RADIUS = 10;
    private static final int SCREEN_SIZE = 1280;
    private static final int TILE_DIM = 256;
    private v2 mBounds;
    private int[] mColorMap;
    private Collection<WeightedLatLng> mData;
    private Gradient mGradient;
    private double[] mKernel;
    private double[] mMaxIntensity;
    private double mOpacity;
    private int mRadius;
    private a mTree;

    public static class Builder {
        private Collection<WeightedLatLng> data;
        private int radius = 12;
        private Gradient gradient = HeatmapTileProvider.DEFAULT_GRADIENT;
        private double opacity = 0.6d;

        public HeatmapTileProvider build() {
            Collection<WeightedLatLng> collection = this.data;
            if (collection != null && collection.size() != 0) {
                try {
                    return new HeatmapTileProvider(this);
                } catch (Throwable th) {
                    th.printStackTrace();
                    return null;
                }
            }
            try {
                throw new AMapException("No input points.");
            } catch (AMapException e2) {
                Log.e("amap", e2.getErrorMessage());
                e2.printStackTrace();
                return null;
            }
        }

        public Builder data(Collection<LatLng> collection) {
            return weightedData(HeatmapTileProvider.d(collection));
        }

        public Builder gradient(Gradient gradient) {
            this.gradient = gradient;
            return this;
        }

        public Builder radius(int i) {
            this.radius = Math.max(10, Math.min(i, 50));
            return this;
        }

        public Builder transparency(double d2) {
            this.opacity = Math.max(0.0d, Math.min(d2, 1.0d));
            return this;
        }

        public Builder weightedData(Collection<WeightedLatLng> collection) {
            this.data = collection;
            return this;
        }
    }

    static {
        int[] iArr = {Color.rgb(102, 225, 0), Color.rgb(255, 0, 0)};
        DEFAULT_GRADIENT_COLORS = iArr;
        float[] fArr = {0.2f, 1.0f};
        DEFAULT_GRADIENT_START_POINTS = fArr;
        DEFAULT_GRADIENT = new Gradient(iArr, fArr);
    }

    private void a(Gradient gradient) {
        this.mGradient = gradient;
        this.mColorMap = gradient.generateColorMap(this.mOpacity);
    }

    private void c(Collection<WeightedLatLng> collection) {
        try {
            ArrayList arrayList = new ArrayList();
            for (WeightedLatLng weightedLatLng : collection) {
                double d2 = weightedLatLng.latLng.latitude;
                if (d2 < 85.0d && d2 > -85.0d) {
                    arrayList.add(weightedLatLng);
                }
            }
            this.mData = arrayList;
            v2 v2VarA = a(arrayList);
            this.mBounds = v2VarA;
            this.mTree = new a(v2VarA);
            Iterator<WeightedLatLng> it = this.mData.iterator();
            while (it.hasNext()) {
                this.mTree.a(it.next());
            }
            this.mMaxIntensity = a(this.mRadius);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Collection<WeightedLatLng> d(Collection<LatLng> collection) {
        ArrayList arrayList = new ArrayList();
        Iterator<LatLng> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(new WeightedLatLng(it.next()));
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:14:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:16:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:18:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:21:0x00e1 A[LOOP:0: B:19:0x00db->B:21:0x00e1, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:25:0x010a A[LOOP:1: B:23:0x0104->B:25:0x010a, LOOP_END] */
    @Override // com.amap.api.maps.model.TileProvider
    public Tile getTile(int i, int i2, int i3) {
        double d2;
        double d3;
        v2 v2Var;
        v2 v2Var2;
        Collection<WeightedLatLng> collectionA;
        double[][] dArr;
        double dPow = 1.0d / Math.pow(2.0d, i3);
        int i4 = this.mRadius;
        double d4 = (((double) i4) * dPow) / 256.0d;
        double d5 = ((2.0d * d4) + dPow) / ((double) ((i4 * 2) + 256));
        double d6 = (((double) i) * dPow) - d4;
        double d7 = (((double) (i + 1)) * dPow) + d4;
        double d8 = (((double) i2) * dPow) - d4;
        double d9 = (((double) (i2 + 1)) * dPow) + d4;
        Collection<WeightedLatLng> arrayList = new ArrayList<>();
        if (d6 >= 0.0d) {
            d2 = 1.0d;
            if (d7 > 1.0d) {
                arrayList = this.mTree.a(new v2(0.0d, d7 - 1.0d, d8, d9));
            } else {
                d3 = 0.0d;
            }
            v2Var = new v2(d6, d7, d8, d9);
            v2Var2 = this.mBounds;
            if (!v2Var.c(new v2(v2Var2.f11262a - d4, v2Var2.c + d4, v2Var2.b - d4, v2Var2.f11263d + d4))) {
                return TileProvider.NO_TILE;
            }
            collectionA = this.mTree.a(v2Var);
            if (collectionA.isEmpty()) {
                return TileProvider.NO_TILE;
            }
            int i5 = this.mRadius;
            dArr = (double[][]) Array.newInstance((Class<?>) double.class, (i5 * 2) + 256, (i5 * 2) + 256);
            for (WeightedLatLng weightedLatLng : collectionA) {
                DPoint point = weightedLatLng.getPoint();
                int i6 = (int) ((point.x - d6) / d5);
                int i7 = (int) ((point.y - d8) / d5);
                double[] dArr2 = dArr[i6];
                dArr2[i7] = dArr2[i7] + weightedLatLng.intensity;
            }
            for (WeightedLatLng weightedLatLng2 : arrayList) {
                DPoint point2 = weightedLatLng2.getPoint();
                int i8 = (int) (((point2.x + d3) - d6) / d5);
                int i9 = (int) ((point2.y - d8) / d5);
                double[] dArr3 = dArr[i8];
                dArr3[i9] = dArr3[i9] + weightedLatLng2.intensity;
            }
            return a(a(a(dArr, this.mKernel), this.mColorMap, this.mMaxIntensity[i3]));
        }
        d2 = -1.0d;
        arrayList = this.mTree.a(new v2(d6 + 1.0d, 1.0d, d8, d9));
        d3 = d2;
        v2Var = new v2(d6, d7, d8, d9);
        v2Var2 = this.mBounds;
        if (!v2Var.c(new v2(v2Var2.f11262a - d4, v2Var2.c + d4, v2Var2.b - d4, v2Var2.f11263d + d4))) {
            return TileProvider.NO_TILE;
        }
        collectionA = this.mTree.a(v2Var);
        if (collectionA.isEmpty()) {
            return TileProvider.NO_TILE;
        }
        int i10 = this.mRadius;
        dArr = (double[][]) Array.newInstance((Class<?>) double.class, (i10 * 2) + 256, (i10 * 2) + 256);
        while (r1.hasNext()) {
            DPoint point3 = weightedLatLng.getPoint();
            int i11 = (int) ((point3.x - d6) / d5);
            int i12 = (int) ((point3.y - d8) / d5);
            double[] dArr4 = dArr[i11];
            dArr4[i12] = dArr4[i12] + weightedLatLng.intensity;
        }
        while (r1.hasNext()) {
            DPoint point4 = weightedLatLng2.getPoint();
            int i13 = (int) (((point4.x + d3) - d6) / d5);
            int i14 = (int) ((point4.y - d8) / d5);
            double[] dArr5 = dArr[i13];
            dArr5[i14] = dArr5[i14] + weightedLatLng2.intensity;
        }
        return a(a(a(dArr, this.mKernel), this.mColorMap, this.mMaxIntensity[i3]));
    }

    @Override // com.amap.api.maps.model.TileProvider
    public int getTileHeight() {
        return 256;
    }

    @Override // com.amap.api.maps.model.TileProvider
    public int getTileWidth() {
        return 256;
    }

    private HeatmapTileProvider(Builder builder) {
        this.mData = builder.data;
        this.mRadius = builder.radius;
        Gradient gradient = builder.gradient;
        this.mGradient = gradient;
        if (gradient == null || !gradient.isAvailable()) {
            this.mGradient = DEFAULT_GRADIENT;
        }
        this.mOpacity = builder.opacity;
        int i = this.mRadius;
        this.mKernel = a(i, ((double) i) / 3.0d);
        a(this.mGradient);
        c(this.mData);
    }

    private double[] a(int i) {
        int i2;
        double[] dArr = new double[21];
        int i3 = 5;
        while (true) {
            if (i3 >= 11) {
                break;
            }
            dArr[i3] = a(this.mData, this.mBounds, i, (int) (Math.pow(2.0d, i3) * 1280.0d));
            if (i3 == 5) {
                for (int i4 = 0; i4 < i3; i4++) {
                    dArr[i4] = dArr[i3];
                }
            }
            i3++;
        }
        for (i2 = 11; i2 < 21; i2++) {
            dArr[i2] = dArr[10];
        }
        return dArr;
    }

    private static Tile a(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        return Tile.obtain(256, 256, byteArrayOutputStream.toByteArray());
    }

    static v2 a(Collection<WeightedLatLng> collection) {
        Iterator<WeightedLatLng> it = collection.iterator();
        WeightedLatLng next = it.next();
        double d2 = next.getPoint().x;
        double d3 = next.getPoint().x;
        double d4 = d2;
        double d5 = d3;
        double d6 = next.getPoint().y;
        double d7 = next.getPoint().y;
        while (it.hasNext()) {
            WeightedLatLng next2 = it.next();
            double d8 = next2.getPoint().x;
            double d9 = next2.getPoint().y;
            if (d8 < d4) {
                d4 = d8;
            }
            if (d8 > d5) {
                d5 = d8;
            }
            if (d9 < d6) {
                d6 = d9;
            }
            if (d9 > d7) {
                d7 = d9;
            }
        }
        return new v2(d4, d5, d6, d7);
    }

    static double[] a(int i, double d2) {
        double[] dArr = new double[(i * 2) + 1];
        for (int i2 = -i; i2 <= i; i2++) {
            dArr[i2 + i] = Math.exp(((double) ((-i2) * i2)) / ((2.0d * d2) * d2));
        }
        return dArr;
    }

    static double[][] a(double[][] dArr, double[] dArr2) {
        int iFloor = (int) Math.floor(((double) dArr2.length) / 2.0d);
        int length = dArr.length;
        int i = length - (iFloor * 2);
        int i2 = 1;
        int i3 = (iFloor + i) - 1;
        double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) double.class, length, length);
        int i4 = 0;
        while (true) {
            double d2 = 0.0d;
            if (i4 >= length) {
                break;
            }
            int i5 = 0;
            while (i5 < length) {
                double d3 = dArr[i4][i5];
                if (d3 != d2) {
                    int i6 = i4 + iFloor;
                    if (i3 < i6) {
                        i6 = i3;
                    }
                    int i7 = i6 + 1;
                    int i8 = i4 - iFloor;
                    for (int i9 = iFloor > i8 ? iFloor : i8; i9 < i7; i9++) {
                        double[] dArr4 = dArr3[i9];
                        dArr4[i5] = dArr4[i5] + (dArr2[i9 - i8] * d3);
                    }
                }
                i5++;
                d2 = 0.0d;
            }
            i4++;
        }
        double[][] dArr5 = (double[][]) Array.newInstance((Class<?>) double.class, i, i);
        int i10 = iFloor;
        while (i10 < i3 + 1) {
            int i11 = 0;
            while (i11 < length) {
                double d4 = dArr3[i10][i11];
                if (d4 != 0.0d) {
                    int i12 = i11 + iFloor;
                    if (i3 < i12) {
                        i12 = i3;
                    }
                    int i13 = i12 + i2;
                    int i14 = i11 - iFloor;
                    for (int i15 = iFloor > i14 ? iFloor : i14; i15 < i13; i15++) {
                        double[] dArr6 = dArr5[i10 - iFloor];
                        int i16 = i15 - iFloor;
                        dArr6[i16] = dArr6[i16] + (dArr2[i15 - i14] * d4);
                    }
                }
                i11++;
                i2 = 1;
            }
            i10++;
            i2 = 1;
        }
        return dArr5;
    }

    static Bitmap a(double[][] dArr, int[] iArr, double d2) {
        int i = iArr[iArr.length - 1];
        double length = ((double) (iArr.length - 1)) / d2;
        int length2 = dArr.length;
        int[] iArr2 = new int[length2 * length2];
        for (int i2 = 0; i2 < length2; i2++) {
            for (int i3 = 0; i3 < length2; i3++) {
                double d3 = dArr[i3][i2];
                int i4 = (i2 * length2) + i3;
                int i5 = (int) (d3 * length);
                if (d3 != 0.0d) {
                    if (i5 < iArr.length) {
                        iArr2[i4] = iArr[i5];
                    } else {
                        iArr2[i4] = i;
                    }
                } else {
                    iArr2[i4] = 0;
                }
            }
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(length2, length2, Bitmap.Config.ARGB_8888);
        bitmapCreateBitmap.setPixels(iArr2, 0, length2, 0, 0, length2, length2);
        return bitmapCreateBitmap;
    }

    static double a(Collection<WeightedLatLng> collection, v2 v2Var, int i, int i2) {
        double d2 = v2Var.f11262a;
        double d3 = v2Var.c;
        double d4 = v2Var.b;
        double d5 = d3 - d2;
        double d6 = v2Var.f11263d - d4;
        if (d5 <= d6) {
            d5 = d6;
        }
        double d7 = ((double) ((int) (((double) (i2 / (i * 2))) + 0.5d))) / d5;
        d dVar = new d();
        double dDoubleValue = 0.0d;
        for (WeightedLatLng weightedLatLng : collection) {
            double d8 = weightedLatLng.getPoint().x;
            int i3 = (int) ((weightedLatLng.getPoint().y - d4) * d7);
            long j = (int) ((d8 - d2) * d7);
            d dVar2 = (d) dVar.f(j);
            if (dVar2 == null) {
                dVar2 = new d();
                dVar.j(j, dVar2);
            }
            long j2 = i3;
            Double dValueOf = (Double) dVar2.f(j2);
            if (dValueOf == null) {
                dValueOf = Double.valueOf(0.0d);
            }
            d dVar3 = dVar;
            double d9 = d2;
            Double dValueOf2 = Double.valueOf(dValueOf.doubleValue() + weightedLatLng.intensity);
            dVar2.j(j2, dValueOf2);
            if (dValueOf2.doubleValue() > dDoubleValue) {
                dDoubleValue = dValueOf2.doubleValue();
            }
            dVar = dVar3;
            d2 = d9;
        }
        return dDoubleValue;
    }
}
