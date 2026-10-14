package com.google.android.exoplayer2.ui;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.exoplayer2.offline.Download;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class DownloadNotificationHelper {
    private static final int NULL_STRING_ID = 0;
    private final androidx.core.app.i.f notificationBuilder;

    public DownloadNotificationHelper(Context context, String str) {
        this.notificationBuilder = new androidx.core.app.i.f(context.getApplicationContext(), str);
    }

    private Notification buildEndStateNotification(Context context, int i, PendingIntent pendingIntent, String str, int i2) {
        return buildNotification(context, i, pendingIntent, str, i2, 0, 0, false, false, true);
    }

    private Notification buildNotification(Context context, int i, PendingIntent pendingIntent, String str, int i2, int i3, int i4, boolean z, boolean z2, boolean z3) {
        this.notificationBuilder.setSmallIcon(i);
        androidx.core.app.i.d dVar = null;
        this.notificationBuilder.setContentTitle(i2 == 0 ? null : context.getResources().getString(i2));
        this.notificationBuilder.setContentIntent(pendingIntent);
        androidx.core.app.i.f fVar = this.notificationBuilder;
        if (str != null) {
            dVar = new androidx.core.app.i.d();
            dVar.z(str);
        }
        fVar.setStyle(dVar);
        this.notificationBuilder.setProgress(i3, i4, z);
        this.notificationBuilder.setOngoing(z2);
        this.notificationBuilder.setShowWhen(z3);
        return this.notificationBuilder.build();
    }

    public Notification buildDownloadCompletedNotification(Context context, int i, PendingIntent pendingIntent, String str) {
        return buildEndStateNotification(context, i, pendingIntent, str, R.string.exo_download_completed);
    }

    public Notification buildDownloadFailedNotification(Context context, int i, PendingIntent pendingIntent, String str) {
        return buildEndStateNotification(context, i, pendingIntent, str, R.string.exo_download_failed);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0053  */
    /* JADX WARN: Code duplicated, block: B:33:0x005b  */
    /* JADX WARN: Code duplicated, block: B:35:0x0061  */
    public Notification buildProgressNotification(Context context, int i, PendingIntent pendingIntent, String str, List<Download> list) {
        int i2;
        int i3;
        int i4;
        boolean z;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        boolean z2 = false;
        boolean z3 = false;
        int i5 = 0;
        boolean z4 = true;
        boolean z5 = false;
        for (int i6 = 0; i6 < list.size(); i6++) {
            Download download = list.get(i6);
            int i7 = download.state;
            if (i7 == 5) {
                z3 = true;
            } else if (i7 == 7 || i7 == 2) {
                float percentDownloaded = download.getPercentDownloaded();
                if (percentDownloaded != -1.0f) {
                    f2 += percentDownloaded;
                    z4 = false;
                }
                z5 |= download.getBytesDownloaded() > 0;
                i5++;
                z2 = true;
            }
        }
        if (!z2) {
            if (z3) {
                i3 = R.string.exo_download_removing;
            } else {
                i2 = 0;
            }
            if (z2) {
                int i8 = (int) (f2 / i5);
                z = !z4 && z5;
                i4 = i8;
            } else {
                i4 = 0;
                z = true;
            }
            return buildNotification(context, i, pendingIntent, str, i2, 100, i4, z, true, false);
        }
        i3 = R.string.exo_download_downloading;
        i2 = i3;
        if (z2) {
            int i9 = (int) (f2 / i5);
            z = !z4 && z5;
            i4 = i9;
        } else {
            i4 = 0;
            z = true;
        }
        return buildNotification(context, i, pendingIntent, str, i2, 100, i4, z, true, false);
    }
}
