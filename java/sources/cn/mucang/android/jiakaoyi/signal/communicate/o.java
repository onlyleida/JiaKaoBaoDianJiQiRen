package cn.mucang.android.jiakaoyi.signal.communicate;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothServerSocket;
import android.bluetooth.BluetoothSocket;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import java.io.InputStream;
import java.util.UUID;

/* JADX INFO: loaded from: classes3.dex */
public class o extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f5395a;
    private Thread b;
    private volatile boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f5396d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f5397e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private BluetoothServerSocket f5398f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Object f5399g = new Object();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private b f5400h;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o.this.d();
        }
    }

    public interface b {
        void a(InputStream inputStream);
    }

    public o(Context context, b bVar) {
        this.f5395a = context;
        this.f5400h = bVar;
    }

    private void b(CharSequence charSequence) {
        Log.i("BlueToothServer", String.valueOf(charSequence));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        try {
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            this.f5397e = defaultAdapter.isEnabled();
            this.f5396d = !defaultAdapter.isEnabled();
            if (this.f5397e) {
                b("当前蓝牙已是开启状态");
            } else {
                boolean zEnable = defaultAdapter.enable();
                b("请求开启蓝牙成功吗?" + zEnable);
                if (zEnable) {
                    b("正在等待蓝牙打开...");
                }
                synchronized (this.f5399g) {
                    if (!this.f5397e) {
                        this.f5399g.wait();
                    }
                }
            }
            b("当前蓝牙地址为:" + defaultAdapter.getAddress());
            this.f5398f = defaultAdapter.listenUsingRfcommWithServiceRecord("bleTest", UUID.fromString("00001101-0000-1000-8000-00805F9B34FB"));
            b("启动蓝牙监听服务...");
            while (this.c) {
                BluetoothSocket bluetoothSocketAccept = this.f5398f.accept();
                b("收到一个连接...." + bluetoothSocketAccept);
                if (this.f5400h != null) {
                    this.f5400h.a(bluetoothSocketAccept.getInputStream());
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            b(e2.toString());
        }
    }

    public void c() {
        if (this.b != null && this.c) {
            this.c = false;
            this.b.interrupt();
        }
        cn.mucang.android.core.utils.o.a(this.f5398f);
        if (this.f5396d) {
            BluetoothAdapter.getDefaultAdapter().disable();
        }
    }

    public synchronized void e() {
        if (this.b == null) {
            this.f5395a.registerReceiver(this, new IntentFilter("android.bluetooth.adapter.action.STATE_CHANGED"));
            this.c = true;
            Thread thread = new Thread(new a(), "BlueToothServer");
            this.b = thread;
            thread.start();
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("android.bluetooth.adapter.action.STATE_CHANGED".equals(intent.getAction()) && intent.getIntExtra("android.bluetooth.adapter.extra.STATE", 10) == 12 && !this.f5397e) {
            synchronized (this.f5399g) {
                this.f5397e = true;
                this.f5399g.notifyAll();
            }
        }
    }
}
