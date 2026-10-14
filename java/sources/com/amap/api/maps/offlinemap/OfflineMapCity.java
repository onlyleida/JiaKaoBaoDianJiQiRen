package com.amap.api.maps.offlinemap;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes5.dex */
public class OfflineMapCity extends City {
    public static final Parcelable.Creator<OfflineMapCity> CREATOR = new Parcelable.Creator<OfflineMapCity>() { // from class: com.amap.api.maps.offlinemap.OfflineMapCity.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public OfflineMapCity createFromParcel(Parcel parcel) {
            return new OfflineMapCity(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public OfflineMapCity[] newArray(int i) {
            return new OfflineMapCity[i];
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f11551a;
    private long b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f11552d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f11553e;

    public OfflineMapCity() {
        this.f11551a = "";
        this.b = 0L;
        this.c = 6;
        this.f11552d = "";
        this.f11553e = 0;
    }

    @Override // com.amap.api.maps.offlinemap.City, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long getSize() {
        return this.b;
    }

    public int getState() {
        return this.c;
    }

    public String getUrl() {
        return this.f11551a;
    }

    public String getVersion() {
        return this.f11552d;
    }

    public int getcompleteCode() {
        return this.f11553e;
    }

    public void setCompleteCode(int i) {
        this.f11553e = i;
    }

    public void setSize(long j) {
        this.b = j;
    }

    public void setState(int i) {
        this.c = i;
    }

    public void setUrl(String str) {
        this.f11551a = str;
    }

    public void setVersion(String str) {
        this.f11552d = str;
    }

    @Override // com.amap.api.maps.offlinemap.City, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f11551a);
        parcel.writeLong(this.b);
        parcel.writeInt(this.c);
        parcel.writeString(this.f11552d);
        parcel.writeInt(this.f11553e);
    }

    public OfflineMapCity(Parcel parcel) {
        super(parcel);
        this.f11551a = "";
        this.b = 0L;
        this.c = 6;
        this.f11552d = "";
        this.f11553e = 0;
        this.f11551a = parcel.readString();
        this.b = parcel.readLong();
        this.c = parcel.readInt();
        this.f11552d = parcel.readString();
        this.f11553e = parcel.readInt();
    }
}
