package cn.mucang.android.download.client;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import cn.mucang.android.download.DownloadProgress;
import cn.mucang.android.download.DownloadStatusChange;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class a implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f2961a;
    private Messenger b = new Messenger(new HandlerC0095a());
    private Messenger c;

    /* JADX INFO: renamed from: cn.mucang.android.download.client.a$a, reason: collision with other inner class name */
    class HandlerC0095a extends Handler {
        HandlerC0095a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 3) {
                Bundle data = message.getData();
                data.setClassLoader(DownloadProgress.class.getClassLoader());
                ArrayList parcelableArrayList = data.getParcelableArrayList("MSG_DATA_PROGRESS");
                if (parcelableArrayList != null) {
                    a.this.b(parcelableArrayList);
                    return;
                }
                return;
            }
            if (i != 4) {
                if (i != 5) {
                    return;
                }
                long j = message.getData().getLong("MSG_DATA_REMOVED");
                if (j > 0) {
                    a.this.c(j);
                    return;
                }
                return;
            }
            Bundle data2 = message.getData();
            data2.setClassLoader(DownloadStatusChange.class.getClassLoader());
            DownloadStatusChange downloadStatusChange = (DownloadStatusChange) data2.getParcelable("MSG_DATA_STATUS_CHANGE");
            if (downloadStatusChange != null) {
                a.this.d(downloadStatusChange);
                if (downloadStatusChange.c == 32) {
                    a.this.a(downloadStatusChange.f2943a);
                }
            }
        }
    }

    public void a(long j) {
    }

    public void b(List<DownloadProgress> list) {
    }

    public void c(long j) {
    }

    public void d(DownloadStatusChange downloadStatusChange) {
    }

    protected void e() {
        if (!this.f2961a || this.c == null) {
            return;
        }
        try {
            Message messageObtain = Message.obtain((Handler) null, 2);
            messageObtain.replyTo = this.b;
            this.c.send(messageObtain);
        } catch (RemoteException unused) {
            this.f2961a = false;
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.c = new Messenger(iBinder);
        try {
            Message messageObtain = Message.obtain((Handler) null, 1);
            messageObtain.replyTo = this.b;
            this.c.send(messageObtain);
            this.f2961a = true;
        } catch (RemoteException unused) {
            this.f2961a = false;
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.f2961a = false;
        this.c = null;
    }
}
