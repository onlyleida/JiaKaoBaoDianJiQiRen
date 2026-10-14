package cn.mucang.android.download.client;

import cn.mucang.android.download.DownloadProgress;
import cn.mucang.android.download.DownloadStatusChange;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface b {
    void a(List<DownloadProgress> list);

    void b(long j);

    void c(DownloadStatusChange downloadStatusChange);
}
