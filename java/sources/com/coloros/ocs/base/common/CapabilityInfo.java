package com.coloros.ocs.base.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class CapabilityInfo implements Parcelable {
    public static final Parcelable.Creator<CapabilityInfo> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<Feature> f11659a;
    private int b;
    private AuthResult c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private IBinder f11660d;

    static class a implements Parcelable.Creator<CapabilityInfo> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ CapabilityInfo createFromParcel(Parcel parcel) {
            return new CapabilityInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ CapabilityInfo[] newArray(int i) {
            return new CapabilityInfo[i];
        }
    }

    public CapabilityInfo(List<Feature> list, int i, AuthResult authResult) {
        this(list, i, authResult, null);
    }

    public AuthResult a() {
        return this.c;
    }

    public void b(IBinder iBinder) {
        this.f11660d = iBinder;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeList(this.f11659a);
        parcel.writeInt(this.b);
        parcel.writeParcelable(this.c, 0);
        parcel.writeStrongBinder(this.f11660d);
    }

    public CapabilityInfo(List<Feature> list, int i, AuthResult authResult, IBinder iBinder) {
        this.f11659a = list;
        this.b = i;
        this.c = authResult;
        this.f11660d = iBinder;
    }

    protected CapabilityInfo(Parcel parcel) {
        this.f11659a = parcel.readArrayList(Feature.class.getClassLoader());
        this.b = parcel.readInt();
        this.c = (AuthResult) parcel.readParcelable(AuthResult.class.getClassLoader());
        this.f11660d = parcel.readStrongBinder();
    }
}
