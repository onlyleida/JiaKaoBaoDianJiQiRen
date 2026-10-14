package com.coloros.ocs.base.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.exifinterface.media.ExifInterface;

/* JADX INFO: loaded from: classes5.dex */
final class d implements Parcelable.Creator<Status> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Status createFromParcel(Parcel parcel) {
        Parcelable parcelable;
        int i = parcel.readInt();
        int iB = com.coloros.ocs.base.internal.safeparcel.a.b(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if ((i & ExifInterface.COLOR_SPACE_UNCALIBRATED) != 20293) {
            throw new com.coloros.ocs.base.internal.safeparcel.a.C0198a("Expected object header. Got 0x" + Integer.toHexString(i));
        }
        int i2 = iB + iDataPosition;
        if (i2 < iDataPosition || i2 > parcel.dataSize()) {
            throw new com.coloros.ocs.base.internal.safeparcel.a.C0198a("Size read is invalid start=" + iDataPosition + " end=" + i2);
        }
        int iA = 0;
        String str = null;
        PendingIntent pendingIntent = null;
        int iA2 = 0;
        while (parcel.dataPosition() < i2) {
            int i3 = parcel.readInt();
            int i4 = i3 & ExifInterface.COLOR_SPACE_UNCALIBRATED;
            if (i4 == 1) {
                iA2 = com.coloros.ocs.base.internal.safeparcel.a.a(parcel, i3);
            } else if (i4 == 2) {
                int iB2 = com.coloros.ocs.base.internal.safeparcel.a.b(parcel, i3);
                int iDataPosition2 = parcel.dataPosition();
                if (iB2 == 0) {
                    str = null;
                } else {
                    String string = parcel.readString();
                    parcel.setDataPosition(iDataPosition2 + iB2);
                    str = string;
                }
            } else if (i4 == 3) {
                Parcelable.Creator creator = PendingIntent.CREATOR;
                int iB3 = com.coloros.ocs.base.internal.safeparcel.a.b(parcel, i3);
                int iDataPosition3 = parcel.dataPosition();
                if (iB3 == 0) {
                    parcelable = null;
                } else {
                    parcelable = (Parcelable) creator.createFromParcel(parcel);
                    parcel.setDataPosition(iDataPosition3 + iB3);
                }
                pendingIntent = (PendingIntent) parcelable;
            } else if (i4 != 1000) {
                parcel.setDataPosition(parcel.dataPosition() + com.coloros.ocs.base.internal.safeparcel.a.b(parcel, i3));
            } else {
                iA = com.coloros.ocs.base.internal.safeparcel.a.a(parcel, i3);
            }
        }
        if (parcel.dataPosition() == i2) {
            return new Status(iA, iA2, str, pendingIntent);
        }
        throw new com.coloros.ocs.base.internal.safeparcel.a.C0198a("Overread allowed size end=".concat(String.valueOf(i2)));
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Status[] newArray(int i) {
        return new Status[i];
    }
}
