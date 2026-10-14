package cn.mucang.android.jiakaoyi.teachingk2.highlight;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public class MediaService extends Service {
    public void a() {
        NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
        if (Build.VERSION.SDK_INT >= 26) {
            notificationManager.createNotificationChannel(new NotificationChannel("MediaService", "MediaService", 3));
        }
        androidx.core.app.i.f fVar = new androidx.core.app.i.f(this, "MediaService");
        fVar.setContentTitle("正在录制视频").setSmallIcon(R.mipmap.ic_launcher).setDefaults(4).setPriority(-2).setAutoCancel(false);
        startForeground(1, fVar.build());
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        throw new UnsupportedOperationException("Not yet implemented");
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        a();
    }
}
