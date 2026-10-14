package com.amap.api.maps.offlinemap;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class OfflineMapProvince extends Province {
    public static final Parcelable.Creator<OfflineMapProvince> CREATOR = new Parcelable.Creator<OfflineMapProvince>() { // from class: com.amap.api.maps.offlinemap.OfflineMapProvince.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public OfflineMapProvince createFromParcel(Parcel parcel) {
            return new OfflineMapProvince(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public OfflineMapProvince[] newArray(int i) {
            return new OfflineMapProvince[i];
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f11566a;
    private int b;
    private long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f11567d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f11568e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ArrayList<OfflineMapCity> f11569f;

    public OfflineMapProvince() {
        this.b = 6;
        this.f11568e = 0;
    }

    @Override // com.amap.api.maps.offlinemap.Province, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ArrayList<OfflineMapCity> getCityList() {
        ArrayList<OfflineMapCity> arrayList = this.f11569f;
        return arrayList == null ? new ArrayList<>() : arrayList;
    }

    public ArrayList<OfflineMapCity> getDownloadedCityList() {
        ArrayList<OfflineMapCity> arrayList = new ArrayList<>();
        ArrayList<OfflineMapCity> arrayList2 = this.f11569f;
        if (arrayList2 == null) {
            return arrayList;
        }
        for (OfflineMapCity offlineMapCity : arrayList2) {
            if (offlineMapCity.getState() != 6) {
                arrayList.add(offlineMapCity);
            }
        }
        return arrayList;
    }

    public long getSize() {
        return this.c;
    }

    public int getState() {
        return this.b;
    }

    public String getUrl() {
        return this.f11566a;
    }

    public String getVersion() {
        return this.f11567d;
    }

    public int getcompleteCode() {
        return this.f11568e;
    }

    public void setCityList(ArrayList<OfflineMapCity> arrayList) {
        this.f11569f = arrayList;
    }

    public void setCompleteCode(int i) {
        this.f11568e = i;
    }

    public void setSize(long j) {
        this.c = j;
    }

    public void setState(int i) {
        this.b = i;
    }

    public void setUrl(String str) {
        this.f11566a = str;
    }

    public void setVersion(String str) {
        this.f11567d = str;
    }

    @Override // com.amap.api.maps.offlinemap.Province, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f11566a);
        parcel.writeInt(this.b);
        parcel.writeLong(this.c);
        parcel.writeString(this.f11567d);
        parcel.writeInt(this.f11568e);
        parcel.writeTypedList(this.f11569f);
    }

    public OfflineMapProvince(Parcel parcel) {
        super(parcel);
        this.b = 6;
        this.f11568e = 0;
        this.f11566a = parcel.readString();
        this.b = parcel.readInt();
        this.c = parcel.readLong();
        this.f11567d = parcel.readString();
        this.f11568e = parcel.readInt();
        this.f11569f = parcel.createTypedArrayList(OfflineMapCity.CREATOR);
    }
}
