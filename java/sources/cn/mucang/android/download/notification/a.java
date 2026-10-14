package cn.mucang.android.download.notification;

import android.R;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Build;
import android.widget.RemoteViews;
import androidx.core.app.i;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.download.DownloadEntity;
import cn.mucang.android.download.DownloadProgress;
import cn.mucang.android.download.DownloadStatusChange;
import cn.mucang.android.download.client.DownloadManager;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class a implements cn.mucang.android.download.client.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<Long, Notification> f2963a;

    /* JADX INFO: renamed from: cn.mucang.android.download.notification.a$a, reason: collision with other inner class name */
    class C0096a implements cn.mucang.android.download.client.c<DownloadEntity> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ DownloadProgress f2964a;

        C0096a(DownloadProgress downloadProgress) {
            this.f2964a = downloadProgress;
        }

        @Override // cn.mucang.android.download.client.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(DownloadEntity downloadEntity) {
            if (downloadEntity == null) {
                a.this.e(this.f2964a.f2942a);
            } else {
                downloadEntity.setDownloadedLength(this.f2964a.c);
                a.this.l(downloadEntity);
            }
        }
    }

    class b implements cn.mucang.android.download.client.c<DownloadEntity> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ DownloadStatusChange f2965a;

        b(DownloadStatusChange downloadStatusChange) {
            this.f2965a = downloadStatusChange;
        }

        @Override // cn.mucang.android.download.client.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(DownloadEntity downloadEntity) {
            if (downloadEntity != null) {
                a.this.l(downloadEntity);
            } else {
                a.this.e(this.f2965a.f2943a);
            }
        }
    }

    class c implements cn.mucang.android.download.client.c<DownloadEntity> {
        c() {
        }

        @Override // cn.mucang.android.download.client.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(DownloadEntity downloadEntity) {
            if (downloadEntity == null || !downloadEntity.isNotification()) {
                return;
            }
            u.h(downloadEntity.getTitle() + " 下载完成");
            a.this.f(downloadEntity);
        }
    }

    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static a f2967a = new a(null);
    }

    /* synthetic */ a(C0096a c0096a) {
        this();
    }

    private Notification g(DownloadEntity downloadEntity) {
        if (downloadEntity == null) {
            return null;
        }
        Notification notification = this.f2963a.get(downloadEntity.getId());
        if (notification != null) {
            return notification;
        }
        i.f fVar = Build.VERSION.SDK_INT >= 26 ? new i.f(MucangConfig.getContext(), "core__download_channel") : new i.f(MucangConfig.getContext());
        fVar.setContentTitle("下载");
        fVar.setContentText("下载");
        fVar.setSmallIcon(R.mipmap.sym_def_app_icon);
        fVar.setPriority(0);
        fVar.setOnlyAlertOnce(true);
        RemoteViews remoteViews = new RemoteViews(MucangConfig.r(), cn.mucang.android.framework.download.R.layout.download__notification_remote_view);
        remoteViews.setTextViewText(cn.mucang.android.framework.download.R.id.remote_title, "下载 " + downloadEntity.getTitle());
        Bitmap bitmapB = cn.mucang.android.download.c.b(MucangConfig.getContext());
        if (bitmapB == null) {
            remoteViews.setImageViewResource(cn.mucang.android.framework.download.R.id.remote_image, R.mipmap.sym_def_app_icon);
        } else {
            remoteViews.setImageViewBitmap(cn.mucang.android.framework.download.R.id.remote_image, bitmapB);
        }
        fVar.setContent(remoteViews);
        fVar.setWhen(System.currentTimeMillis());
        fVar.setDeleteIntent(i(downloadEntity));
        Notification notificationBuild = fVar.build();
        this.f2963a.put(downloadEntity.getId(), notificationBuild);
        return notificationBuild;
    }

    private PendingIntent h(DownloadEntity downloadEntity) {
        Intent intent = new Intent("cn.mucang.android.core.download.notification.clicked");
        intent.putExtra("download_entity", downloadEntity);
        return PendingIntent.getBroadcast(MucangConfig.getContext(), 0, intent, Build.VERSION.SDK_INT >= 23 ? 201326592 : 134217728);
    }

    private PendingIntent i(DownloadEntity downloadEntity) {
        Intent intent = new Intent("cn.mucang.android.core.download.notification.deleted");
        intent.putExtra("download_entity", downloadEntity);
        return PendingIntent.getBroadcast(MucangConfig.getContext(), 0, intent, Build.VERSION.SDK_INT >= 23 ? 201326592 : 134217728);
    }

    public static a j() {
        return d.f2967a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:29:0x003f  */
    /* JADX WARN: Code duplicated, block: B:30:0x0057  */
    /* JADX WARN: Code duplicated, block: B:32:0x0080  */
    /* JADX WARN: Code duplicated, block: B:33:0x0098  */
    public void l(DownloadEntity downloadEntity) {
        Notification notification;
        if (downloadEntity == null || (notification = this.f2963a.get(downloadEntity.getId())) == null) {
            return;
        }
        int downloadStatus = downloadEntity.getDownloadStatus();
        if (downloadStatus == 0 || downloadStatus == 1 || downloadStatus == 2) {
            RemoteViews remoteViews = notification.contentView;
            int i = cn.mucang.android.framework.download.R.id.remote_action;
            remoteViews.setViewVisibility(i, 0);
            notification.contentView.setImageViewResource(i, cn.mucang.android.framework.download.R.drawable.download__notification_pause);
            notification.contentView.setTextViewText(cn.mucang.android.framework.download.R.id.remote_desc, "正在下载");
        } else if (downloadStatus == 4) {
            RemoteViews remoteViews2 = notification.contentView;
            int i2 = cn.mucang.android.framework.download.R.id.remote_action;
            remoteViews2.setViewVisibility(i2, 0);
            notification.contentView.setImageViewResource(i2, cn.mucang.android.framework.download.R.drawable.download__notification_start);
            notification.contentView.setTextViewText(cn.mucang.android.framework.download.R.id.remote_desc, "下载暂停");
        } else if (downloadStatus == 8) {
            RemoteViews remoteViews3 = notification.contentView;
            int i3 = cn.mucang.android.framework.download.R.id.remote_action;
            remoteViews3.setViewVisibility(i3, 0);
            notification.contentView.setImageViewResource(i3, cn.mucang.android.framework.download.R.drawable.download__notification_pause);
            notification.contentView.setTextViewText(cn.mucang.android.framework.download.R.id.remote_desc, "正在下载");
        } else if (downloadStatus == 16) {
            RemoteViews remoteViews4 = notification.contentView;
            int i4 = cn.mucang.android.framework.download.R.id.remote_action;
            remoteViews4.setViewVisibility(i4, 0);
            notification.contentView.setImageViewResource(i4, cn.mucang.android.framework.download.R.drawable.download__notification_start);
            notification.contentView.setTextViewText(cn.mucang.android.framework.download.R.id.remote_desc, "下载暂停");
        } else if (downloadStatus == 32) {
            notification.contentView.setViewVisibility(cn.mucang.android.framework.download.R.id.remote_action, 4);
            notification.contentView.setTextViewText(cn.mucang.android.framework.download.R.id.remote_desc, "下载完成，点击安装。");
        } else if (downloadStatus == 64) {
            RemoteViews remoteViews5 = notification.contentView;
            int i5 = cn.mucang.android.framework.download.R.id.remote_action;
            remoteViews5.setViewVisibility(i5, 0);
            notification.contentView.setImageViewResource(i5, cn.mucang.android.framework.download.R.drawable.download__notification_start);
            notification.contentView.setTextViewText(cn.mucang.android.framework.download.R.id.remote_desc, "下载异常");
        } else if (downloadStatus == 128) {
            RemoteViews remoteViews6 = notification.contentView;
            int i6 = cn.mucang.android.framework.download.R.id.remote_action;
            remoteViews6.setViewVisibility(i6, 0);
            notification.contentView.setImageViewResource(i6, cn.mucang.android.framework.download.R.drawable.download__notification_pause);
            notification.contentView.setTextViewText(cn.mucang.android.framework.download.R.id.remote_desc, "下载失败");
        } else if (downloadStatus == 256) {
            RemoteViews remoteViews7 = notification.contentView;
            int i7 = cn.mucang.android.framework.download.R.id.remote_action;
            remoteViews7.setViewVisibility(i7, 0);
            notification.contentView.setImageViewResource(i7, cn.mucang.android.framework.download.R.drawable.download__notification_start);
            notification.contentView.setTextViewText(cn.mucang.android.framework.download.R.id.remote_desc, "下载异常");
        } else if (downloadStatus == 512) {
            RemoteViews remoteViews8 = notification.contentView;
            int i8 = cn.mucang.android.framework.download.R.id.remote_action;
            remoteViews8.setViewVisibility(i8, 0);
            notification.contentView.setImageViewResource(i8, cn.mucang.android.framework.download.R.drawable.download__notification_pause);
            notification.contentView.setTextViewText(cn.mucang.android.framework.download.R.id.remote_desc, "下载失败");
        }
        notification.contentView.setProgressBar(cn.mucang.android.framework.download.R.id.remote_progress, 100, downloadEntity.getContentLength() == 0 ? 0 : (int) ((downloadEntity.getDownloadedLength() * 100) / downloadEntity.getContentLength()), false);
        Intent intent = new Intent("cn.mucang.android.core.download.notification.clicked");
        intent.putExtra("download_entity", downloadEntity);
        PendingIntent broadcast = PendingIntent.getBroadcast(MucangConfig.getContext(), 0, intent, Build.VERSION.SDK_INT >= 23 ? 201326592 : 134217728);
        if (downloadEntity.getDownloadStatus() == 32) {
            notification.contentView.setOnClickPendingIntent(cn.mucang.android.framework.download.R.id.remote_action, null);
            notification.contentIntent = broadcast;
        } else {
            notification.contentView.setOnClickPendingIntent(cn.mucang.android.framework.download.R.id.remote_action, broadcast);
            notification.contentIntent = null;
        }
        ((NotificationManager) MucangConfig.getContext().getSystemService("notification")).notify(downloadEntity.getId().intValue() + 20150504, notification);
    }

    private void m(List<DownloadProgress> list) {
        if (g.d(list)) {
            for (DownloadProgress downloadProgress : list) {
                if (downloadProgress != null) {
                    DownloadManager.i().o(downloadProgress.f2942a, new C0096a(downloadProgress));
                }
            }
        }
    }

    @Override // cn.mucang.android.download.client.b
    public void a(List<DownloadProgress> list) {
        m(list);
    }

    @Override // cn.mucang.android.download.client.b
    public void b(long j) {
        DownloadManager.i().o(j, new c());
    }

    @Override // cn.mucang.android.download.client.b
    public void c(DownloadStatusChange downloadStatusChange) {
        if (downloadStatusChange == null || downloadStatusChange.c == 32) {
            return;
        }
        DownloadManager.i().o(downloadStatusChange.f2943a, new b(downloadStatusChange));
    }

    public void e(long j) {
        if (this.f2963a.containsKey(Long.valueOf(j))) {
            this.f2963a.remove(Long.valueOf(j));
            ((NotificationManager) MucangConfig.getContext().getSystemService("notification")).cancel(((int) j) + 20150504);
        }
    }

    public void f(DownloadEntity downloadEntity) {
        if (downloadEntity == null) {
            return;
        }
        try {
            Notification notificationG = g(downloadEntity);
            if (notificationG == null) {
                return;
            }
            PendingIntent pendingIntentH = h(downloadEntity);
            if (downloadEntity.getDownloadStatus() == 32) {
                notificationG.contentView.setTextViewText(cn.mucang.android.framework.download.R.id.remote_desc, "下载完成，点击安装。");
                notificationG.contentView.setProgressBar(cn.mucang.android.framework.download.R.id.remote_progress, 100, 100, false);
                RemoteViews remoteViews = notificationG.contentView;
                int i = cn.mucang.android.framework.download.R.id.remote_action;
                remoteViews.setOnClickPendingIntent(i, null);
                notificationG.contentView.setViewVisibility(i, 4);
                notificationG.contentIntent = pendingIntentH;
                notificationG.flags |= 16;
            } else {
                notificationG.contentView.setTextViewText(cn.mucang.android.framework.download.R.id.remote_desc, "正在下载");
                notificationG.contentView.setProgressBar(cn.mucang.android.framework.download.R.id.remote_progress, 100, downloadEntity.getContentLength() == 0 ? 0 : (int) ((downloadEntity.getDownloadedLength() * 100) / downloadEntity.getContentLength()), false);
                RemoteViews remoteViews2 = notificationG.contentView;
                int i2 = cn.mucang.android.framework.download.R.id.remote_action;
                remoteViews2.setOnClickPendingIntent(i2, pendingIntentH);
                notificationG.contentView.setViewVisibility(i2, 0);
                notificationG.contentView.setImageViewResource(i2, cn.mucang.android.framework.download.R.drawable.download__notification_pause);
                notificationG.contentIntent = null;
                notificationG.flags &= -17;
            }
            ((NotificationManager) MucangConfig.getContext().getSystemService("notification")).notify(downloadEntity.getId().intValue() + 20150504, notificationG);
        } catch (Exception e2) {
            t.c("Exception", e2);
        }
    }

    public void k(long j) {
        this.f2963a.remove(Long.valueOf(j));
    }

    private a() {
        this.f2963a = new ConcurrentHashMap();
        if (Build.VERSION.SDK_INT >= 26) {
            ((NotificationManager) MucangConfig.getContext().getSystemService("notification")).createNotificationChannel(new NotificationChannel("core__download_channel", "下载", 3));
        }
    }
}
