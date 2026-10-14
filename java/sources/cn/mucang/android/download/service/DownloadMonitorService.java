package cn.mucang.android.download.service;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import cn.mucang.android.download.DownloadProgress;
import cn.mucang.android.download.DownloadStatusChange;
import cn.mucang.android.download.client.DownloadManager;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class DownloadMonitorService extends Service {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private cn.mucang.android.download.client.a f2969a = new a(this);

    class a extends cn.mucang.android.download.client.a {
        a(DownloadMonitorService downloadMonitorService) {
        }

        @Override // cn.mucang.android.download.client.a
        public void a(long j) {
            super.a(j);
            DownloadManager.i().j(j);
        }

        @Override // cn.mucang.android.download.client.a
        public void b(List<DownloadProgress> list) {
            super.b(list);
            DownloadManager.i().k(list);
        }

        @Override // cn.mucang.android.download.client.a
        public void d(DownloadStatusChange downloadStatusChange) {
            super.d(downloadStatusChange);
            DownloadManager.i().l(downloadStatusChange);
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        DownloadManager.i().c(this.f2969a);
    }

    @Override // android.app.Service
    public void onDestroy() {
        DownloadManager.i().e(this.f2969a);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        return super.onStartCommand(intent, i, i2);
    }
}
