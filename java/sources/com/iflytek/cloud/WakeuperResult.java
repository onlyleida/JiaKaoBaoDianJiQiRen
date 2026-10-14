package com.iflytek.cloud;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes4.dex */
public class WakeuperResult implements Parcelable {
    public static final Parcelable.Creator<WakeuperResult> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f12155a;
    private byte[] b;

    class a implements Parcelable.Creator<WakeuperResult> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public WakeuperResult createFromParcel(Parcel parcel) {
            return new WakeuperResult(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public WakeuperResult[] newArray(int i) {
            return new WakeuperResult[i];
        }
    }

    public WakeuperResult(String str, byte[] bArr) {
        this(str);
        this.b = bArr;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public byte[] getBuffer() {
        return this.b;
    }

    public String getResultString() {
        return this.f12155a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f12155a);
    }

    public WakeuperResult(Parcel parcel) {
        this.f12155a = "";
        this.b = null;
        this.f12155a = parcel.readString();
    }

    public WakeuperResult(String str) {
        this.f12155a = "";
        this.b = null;
        if (str != null) {
            this.f12155a = str;
        }
    }
}
