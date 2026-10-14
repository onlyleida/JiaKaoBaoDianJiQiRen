package com.coloros.ocs.base.common;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes5.dex */
public class Feature implements Parcelable {
    public static final Parcelable.Creator<Feature> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f11661a;
    private long b;

    static class a implements Parcelable.Creator<Feature> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ Feature createFromParcel(Parcel parcel) {
            return new Feature(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ Feature[] newArray(int i) {
            return new Feature[i];
        }
    }

    protected Feature(Parcel parcel) {
        this.f11661a = parcel.readString();
        this.b = parcel.readLong();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f11661a);
        parcel.writeLong(this.b);
    }
}
