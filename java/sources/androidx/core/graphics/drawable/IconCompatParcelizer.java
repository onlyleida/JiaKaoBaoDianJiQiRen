package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.os.Parcelable;
import androidx.versionedparcelable.VersionedParcel;

/* JADX INFO: loaded from: classes.dex */
public class IconCompatParcelizer {
    public static IconCompat read(VersionedParcel versionedParcel) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.f1115a = versionedParcel.p(iconCompat.f1115a, 1);
        iconCompat.c = versionedParcel.j(iconCompat.c, 2);
        iconCompat.f1116d = versionedParcel.r(iconCompat.f1116d, 3);
        iconCompat.f1117e = versionedParcel.p(iconCompat.f1117e, 4);
        iconCompat.f1118f = versionedParcel.p(iconCompat.f1118f, 5);
        iconCompat.f1119g = (ColorStateList) versionedParcel.r(iconCompat.f1119g, 6);
        iconCompat.i = versionedParcel.t(iconCompat.i, 7);
        iconCompat.j = versionedParcel.t(iconCompat.j, 8);
        iconCompat.z();
        return iconCompat;
    }

    public static void write(IconCompat iconCompat, VersionedParcel versionedParcel) {
        versionedParcel.x(true, true);
        iconCompat.A(versionedParcel.f());
        int i = iconCompat.f1115a;
        if (-1 != i) {
            versionedParcel.F(i, 1);
        }
        byte[] bArr = iconCompat.c;
        if (bArr != null) {
            versionedParcel.B(bArr, 2);
        }
        Parcelable parcelable = iconCompat.f1116d;
        if (parcelable != null) {
            versionedParcel.H(parcelable, 3);
        }
        int i2 = iconCompat.f1117e;
        if (i2 != 0) {
            versionedParcel.F(i2, 4);
        }
        int i3 = iconCompat.f1118f;
        if (i3 != 0) {
            versionedParcel.F(i3, 5);
        }
        ColorStateList colorStateList = iconCompat.f1119g;
        if (colorStateList != null) {
            versionedParcel.H(colorStateList, 6);
        }
        String str = iconCompat.i;
        if (str != null) {
            versionedParcel.J(str, 7);
        }
        String str2 = iconCompat.j;
        if (str2 != null) {
            versionedParcel.J(str2, 8);
        }
    }
}
