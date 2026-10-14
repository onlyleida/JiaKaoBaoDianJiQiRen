package com.amap.api.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class MarkerOptions implements Parcelable {
    public static final MarkerOptionsCreator CREATOR = new MarkerOptionsCreator();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f11523a;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    float f11526f;
    private boolean isBelowMaskLayer;
    private LatLng latLng;
    private String snippet;
    private String title;
    private float anchorU = 0.5f;
    private float anchorV = 1.0f;
    private float zIndex = BitmapDescriptorFactory.HUE_RED;
    private boolean isDraggable = false;
    private boolean isVisible = true;
    private boolean perspective = false;
    private int offsetX = 0;
    private int offsetY = 0;
    private ArrayList<BitmapDescriptor> bitmapDescriptors = new ArrayList<>();
    private int period = 20;
    private boolean isGps = false;
    private boolean isFlat = false;
    private boolean isRotatingMode = false;
    private float angleOffset = BitmapDescriptorFactory.HUE_RED;
    float b = 1.0f;
    boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f11524d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f11525e = 5;

    private void a() {
        if (this.bitmapDescriptors == null) {
            try {
                this.bitmapDescriptors = new ArrayList<>();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public MarkerOptions alpha(float f2) {
        this.b = f2;
        return this;
    }

    public MarkerOptions anchor(float f2, float f3) {
        this.anchorU = f2;
        this.anchorV = f3;
        return this;
    }

    protected MarkerOptions angleOffset(float f2) {
        this.angleOffset = f2;
        return this;
    }

    public MarkerOptions autoOverturnInfoWindow(boolean z) {
        this.c = z;
        return this;
    }

    public MarkerOptions belowMaskLayer(boolean z) {
        this.isBelowMaskLayer = z;
        return this;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public MarkerOptions displayLevel(int i) {
        this.f11525e = i;
        return this;
    }

    public MarkerOptions draggable(boolean z) {
        this.isDraggable = z;
        return this;
    }

    public float getAlpha() {
        return this.b;
    }

    public float getAnchorU() {
        return this.anchorU;
    }

    public float getAnchorV() {
        return this.anchorV;
    }

    public float getAngleOffset() {
        return this.angleOffset;
    }

    public int getDisplayLevel() {
        return this.f11525e;
    }

    public BitmapDescriptor getIcon() {
        ArrayList<BitmapDescriptor> arrayList = this.bitmapDescriptors;
        if (arrayList == null || arrayList.size() == 0) {
            return null;
        }
        return this.bitmapDescriptors.get(0);
    }

    public ArrayList<BitmapDescriptor> getIcons() {
        return this.bitmapDescriptors;
    }

    public int getInfoWindowOffsetX() {
        return this.offsetX;
    }

    public int getInfoWindowOffsetY() {
        return this.offsetY;
    }

    public int getPeriod() {
        return this.period;
    }

    public LatLng getPosition() {
        return this.latLng;
    }

    public float getRotateAngle() {
        return this.f11526f;
    }

    public String getSnippet() {
        return this.snippet;
    }

    public String getTitle() {
        return this.title;
    }

    public float getZIndex() {
        return this.zIndex;
    }

    public MarkerOptions icon(BitmapDescriptor bitmapDescriptor) {
        try {
            a();
            this.bitmapDescriptors.clear();
            this.bitmapDescriptors.add(bitmapDescriptor);
            this.isRotatingMode = false;
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return this;
    }

    public MarkerOptions icons(ArrayList<BitmapDescriptor> arrayList) {
        if (arrayList != null && arrayList.size() > 0) {
            this.bitmapDescriptors = arrayList;
            this.isRotatingMode = false;
        }
        return this;
    }

    public MarkerOptions infoWindowEnable(boolean z) {
        this.f11524d = z;
        return this;
    }

    public boolean isBelowMaskLayer() {
        return this.isBelowMaskLayer;
    }

    public boolean isDraggable() {
        return this.isDraggable;
    }

    public boolean isFlat() {
        return this.isFlat;
    }

    public boolean isGps() {
        return this.isGps;
    }

    public boolean isInfoWindowAutoOverturn() {
        return this.c;
    }

    public boolean isInfoWindowEnable() {
        return this.f11524d;
    }

    public boolean isPerspective() {
        return this.perspective;
    }

    public boolean isRotatingMode() {
        return this.isRotatingMode;
    }

    public boolean isVisible() {
        return this.isVisible;
    }

    public MarkerOptions period(int i) {
        if (i <= 1) {
            this.period = 1;
        } else {
            this.period = i;
        }
        return this;
    }

    public MarkerOptions perspective(boolean z) {
        this.perspective = z;
        return this;
    }

    public MarkerOptions position(LatLng latLng) {
        this.latLng = latLng;
        return this;
    }

    public MarkerOptions rotateAngle(float f2) {
        this.f11526f = f2;
        return this;
    }

    public MarkerOptions rotatingIcons(ArrayList<BitmapDescriptor> arrayList, float f2) {
        if (arrayList != null && arrayList.size() > 0) {
            this.bitmapDescriptors = arrayList;
            if (f2 != BitmapDescriptorFactory.HUE_RED) {
                this.angleOffset = f2;
            } else {
                this.angleOffset = 360.0f / arrayList.size();
            }
            this.isRotatingMode = true;
        }
        return this;
    }

    public MarkerOptions setFlat(boolean z) {
        this.isFlat = z;
        return this;
    }

    public MarkerOptions setGps(boolean z) {
        this.isGps = z;
        return this;
    }

    public MarkerOptions setInfoWindowOffset(int i, int i2) {
        this.offsetX = i;
        this.offsetY = i2;
        return this;
    }

    protected MarkerOptions setRotatingMode(boolean z) {
        this.isRotatingMode = z;
        return this;
    }

    public MarkerOptions snippet(String str) {
        this.snippet = str;
        return this;
    }

    public MarkerOptions title(String str) {
        this.title = str;
        return this;
    }

    public MarkerOptions visible(boolean z) {
        this.isVisible = z;
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.latLng, i);
        parcel.writeString(this.title);
        parcel.writeString(this.snippet);
        parcel.writeFloat(this.anchorU);
        parcel.writeFloat(this.anchorV);
        parcel.writeInt(this.offsetX);
        parcel.writeInt(this.offsetY);
        parcel.writeBooleanArray(new boolean[]{this.isVisible, this.isDraggable, this.isGps, this.isFlat, this.c, this.f11524d, this.isBelowMaskLayer, this.isRotatingMode});
        parcel.writeString(this.f11523a);
        parcel.writeInt(this.period);
        parcel.writeList(this.bitmapDescriptors);
        parcel.writeFloat(this.zIndex);
        parcel.writeFloat(this.b);
        parcel.writeInt(this.f11525e);
        parcel.writeFloat(this.f11526f);
        parcel.writeFloat(this.angleOffset);
        ArrayList<BitmapDescriptor> arrayList = this.bitmapDescriptors;
        if (arrayList == null || arrayList.size() == 0) {
            return;
        }
        parcel.writeParcelable(this.bitmapDescriptors.get(0), i);
    }

    public MarkerOptions zIndex(float f2) {
        this.zIndex = f2;
        return this;
    }
}
