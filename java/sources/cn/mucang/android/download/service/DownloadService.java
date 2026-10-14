package cn.mucang.android.download.service;

import android.app.Service;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Messenger;
import android.preference.PreferenceManager;
import cn.mucang.android.core.utils.t;
import com.serenegiant.net.NetworkChangedReceiver;

/* JADX INFO: loaded from: classes.dex */
public class DownloadService extends Service {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private f f2970a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private HandlerThread f2971d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Handler f2972e;
    private Handler b = new g();
    private final Messenger c = new Messenger(this.b);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final h f2973f = new h();

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void d(String str) {
        this.f2970a.C(str);
    }

    void a() {
        if (this.f2970a == null) {
            t.a("DownloadManager", "DownloadService createQueueManagerIfNeeded");
            final String string = PreferenceManager.getDefaultSharedPreferences(this).getString("EXCLUDE_GROUP_WHEN_RESTART", "");
            int i = 3;
            int i2 = PreferenceManager.getDefaultSharedPreferences(this).getInt("PREFS_THREAD_COUNT", 3);
            if (i2 > 0 && i2 <= 3) {
                i = i2;
            }
            this.f2970a = new f(i, this.b);
            this.f2972e.post(new Runnable() { // from class: cn.mucang.android.download.service.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.f2977a.d(string);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void f(Intent intent) {
        if (intent == null || this.f2970a == null) {
            return;
        }
        t.a("DownloadManager", "DownloadService handleIntent intent:." + intent);
        String action = intent.getAction();
        if ("ACTION_NETWORK_CHANGE".equals(action)) {
            t.a("DownloadManager", "DownloadService ACTION_NETWORK_CHANGE is received.");
            this.f2970a.u();
            return;
        }
        if ("ACTION_NOTIFY_PROGRESS".equals(action)) {
            this.f2970a.v();
            return;
        }
        if ("ACTION_PAUSE_BY_GROUP".equals(action)) {
            this.f2970a.x(intent.getStringExtra("PARAM_TASK_GROUPS"));
            return;
        }
        long longExtra = intent.getLongExtra("PARAM_TASK_ID", -1L);
        t.a("DownloadManager", "DownloadService passed in taskId :" + longExtra);
        if (longExtra == -1) {
            return;
        }
        if ("ACTION_ENQUEUE".equals(action)) {
            t.a("DownloadManager", "DownloadService ACTION_ENQUEUE action");
            this.f2970a.l(longExtra);
            return;
        }
        if ("ACTION_PAUSE".equals(action)) {
            this.f2970a.w(longExtra);
            return;
        }
        if ("ACTION_RESUME".equals(action)) {
            this.f2970a.D(longExtra);
        } else if ("ACTION_REMOVE".equals(action)) {
            this.f2970a.z(longExtra);
        } else if ("ACTION_RESTART".equals(action)) {
            this.f2970a.A(longExtra);
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.c.getBinder();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        t.a("DownloadManager", "DownloadService onCreate");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(NetworkChangedReceiver.ACTION_GLOBAL_CONNECTIVITY_CHANGE);
        registerReceiver(this.f2973f, intentFilter);
        HandlerThread handlerThread = new HandlerThread("DownloadService");
        this.f2971d = handlerThread;
        handlerThread.start();
        this.f2972e = new Handler(this.f2971d.getLooper());
    }

    @Override // android.app.Service
    public void onDestroy() {
        t.a("DownloadManager", "DownloadService onDestroy");
        f fVar = this.f2970a;
        if (fVar != null) {
            fVar.y();
        }
        this.b.removeCallbacksAndMessages(null);
        this.b = null;
        this.f2970a = null;
        unregisterReceiver(this.f2973f);
        this.f2971d.quitSafely();
    }

    @Override // android.app.Service
    public int onStartCommand(final Intent intent, int i, int i2) {
        a();
        this.f2972e.post(new Runnable() { // from class: cn.mucang.android.download.service.e
            @Override // java.lang.Runnable
            public final void run() {
                this.f2978a.f(intent);
            }
        });
        return 1;
    }
}
