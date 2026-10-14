package com.amap.api.fence;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes5.dex */
public class PoiItem implements Parcelable {
    public static final Parcelable.Creator<PoiItem> CREATOR = new Parcelable.Creator<PoiItem>() { // from class: com.amap.api.fence.PoiItem.1
        private static PoiItem a(Parcel parcel) {
            return new PoiItem(parcel);
        }

        private static PoiItem[] a(int i) {
            return new PoiItem[i];
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ PoiItem createFromParcel(Parcel parcel) {
            return a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ PoiItem[] newArray(int i) {
            return a(i);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f10384a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f10385d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f10386e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private double f10387f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private double f10388g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f10389h;
    private String i;
    private String j;
    private String k;

    public PoiItem() {
        this.f10384a = "";
        this.b = "";
        this.c = "";
        this.f10385d = "";
        this.f10386e = "";
        this.f10387f = 0.0d;
        this.f10388g = 0.0d;
        this.f10389h = "";
        this.i = "";
        this.j = "";
        this.k = "";
    }

    protected PoiItem(Parcel parcel) {
        this.f10384a = "";
        this.b = "";
        this.c = "";
        this.f10385d = "";
        this.f10386e = "";
        this.f10387f = 0.0d;
        this.f10388g = 0.0d;
        this.f10389h = "";
        this.i = "";
        this.j = "";
        this.k = "";
        this.f10384a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.f10385d = parcel.readString();
        this.f10386e = parcel.readString();
        this.f10387f = parcel.readDouble();
        this.f10388g = parcel.readDouble();
        this.f10389h = parcel.readString();
        this.i = parcel.readString();
        this.j = parcel.readString();
        this.k = parcel.readString();
    }

    public static Parcelable.Creator<PoiItem> getCreator() {
        return CREATOR;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAddress() {
        return this.f10386e;
    }

    public String getAdname() {
        return this.k;
    }

    public String getCity() {
        return this.j;
    }

    public double getLatitude() {
        return this.f10387f;
    }

    public double getLongitude() {
        return this.f10388g;
    }

    public String getPoiId() {
        return this.b;
    }

    public String getPoiName() {
        return this.f10384a;
    }

    public String getPoiType() {
        return this.c;
    }

    public String getProvince() {
        return this.i;
    }

    public String getTel() {
        return this.f10389h;
    }

    public String getTypeCode() {
        return this.f10385d;
    }

    public void setAddress(String str) {
        this.f10386e = str;
    }

    public void setAdname(String str) {
        this.k = str;
    }

    public void setCity(String str) {
        this.j = str;
    }

    public void setLatitude(double d2) {
        this.f10387f = d2;
    }

    public void setLongitude(double d2) {
        this.f10388g = d2;
    }

    public void setPoiId(String str) {
        this.b = str;
    }

    public void setPoiName(String str) {
        this.f10384a = str;
    }

    public void setPoiType(String str) {
        this.c = str;
    }

    public void setProvince(String str) {
        this.i = str;
    }

    public void setTel(String str) {
        this.f10389h = str;
    }

    public void setTypeCode(String str) {
        this.f10385d = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f10384a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.f10385d);
        parcel.writeString(this.f10386e);
        parcel.writeDouble(this.f10387f);
        parcel.writeDouble(this.f10388g);
        parcel.writeString(this.f10389h);
        parcel.writeString(this.i);
        parcel.writeString(this.j);
        parcel.writeString(this.k);
    }
}
