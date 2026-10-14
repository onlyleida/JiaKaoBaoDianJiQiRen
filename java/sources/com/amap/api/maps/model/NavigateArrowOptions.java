package com.amap.api.maps.model;

import android.graphics.Color;
import android.os.Parcel;
import android.os.Parcelable;
import cn.mucang.android.jiakaoyi.signal.ai.AIOtaMsgResult;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.l;
import com.autonavi.amap.mapcore.AMapEngineUtils;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.google.mlkit.common.MlKitException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class NavigateArrowOptions extends BaseOptions implements Parcelable {
    public static final NavigateArrowOptionsCreator CREATOR = new NavigateArrowOptionsCreator();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f11528a;
    private float width = 10.0f;
    private int topColor = Color.argb(221, 87, 235, MlKitException.CODE_SCANNER_TASK_IN_PROGRESS);
    private int sideColor = Color.argb(AIOtaMsgResult.Success, 0, TsExtractor.TS_STREAM_TYPE_AC4, l.Receive_GEAR_DATA);
    private float zIndex = BitmapDescriptorFactory.HUE_RED;
    private boolean isVisible = true;
    private boolean is3DModel = false;
    private final String type = "NavigateArrowOptions";
    private int arrowLineInnerResId = 111;
    private int arrowLineOuterResId = 222;
    private int arrowLineShadowResId = AMapEngineUtils.ARROW_LINE_SHADOW_TEXTURE_ID;
    private final List<LatLng> points = new ArrayList();

    public NavigateArrowOptions add(LatLng latLng) {
        this.points.add(latLng);
        return this;
    }

    public NavigateArrowOptions addAll(Iterable<LatLng> iterable) {
        Iterator<LatLng> it = iterable.iterator();
        while (it.hasNext()) {
            this.points.add(it.next());
        }
        return this;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<LatLng> getPoints() {
        return this.points;
    }

    public int getSideColor() {
        return this.sideColor;
    }

    public int getTopColor() {
        return this.topColor;
    }

    public float getWidth() {
        return this.width;
    }

    public float getZIndex() {
        return this.zIndex;
    }

    public boolean is3DModel() {
        return this.is3DModel;
    }

    public boolean isVisible() {
        return this.isVisible;
    }

    public NavigateArrowOptions set3DModel(boolean z) {
        this.is3DModel = z;
        return this;
    }

    public void setPoints(List<LatLng> list) {
        List<LatLng> list2;
        if (list == null || (list2 = this.points) == list) {
            return;
        }
        try {
            list2.clear();
            this.points.addAll(list);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public NavigateArrowOptions sideColor(int i) {
        this.sideColor = i;
        return this;
    }

    public NavigateArrowOptions topColor(int i) {
        this.topColor = i;
        return this;
    }

    public NavigateArrowOptions visible(boolean z) {
        this.isVisible = z;
        return this;
    }

    public NavigateArrowOptions width(float f2) {
        this.width = f2;
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedList(this.points);
        parcel.writeFloat(this.width);
        parcel.writeInt(this.topColor);
        parcel.writeInt(this.sideColor);
        parcel.writeFloat(this.zIndex);
        parcel.writeByte(this.isVisible ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f11528a);
        parcel.writeByte(this.is3DModel ? (byte) 1 : (byte) 0);
    }

    public NavigateArrowOptions zIndex(float f2) {
        this.zIndex = f2;
        return this;
    }

    public NavigateArrowOptions add(LatLng... latLngArr) {
        this.points.addAll(Arrays.asList(latLngArr));
        return this;
    }
}
