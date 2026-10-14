package com.coloros.ocs.base.common;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes5.dex */
public class AuthResult implements Parcelable {
    public static final Parcelable.Creator<AuthResult> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f11656a;
    private int b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f11657d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private byte[] f11658e;

    static class a implements Parcelable.Creator<AuthResult> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ AuthResult createFromParcel(Parcel parcel) {
            return new AuthResult(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ AuthResult[] newArray(int i) {
            return new AuthResult[i];
        }
    }

    public AuthResult(String str, int i, int i2, int i3, byte[] bArr) {
        this.f11656a = str;
        this.b = i;
        this.c = i2;
        this.f11657d = i3;
        this.f11658e = bArr;
        g.b.a.a.c.a.d("AuthResult", "AuthResult errorCode is " + this.f11657d);
    }

    public int a() {
        return this.f11657d;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f11656a);
        parcel.writeInt(this.b);
        parcel.writeInt(this.c);
        parcel.writeInt(this.f11657d);
        parcel.writeByteArray(this.f11658e);
    }

    protected AuthResult(Parcel parcel) {
        this.f11656a = parcel.readString();
        this.b = parcel.readInt();
        this.c = parcel.readInt();
        this.f11657d = parcel.readInt();
        this.f11658e = parcel.createByteArray();
    }
}
