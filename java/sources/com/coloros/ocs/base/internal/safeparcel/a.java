package com.coloros.ocs.base.internal.safeparcel;

import android.os.Parcel;
import androidx.exifinterface.media.ExifInterface;

/* JADX INFO: loaded from: classes5.dex */
public final class a {

    /* JADX INFO: renamed from: com.coloros.ocs.base.internal.safeparcel.a$a, reason: collision with other inner class name */
    public static class C0198a extends RuntimeException {
        public C0198a(String str) {
            super(str);
        }
    }

    public static int a(Parcel parcel, int i) {
        c(parcel, i);
        return parcel.readInt();
    }

    public static int b(Parcel parcel, int i) {
        return (i & (-65536)) != -65536 ? (i >> 16) & ExifInterface.COLOR_SPACE_UNCALIBRATED : parcel.readInt();
    }

    private static void c(Parcel parcel, int i) {
        int iB = b(parcel, i);
        if (iB == 4) {
            return;
        }
        throw new C0198a("Expected size 4 got " + iB + " (0x" + Integer.toHexString(iB) + ")");
    }
}
