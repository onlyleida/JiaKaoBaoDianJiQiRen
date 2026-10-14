package com.amap.api.maps.model;

import android.graphics.Color;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class HeatMapLayerOptions {
    public static final Gradient DEFAULT_GRADIENT;
    private static final int[] DEFAULT_GRADIENT_COLORS;
    private static final float[] DEFAULT_GRADIENT_START_POINTS;
    public static final double DEFAULT_OPACITY = 0.6d;
    public static final int DEFAULT_RADIUS = 12;
    public static final int TYPE_GRID = 1;
    public static final int TYPE_HEXAGON = 2;
    public static final int TYPE_NORMAL = 0;
    private Collection<WeightedLatLng> mData;
    private Gradient mGradient = DEFAULT_GRADIENT;
    private float mSize = 2000.0f;
    private float mOpacity = 1.0f;
    private double maxIntensity = 0.0d;
    private float maxZoom = 20.0f;
    private float minZoom = 3.0f;
    private float mGap = BitmapDescriptorFactory.HUE_RED;
    private int mType = 2;
    private float zIndex = BitmapDescriptorFactory.HUE_RED;
    private boolean isVisible = true;

    static {
        int[] iArr = {Color.rgb(102, 225, 0), Color.rgb(255, 0, 0)};
        DEFAULT_GRADIENT_COLORS = iArr;
        float[] fArr = {0.2f, 1.0f};
        DEFAULT_GRADIENT_START_POINTS = fArr;
        DEFAULT_GRADIENT = new Gradient(iArr, fArr);
    }

    private static Collection<WeightedLatLng> a(Collection<LatLng> collection) {
        ArrayList arrayList = new ArrayList();
        Iterator<LatLng> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(new WeightedLatLng(it.next()));
        }
        return arrayList;
    }

    public HeatMapLayerOptions data(Collection<LatLng> collection) {
        return weightedData(a(collection));
    }

    public HeatMapLayerOptions gap(float f2) {
        this.mGap = f2;
        return this;
    }

    public Collection<WeightedLatLng> getData() {
        return this.mData;
    }

    public float getGap() {
        return this.mGap;
    }

    public Gradient getGradient() {
        return this.mGradient;
    }

    public double getMaxIntensity() {
        return this.maxIntensity;
    }

    public float getMaxZoom() {
        return this.maxZoom;
    }

    public float getMinZoom() {
        return this.minZoom;
    }

    public float getOpacity() {
        return this.mOpacity;
    }

    public float getSize() {
        return this.mSize;
    }

    public int getType() {
        return this.mType;
    }

    public float getZIndex() {
        return this.zIndex;
    }

    public HeatMapLayerOptions gradient(Gradient gradient) {
        this.mGradient = gradient;
        return this;
    }

    public boolean isVisible() {
        return this.isVisible;
    }

    public HeatMapLayerOptions maxIntensity(double d2) {
        this.maxIntensity = d2;
        return this;
    }

    public HeatMapLayerOptions maxZoom(float f2) {
        this.maxZoom = f2;
        return this;
    }

    public HeatMapLayerOptions minZoom(float f2) {
        this.minZoom = f2;
        return this;
    }

    public HeatMapLayerOptions opacity(float f2) {
        this.mOpacity = Math.max(BitmapDescriptorFactory.HUE_RED, Math.min(f2, 1.0f));
        return this;
    }

    public HeatMapLayerOptions size(float f2) {
        this.mSize = f2;
        return this;
    }

    public HeatMapLayerOptions type(int i) {
        this.mType = i;
        return this;
    }

    public HeatMapLayerOptions visible(boolean z) {
        this.isVisible = z;
        return this;
    }

    public HeatMapLayerOptions weightedData(Collection<WeightedLatLng> collection) {
        this.mData = collection;
        return this;
    }

    public HeatMapLayerOptions zIndex(float f2) {
        this.zIndex = f2;
        return this;
    }
}
