package com.blankj.utilcode.util;

import android.annotation.SuppressLint;
import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public class MessengerUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static ConcurrentHashMap<String, a> f11592a = new ConcurrentHashMap<>();

    public static class ServerService extends Service {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ConcurrentHashMap<Integer, Messenger> f11593a = new ConcurrentHashMap<>();

        @SuppressLint({"HandlerLeak"})
        private final Handler b;
        private final Messenger c;

        class a extends Handler {
            a() {
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i = message.what;
                if (i == 0) {
                    ServerService.this.f11593a.put(Integer.valueOf(message.arg1), message.replyTo);
                    return;
                }
                if (i == 1) {
                    ServerService.this.f11593a.remove(Integer.valueOf(message.arg1));
                } else if (i != 2) {
                    super.handleMessage(message);
                } else {
                    ServerService.this.e(message);
                    ServerService.this.d(message);
                }
            }
        }

        public ServerService() {
            a aVar = new a();
            this.b = aVar;
            this.c = new Messenger(aVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d(Message message) {
            String string;
            a aVar;
            Bundle data = message.getData();
            if (data == null || (string = data.getString("MESSENGER_UTILS")) == null || (aVar = (a) MessengerUtils.f11592a.get(string)) == null) {
                return;
            }
            aVar.a(data);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void e(Message message) {
            for (Messenger messenger : this.f11593a.values()) {
                if (messenger != null) {
                    try {
                        messenger.send(message);
                    } catch (RemoteException e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }

        @Override // android.app.Service
        public IBinder onBind(Intent intent) {
            return this.c.getBinder();
        }

        @Override // android.app.Service
        public int onStartCommand(Intent intent, int i, int i2) {
            Bundle extras;
            if (intent != null && (extras = intent.getExtras()) != null) {
                Message messageObtain = Message.obtain(this.b, 2);
                messageObtain.replyTo = this.c;
                messageObtain.setData(extras);
                e(messageObtain);
                d(messageObtain);
            }
            return 2;
        }
    }

    public interface a {
        void a(Bundle bundle);
    }

    static {
        new HashMap();
    }
}
