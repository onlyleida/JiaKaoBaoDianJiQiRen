package androidx.core.app;

import android.app.PendingIntent;
import androidx.core.graphics.drawable.IconCompat;
import androidx.versionedparcelable.VersionedParcel;

/* JADX INFO: loaded from: classes.dex */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(VersionedParcel versionedParcel) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        remoteActionCompat.f962a = (IconCompat) versionedParcel.v(remoteActionCompat.f962a, 1);
        remoteActionCompat.b = versionedParcel.l(remoteActionCompat.b, 2);
        remoteActionCompat.c = versionedParcel.l(remoteActionCompat.c, 3);
        remoteActionCompat.f963d = (PendingIntent) versionedParcel.r(remoteActionCompat.f963d, 4);
        remoteActionCompat.f964e = versionedParcel.h(remoteActionCompat.f964e, 5);
        remoteActionCompat.f965f = versionedParcel.h(remoteActionCompat.f965f, 6);
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, VersionedParcel versionedParcel) {
        versionedParcel.x(false, false);
        versionedParcel.M(remoteActionCompat.f962a, 1);
        versionedParcel.D(remoteActionCompat.b, 2);
        versionedParcel.D(remoteActionCompat.c, 3);
        versionedParcel.H(remoteActionCompat.f963d, 4);
        versionedParcel.z(remoteActionCompat.f964e, 5);
        versionedParcel.z(remoteActionCompat.f965f, 6);
    }
}
