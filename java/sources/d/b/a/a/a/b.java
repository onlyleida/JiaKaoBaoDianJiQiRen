package d.b.a.a.a;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class b implements ServiceConnection {
    public static final ThreadPoolExecutor c = new ThreadPoolExecutor(0, 3, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(2048), new ThreadPoolExecutor.DiscardPolicy());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f14432a = false;
    public final LinkedBlockingQueue<IBinder> b = new LinkedBlockingQueue<>(1);

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ IBinder f14433a;

        public a(IBinder iBinder) {
            this.f14433a = iBinder;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                String str = "onServiceConnected " + System.currentTimeMillis();
                b.this.b.offer(this.f14433a);
            } catch (Throwable th) {
                String str2 = "onServiceConnected  " + th.getClass().getSimpleName();
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        c.execute(new a(iBinder));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        String str = "onServiceDisconnected " + System.currentTimeMillis();
    }
}
