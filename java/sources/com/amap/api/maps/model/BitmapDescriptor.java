package com.amap.api.maps.model;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable;
import com.amap.api.mapcore.util.r3;

/* JADX INFO: loaded from: classes5.dex */
public final class BitmapDescriptor implements Parcelable, Cloneable {
    public static final BitmapDescriptorCreator CREATOR = new BitmapDescriptorCreator();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f11516a;
    int b;
    Bitmap c;
    private String mId;

    BitmapDescriptor(Bitmap bitmap, String str) {
        this.f11516a = 0;
        this.b = 0;
        if (bitmap != null) {
            try {
                this.f11516a = bitmap.getWidth();
                this.b = bitmap.getHeight();
                if (bitmap.getConfig() == null) {
                    this.c = bitmap.copy(Bitmap.Config.ARGB_8888, true);
                } else {
                    this.c = bitmap.copy(bitmap.getConfig(), true);
                }
            } catch (Throwable th) {
                r3.J(th);
                return;
            }
        }
        this.mId = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        BitmapDescriptor bitmapDescriptor;
        Bitmap bitmap;
        Bitmap bitmap2 = this.c;
        if (bitmap2 == null || bitmap2.isRecycled() || obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (BitmapDescriptor.class == obj.getClass() && (bitmap = (bitmapDescriptor = (BitmapDescriptor) obj).c) != null && !bitmap.isRecycled() && this.f11516a == bitmapDescriptor.getWidth() && this.b == bitmapDescriptor.getHeight()) {
            try {
                return this.c.sameAs(bitmapDescriptor.c);
            } catch (Throwable th) {
                r3.J(th);
            }
        }
        return false;
    }

    public Bitmap getBitmap() {
        return this.c;
    }

    public int getHeight() {
        return this.b;
    }

    public String getId() {
        return this.mId;
    }

    public int getWidth() {
        return this.f11516a;
    }

    public int hashCode() {
        return super.hashCode();
    }

    public void recycle() {
        try {
            Bitmap bitmap = this.c;
            if (bitmap == null || bitmap.isRecycled()) {
                return;
            }
            r3.g0(this.c);
            this.c = null;
        } catch (Throwable th) {
            r3.J(th);
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mId);
        parcel.writeParcelable(this.c, i);
        parcel.writeInt(this.f11516a);
        parcel.writeInt(this.b);
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public BitmapDescriptor m126clone() {
        try {
            Bitmap bitmap = this.c;
            return new BitmapDescriptor(bitmap.copy(bitmap.getConfig(), true), this.f11516a, this.b, this.mId);
        } catch (Throwable th) {
            th.printStackTrace();
            r3.J(th);
            return null;
        }
    }

    private BitmapDescriptor(Bitmap bitmap, int i, int i2, String str) {
        this.f11516a = 0;
        this.b = 0;
        this.f11516a = i;
        this.b = i2;
        this.c = bitmap;
        this.mId = str;
    }
}
