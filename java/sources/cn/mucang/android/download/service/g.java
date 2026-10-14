package cn.mucang.android.download.service;

import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import cn.mucang.android.core.utils.t;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class g extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ArrayList<Messenger> f2988a = new ArrayList<>();

    private void a(Message message) {
        t.a("DownloadManager", "DownloadService sendMessage msg :" + message.getData() + " " + System.currentTimeMillis());
        for (int size = this.f2988a.size() + (-1); size >= 0; size--) {
            try {
                this.f2988a.get(size).send(message);
            } catch (RemoteException unused) {
                t.a("DownloadManager", "DownloadService sendMessage msg error index:" + size + " msg:" + message.getData() + " " + System.currentTimeMillis());
                this.f2988a.remove(size);
            }
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        if (i == 1) {
            this.f2988a.add(message.replyTo);
            return;
        }
        if (i == 2) {
            this.f2988a.remove(message.replyTo);
            return;
        }
        if (i != 3 && i != 4 && i != 5) {
            super.handleMessage(message);
            return;
        }
        t.a("DownloadManager", "DownloadService received msg from QueueManager: " + System.currentTimeMillis());
        a(Message.obtain(message));
    }
}
