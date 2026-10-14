package cn.mucang.android.download.notification;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.download.DownloadEntity;
import cn.mucang.android.download.c;
import cn.mucang.android.download.client.DownloadManager;

/* JADX INFO: loaded from: classes.dex */
public class DownloadNotificationEventReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        DownloadEntity downloadEntity;
        if (intent == null) {
            return;
        }
        if (!"cn.mucang.android.core.download.notification.clicked".equalsIgnoreCase(intent.getAction())) {
            if (!"cn.mucang.android.core.download.notification.deleted".equalsIgnoreCase(intent.getAction()) || (downloadEntity = (DownloadEntity) intent.getSerializableExtra("download_entity")) == null) {
                return;
            }
            a.j().k(downloadEntity.getId().longValue());
            return;
        }
        DownloadEntity downloadEntity2 = (DownloadEntity) intent.getSerializableExtra("download_entity");
        if (downloadEntity2 != null) {
            int downloadStatus = downloadEntity2.getDownloadStatus();
            if (downloadStatus != 0 && downloadStatus != 1 && downloadStatus != 2) {
                if (downloadStatus != 4) {
                    if (downloadStatus != 8) {
                        if (downloadStatus != 16) {
                            if (downloadStatus == 32) {
                                String strE = c.e(context, downloadEntity2.getStorePath());
                                if (!TextUtils.isEmpty(strE)) {
                                    c.h(context, strE, downloadEntity2.getStorePath());
                                    return;
                                } else {
                                    DownloadManager.i().r(downloadEntity2.getId().longValue());
                                    u.h("安装包异常，无法安装。");
                                    return;
                                }
                            }
                            if (downloadStatus != 64) {
                                if (downloadStatus != 128) {
                                    if (downloadStatus != 256) {
                                        if (downloadStatus != 512) {
                                            return;
                                        }
                                    }
                                }
                                DownloadManager.i().s(downloadEntity2.getId().longValue());
                                return;
                            }
                        }
                    }
                }
                DownloadManager.i().t(downloadEntity2.getId().longValue());
                return;
            }
            DownloadManager.i().m(downloadEntity2.getId().longValue());
        }
    }
}
