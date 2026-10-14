package com.coloros.ocs.base.internal.safeparcel;

import android.os.Parcel;

/* JADX INFO: loaded from: classes5.dex */
public final class b {
    public static void a(Parcel parcel, int i) {
        int iDataPosition = parcel.dataPosition();
        parcel.setDataPosition(i - 4);
        parcel.writeInt(iDataPosition - i);
        parcel.setDataPosition(iDataPosition);
    }

    public static void b(Parcel parcel, int i, int i2) {
        d(parcel, i);
        parcel.writeInt(i2);
    }

    public static int c(Parcel parcel, int i) {
        parcel.writeInt(i | (-65536));
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    private static void d(Parcel parcel, int i) {
        parcel.writeInt(i | 262144);
    }
}
