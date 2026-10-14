package com.amap.api.maps.model;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes5.dex */
public class BitmapDescriptorCreator implements Parcelable.Creator<BitmapDescriptor> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable.Creator
    public BitmapDescriptor createFromParcel(Parcel parcel) {
        BitmapDescriptor bitmapDescriptor = new BitmapDescriptor(null, parcel.readString());
        bitmapDescriptor.c = (Bitmap) parcel.readParcelable(Bitmap.class.getClassLoader());
        bitmapDescriptor.f11516a = parcel.readInt();
        bitmapDescriptor.b = parcel.readInt();
        return bitmapDescriptor;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable.Creator
    public BitmapDescriptor[] newArray(int i) {
        return new BitmapDescriptor[i];
    }
}
