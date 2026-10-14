package androidx.core.app;

import android.app.AppOpsManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.provider.Settings;
import android.support.v4.app.INotificationSideChannel;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f1028d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static d f1031g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f1032a;
    private final NotificationManager b;
    private static final Object c = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Set<String> f1029e = new HashSet();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Object f1030f = new Object();

    private static class a implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f1033a;
        final int b;
        final String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final boolean f1034d = false;

        a(String str, int i, String str2) {
            this.f1033a = str;
            this.b = i;
            this.c = str2;
        }

        @Override // androidx.core.app.l.e
        public void a(INotificationSideChannel iNotificationSideChannel) throws RemoteException {
            if (this.f1034d) {
                iNotificationSideChannel.cancelAll(this.f1033a);
            } else {
                iNotificationSideChannel.cancel(this.f1033a, this.b, this.c);
            }
        }

        public String toString() {
            return "CancelTask[packageName:" + this.f1033a + ", id:" + this.b + ", tag:" + this.c + ", all:" + this.f1034d + "]";
        }
    }

    private static class b implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f1035a;
        final int b;
        final String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final Notification f1036d;

        b(String str, int i, String str2, Notification notification) {
            this.f1035a = str;
            this.b = i;
            this.c = str2;
            this.f1036d = notification;
        }

        @Override // androidx.core.app.l.e
        public void a(INotificationSideChannel iNotificationSideChannel) throws RemoteException {
            iNotificationSideChannel.notify(this.f1035a, this.b, this.c, this.f1036d);
        }

        public String toString() {
            return "NotifyTask[packageName:" + this.f1035a + ", id:" + this.b + ", tag:" + this.c + "]";
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final ComponentName f1037a;
        final IBinder b;

        c(ComponentName componentName, IBinder iBinder) {
            this.f1037a = componentName;
            this.b = iBinder;
        }
    }

    private static class d implements Handler.Callback, ServiceConnection {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f1038a;
        private final HandlerThread b;
        private final Handler c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Map<ComponentName, a> f1039d = new HashMap();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Set<String> f1040e = new HashSet();

        private static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final ComponentName f1041a;
            INotificationSideChannel c;
            boolean b = false;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            ArrayDeque<e> f1042d = new ArrayDeque<>();

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            int f1043e = 0;

            a(ComponentName componentName) {
                this.f1041a = componentName;
            }
        }

        d(Context context) {
            this.f1038a = context;
            HandlerThread handlerThread = new HandlerThread("NotificationManagerCompat");
            this.b = handlerThread;
            handlerThread.start();
            this.c = new Handler(handlerThread.getLooper(), this);
        }

        private boolean a(a aVar) {
            if (aVar.b) {
                return true;
            }
            boolean zBindService = this.f1038a.bindService(new Intent("android.support.BIND_NOTIFICATION_SIDE_CHANNEL").setComponent(aVar.f1041a), this, 33);
            aVar.b = zBindService;
            if (zBindService) {
                aVar.f1043e = 0;
            } else {
                Log.w("NotifManCompat", "Unable to bind to listener " + aVar.f1041a);
                this.f1038a.unbindService(this);
            }
            return aVar.b;
        }

        private void b(a aVar) {
            if (aVar.b) {
                this.f1038a.unbindService(this);
                aVar.b = false;
            }
            aVar.c = null;
        }

        private void c(e eVar) {
            j();
            for (a aVar : this.f1039d.values()) {
                aVar.f1042d.add(eVar);
                g(aVar);
            }
        }

        private void d(ComponentName componentName) {
            a aVar = this.f1039d.get(componentName);
            if (aVar != null) {
                g(aVar);
            }
        }

        private void e(ComponentName componentName, IBinder iBinder) {
            a aVar = this.f1039d.get(componentName);
            if (aVar != null) {
                aVar.c = INotificationSideChannel.Stub.asInterface(iBinder);
                aVar.f1043e = 0;
                g(aVar);
            }
        }

        private void f(ComponentName componentName) {
            a aVar = this.f1039d.get(componentName);
            if (aVar != null) {
                b(aVar);
            }
        }

        private void g(a aVar) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Processing component " + aVar.f1041a + ", " + aVar.f1042d.size() + " queued tasks");
            }
            if (aVar.f1042d.isEmpty()) {
                return;
            }
            if (!a(aVar) || aVar.c == null) {
                i(aVar);
                return;
            }
            while (true) {
                e eVarPeek = aVar.f1042d.peek();
                if (eVarPeek == null) {
                    break;
                }
                try {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        Log.d("NotifManCompat", "Sending task " + eVarPeek);
                    }
                    eVarPeek.a(aVar.c);
                    aVar.f1042d.remove();
                } catch (DeadObjectException unused) {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        Log.d("NotifManCompat", "Remote service has died: " + aVar.f1041a);
                    }
                } catch (RemoteException e2) {
                    Log.w("NotifManCompat", "RemoteException communicating with " + aVar.f1041a, e2);
                }
            }
            if (aVar.f1042d.isEmpty()) {
                return;
            }
            i(aVar);
        }

        private void i(a aVar) {
            if (this.c.hasMessages(3, aVar.f1041a)) {
                return;
            }
            int i = aVar.f1043e + 1;
            aVar.f1043e = i;
            if (i <= 6) {
                int i2 = (1 << (i - 1)) * 1000;
                if (Log.isLoggable("NotifManCompat", 3)) {
                    Log.d("NotifManCompat", "Scheduling retry for " + i2 + " ms");
                }
                this.c.sendMessageDelayed(this.c.obtainMessage(3, aVar.f1041a), i2);
                return;
            }
            Log.w("NotifManCompat", "Giving up on delivering " + aVar.f1042d.size() + " tasks to " + aVar.f1041a + " after " + aVar.f1043e + " retries");
            aVar.f1042d.clear();
        }

        private void j() {
            Set<String> setE = l.e(this.f1038a);
            if (setE.equals(this.f1040e)) {
                return;
            }
            this.f1040e = setE;
            List<ResolveInfo> listQueryIntentServices = this.f1038a.getPackageManager().queryIntentServices(new Intent().setAction("android.support.BIND_NOTIFICATION_SIDE_CHANNEL"), 0);
            HashSet<ComponentName> hashSet = new HashSet();
            for (ResolveInfo resolveInfo : listQueryIntentServices) {
                if (setE.contains(resolveInfo.serviceInfo.packageName)) {
                    ServiceInfo serviceInfo = resolveInfo.serviceInfo;
                    ComponentName componentName = new ComponentName(serviceInfo.packageName, serviceInfo.name);
                    if (resolveInfo.serviceInfo.permission != null) {
                        Log.w("NotifManCompat", "Permission present on component " + componentName + ", not adding listener record.");
                    } else {
                        hashSet.add(componentName);
                    }
                }
            }
            for (ComponentName componentName2 : hashSet) {
                if (!this.f1039d.containsKey(componentName2)) {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        Log.d("NotifManCompat", "Adding listener record for " + componentName2);
                    }
                    this.f1039d.put(componentName2, new a(componentName2));
                }
            }
            Iterator<Map.Entry<ComponentName, a>> it = this.f1039d.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<ComponentName, a> next = it.next();
                if (!hashSet.contains(next.getKey())) {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        Log.d("NotifManCompat", "Removing listener record for " + next.getKey());
                    }
                    b(next.getValue());
                    it.remove();
                }
            }
        }

        public void h(e eVar) {
            this.c.obtainMessage(0, eVar).sendToTarget();
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                c((e) message.obj);
                return true;
            }
            if (i == 1) {
                c cVar = (c) message.obj;
                e(cVar.f1037a, cVar.b);
                return true;
            }
            if (i == 2) {
                f((ComponentName) message.obj);
                return true;
            }
            if (i != 3) {
                return false;
            }
            d((ComponentName) message.obj);
            return true;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Connected to service " + componentName);
            }
            this.c.obtainMessage(1, new c(componentName, iBinder)).sendToTarget();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Disconnected from service " + componentName);
            }
            this.c.obtainMessage(2, componentName).sendToTarget();
        }
    }

    private interface e {
        void a(INotificationSideChannel iNotificationSideChannel) throws RemoteException;
    }

    private l(Context context) {
        this.f1032a = context;
        this.b = (NotificationManager) context.getSystemService("notification");
    }

    public static l d(Context context) {
        return new l(context);
    }

    public static Set<String> e(Context context) {
        Set<String> set;
        String string = Settings.Secure.getString(context.getContentResolver(), "enabled_notification_listeners");
        synchronized (c) {
            if (string != null) {
                if (!string.equals(f1028d)) {
                    String[] strArrSplit = string.split(":", -1);
                    HashSet hashSet = new HashSet(strArrSplit.length);
                    for (String str : strArrSplit) {
                        ComponentName componentNameUnflattenFromString = ComponentName.unflattenFromString(str);
                        if (componentNameUnflattenFromString != null) {
                            hashSet.add(componentNameUnflattenFromString.getPackageName());
                        }
                    }
                    f1029e = hashSet;
                    f1028d = string;
                }
                set = f1029e;
            } else {
                set = f1029e;
            }
            throw th;
        }
        return set;
    }

    private void h(e eVar) {
        synchronized (f1030f) {
            if (f1031g == null) {
                f1031g = new d(this.f1032a.getApplicationContext());
            }
            f1031g.h(eVar);
        }
    }

    private static boolean i(Notification notification) {
        Bundle bundleK = i.k(notification);
        return bundleK != null && bundleK.getBoolean("android.support.useSideChannel");
    }

    public boolean a() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 24) {
            return this.b.areNotificationsEnabled();
        }
        if (i < 19) {
            return true;
        }
        AppOpsManager appOpsManager = (AppOpsManager) this.f1032a.getSystemService("appops");
        ApplicationInfo applicationInfo = this.f1032a.getApplicationInfo();
        String packageName = this.f1032a.getApplicationContext().getPackageName();
        int i2 = applicationInfo.uid;
        try {
            Class<?> cls = Class.forName(AppOpsManager.class.getName());
            Class<?> cls2 = Integer.TYPE;
            return ((Integer) cls.getMethod("checkOpNoThrow", cls2, cls2, String.class).invoke(appOpsManager, Integer.valueOf(((Integer) cls.getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class)).intValue()), Integer.valueOf(i2), packageName)).intValue() == 0;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException | NoSuchMethodException | RuntimeException | InvocationTargetException unused) {
            return true;
        }
    }

    public void b(int i) {
        c(null, i);
    }

    public void c(String str, int i) {
        this.b.cancel(str, i);
        if (Build.VERSION.SDK_INT <= 19) {
            h(new a(this.f1032a.getPackageName(), i, str));
        }
    }

    public void f(int i, Notification notification) {
        g(null, i, notification);
    }

    public void g(String str, int i, Notification notification) {
        if (!i(notification)) {
            this.b.notify(str, i, notification);
        } else {
            h(new b(this.f1032a.getPackageName(), i, str, notification));
            this.b.cancel(str, i);
        }
    }
}
