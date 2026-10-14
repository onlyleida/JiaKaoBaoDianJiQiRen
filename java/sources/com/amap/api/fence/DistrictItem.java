package com.amap.api.fence;

import android.os.Parcel;
import android.os.Parcelable;
import com.amap.api.location.DPoint;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class DistrictItem implements Parcelable {
    public static final Parcelable.Creator<DistrictItem> CREATOR = new Parcelable.Creator<DistrictItem>() { // from class: com.amap.api.fence.DistrictItem.1
        private static DistrictItem a(Parcel parcel) {
            return new DistrictItem(parcel);
        }

        private static DistrictItem[] a(int i) {
            return new DistrictItem[i];
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ DistrictItem createFromParcel(Parcel parcel) {
            return a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ DistrictItem[] newArray(int i) {
            return a(i);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f10375a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<DPoint> f10376d;

    public DistrictItem() {
        this.f10375a = "";
        this.b = null;
        this.c = null;
        this.f10376d = null;
    }

    protected DistrictItem(Parcel parcel) {
        this.f10375a = "";
        this.b = null;
        this.c = null;
        this.f10376d = null;
        this.f10375a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.f10376d = parcel.createTypedArrayList(DPoint.CREATOR);
    }

    public static Parcelable.Creator<DistrictItem> getCreator() {
        return CREATOR;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAdcode() {
        return this.c;
    }

    public String getCitycode() {
        return this.b;
    }

    public String getDistrictName() {
        return this.f10375a;
    }

    public List<DPoint> getPolyline() {
        return this.f10376d;
    }

    public void setAdcode(String str) {
        this.c = str;
    }

    public void setCitycode(String str) {
        this.b = str;
    }

    public void setDistrictName(String str) {
        this.f10375a = str;
    }

    public void setPolyline(List<DPoint> list) {
        this.f10376d = list;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f10375a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeTypedList(this.f10376d);
    }
}
