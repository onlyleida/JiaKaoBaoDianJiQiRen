package com.iflytek.cloud;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes4.dex */
public class RecognizerResult implements Parcelable {
    public static final Parcelable.Creator<RecognizerResult> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f12120a;

    class a implements Parcelable.Creator<RecognizerResult> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public RecognizerResult createFromParcel(Parcel parcel) {
            return new RecognizerResult(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public RecognizerResult[] newArray(int i) {
            return new RecognizerResult[i];
        }
    }

    public RecognizerResult(Parcel parcel) {
        this.f12120a = "";
        this.f12120a = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getResultString() {
        return this.f12120a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f12120a);
    }

    public RecognizerResult(String str) {
        this.f12120a = "";
        if (str != null) {
            this.f12120a = str;
        }
    }
}
