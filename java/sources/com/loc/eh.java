package com.loc;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes4.dex */
public final class eh implements Parcelable {
    public static final Parcelable.Creator<eh> CREATOR = new Parcelable.Creator<eh>() { // from class: com.loc.eh.1
        private static eh a(Parcel parcel) {
            eh ehVar = new eh();
            ehVar.c(parcel.readString());
            ehVar.d(parcel.readString());
            ehVar.e(parcel.readString());
            ehVar.f(parcel.readString());
            ehVar.b(parcel.readString());
            ehVar.c(parcel.readLong());
            ehVar.d(parcel.readLong());
            ehVar.a(parcel.readLong());
            ehVar.b(parcel.readLong());
            ehVar.a(parcel.readString());
            return ehVar;
        }

        private static eh[] a(int i) {
            return new eh[i];
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ eh createFromParcel(Parcel parcel) {
            return a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ eh[] newArray(int i) {
            return a(i);
        }
    };

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f12776e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f12777f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f12774a = 0;
    private long b = 0;
    private long c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f12775d = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f12778g = "first";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f12779h = "";
    private String i = "";
    private String j = null;

    public final long a() {
        long j = this.f12775d;
        long j2 = this.c;
        if (j - j2 <= 0) {
            return 0L;
        }
        return j - j2;
    }

    public final void a(long j) {
        this.c = j;
    }

    public final void a(String str) {
        this.i = str;
    }

    public final String b() {
        return this.i;
    }

    public final void b(long j) {
        this.f12775d = j;
    }

    public final void b(String str) {
        this.j = str;
    }

    public final String c() {
        return this.j;
    }

    public final void c(long j) {
        this.f12774a = j;
    }

    public final void c(String str) {
        this.f12776e = str;
    }

    public final String d() {
        return this.f12776e;
    }

    public final void d(long j) {
        this.b = j;
    }

    public final void d(String str) {
        this.f12777f = str;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String e() {
        return this.f12777f;
    }

    public final void e(String str) {
        this.f12778g = str;
    }

    public final String f() {
        return this.f12778g;
    }

    public final void f(String str) {
        this.f12779h = str;
    }

    public final String g() {
        return this.f12779h;
    }

    public final long h() {
        long j = this.b;
        long j2 = this.f12774a;
        if (j <= j2) {
            return 0L;
        }
        return j - j2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        try {
            parcel.writeString(this.f12776e);
            parcel.writeString(this.f12777f);
            parcel.writeString(this.f12778g);
            parcel.writeString(this.f12779h);
            parcel.writeString(this.j);
            parcel.writeLong(this.f12774a);
            parcel.writeLong(this.b);
            parcel.writeLong(this.c);
            parcel.writeLong(this.f12775d);
            parcel.writeString(this.i);
        } catch (Throwable unused) {
        }
    }
}
