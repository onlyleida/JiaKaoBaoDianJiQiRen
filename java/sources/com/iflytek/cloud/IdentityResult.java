package com.iflytek.cloud;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes4.dex */
public class IdentityResult implements Parcelable {
    public static final Parcelable.Creator<IdentityResult> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f12116a;

    class a implements Parcelable.Creator<IdentityResult> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public IdentityResult createFromParcel(Parcel parcel) {
            return new IdentityResult(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public IdentityResult[] newArray(int i) {
            return new IdentityResult[i];
        }
    }

    /* synthetic */ IdentityResult(Parcel parcel, a aVar) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getResultString() {
        return this.f12116a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f12116a);
    }

    public IdentityResult(String str) {
        this.f12116a = "";
        if (str != null) {
            this.f12116a = str;
        }
    }

    private IdentityResult(Parcel parcel) {
        this.f12116a = "";
        this.f12116a = parcel.readString();
    }
}
