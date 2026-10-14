package com.iflytek.cloud;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes4.dex */
public class EvaluatorResult implements Parcelable {
    public static final Parcelable.Creator<EvaluatorResult> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f12111a;

    class a implements Parcelable.Creator<EvaluatorResult> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public EvaluatorResult createFromParcel(Parcel parcel) {
            return new EvaluatorResult(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public EvaluatorResult[] newArray(int i) {
            return new EvaluatorResult[i];
        }
    }

    /* synthetic */ EvaluatorResult(Parcel parcel, a aVar) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getResultString() {
        return this.f12111a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f12111a);
    }

    private EvaluatorResult(Parcel parcel) {
        this.f12111a = "";
        this.f12111a = parcel.readString();
    }

    public EvaluatorResult(String str) {
        this.f12111a = "";
        if (str != null) {
            this.f12111a = str;
        }
    }
}
