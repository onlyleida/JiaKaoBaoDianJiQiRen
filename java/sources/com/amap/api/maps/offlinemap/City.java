package com.amap.api.maps.offlinemap;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes5.dex */
public class City implements Parcelable {
    public static final Parcelable.Creator<City> CREATOR = new Parcelable.Creator<City>() { // from class: com.amap.api.maps.offlinemap.City.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public City createFromParcel(Parcel parcel) {
            return new City(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public City[] newArray(int i) {
            return new City[i];
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f11538a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f11539d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f11540e;

    public City() {
        this.f11538a = "";
        this.b = "";
        this.f11540e = "";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAdcode() {
        return this.f11540e;
    }

    public String getCity() {
        return this.f11538a;
    }

    public String getCode() {
        return this.b;
    }

    public String getJianpin() {
        return this.c;
    }

    public String getPinyin() {
        return this.f11539d;
    }

    public void setAdcode(String str) {
        this.f11540e = str;
    }

    public void setCity(String str) {
        this.f11538a = str;
    }

    public void setCode(String str) {
        if (str == null || "[]".equals(str)) {
            return;
        }
        this.b = str;
    }

    public void setJianpin(String str) {
        this.c = str;
    }

    public void setPinyin(String str) {
        this.f11539d = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f11538a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.f11539d);
        parcel.writeString(this.f11540e);
    }

    public City(Parcel parcel) {
        this.f11538a = "";
        this.b = "";
        this.f11540e = "";
        this.f11538a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.f11539d = parcel.readString();
        this.f11540e = parcel.readString();
    }
}
