package com.serenegiant.service;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.i;
import androidx.localbroadcastmanager.a.a;
import com.serenegiant.common.R;
import com.serenegiant.utils.BuildCheck;
import com.serenegiant.utils.HandlerThreadHandler;

/* JADX INFO: loaded from: classes6.dex */
public abstract class BaseService extends Service {
    private static final boolean DEBUG = false;
    private Handler mAsyncHandler;
    private volatile boolean mDestroyed;
    private a mLocalBroadcastManager;
    private static final String TAG = BaseService.class.getSimpleName();
    private static final int NOTIFICATION_ID = R.string.service_name;
    protected final Object mSync = new Object();
    private final Handler mUIHandler = new Handler(Looper.getMainLooper());
    private final BroadcastReceiver mLocalBroadcastReceiver = new BroadcastReceiver() { // from class: com.serenegiant.service.BaseService.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                BaseService.this.onReceiveLocalBroadcast(context, intent);
            } catch (Exception e2) {
                Log.w(BaseService.TAG, e2);
            }
        }
    };

    @SuppressLint({"NewApi"})
    protected void cancelNotification(int i, String str) {
        ((NotificationManager) getSystemService("notification")).cancel(i);
        releaseNotificationChannel(str);
    }

    protected abstract PendingIntent contextIntent();

    protected abstract IntentFilter createIntentFilter();

    protected Handler getAsyncHandler() throws IllegalStateException {
        Handler handler;
        if (this.mDestroyed) {
            throw new IllegalStateException("already destroyed");
        }
        synchronized (this.mSync) {
            handler = this.mAsyncHandler;
        }
        return handler;
    }

    protected boolean isDestroyed() {
        return this.mDestroyed;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        getApplicationContext();
        synchronized (this.mSync) {
            this.mLocalBroadcastManager = a.b(getApplicationContext());
            IntentFilter intentFilterCreateIntentFilter = createIntentFilter();
            if (intentFilterCreateIntentFilter != null && intentFilterCreateIntentFilter.countActions() > 0) {
                this.mLocalBroadcastManager.c(this.mLocalBroadcastReceiver, intentFilterCreateIntentFilter);
            }
            if (this.mAsyncHandler == null) {
                this.mAsyncHandler = HandlerThreadHandler.createHandler(getClass().getSimpleName());
            }
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.mDestroyed = true;
        synchronized (this.mSync) {
            this.mUIHandler.removeCallbacksAndMessages(null);
            Handler handler = this.mAsyncHandler;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
                try {
                    this.mAsyncHandler.getLooper().quit();
                } catch (Exception unused) {
                }
                this.mAsyncHandler = null;
            }
            a aVar = this.mLocalBroadcastManager;
            if (aVar != null) {
                try {
                    aVar.e(this.mLocalBroadcastReceiver);
                } catch (Exception unused2) {
                }
                this.mLocalBroadcastManager = null;
            }
        }
        super.onDestroy();
    }

    protected abstract void onReceiveLocalBroadcast(Context context, Intent intent);

    protected void queueEvent(Runnable runnable) throws IllegalStateException {
        if (runnable == null) {
            return;
        }
        if (this.mDestroyed) {
            throw new IllegalStateException("already destroyed");
        }
        queueEvent(runnable, 0L);
    }

    protected void releaseNotification() {
        int i = NOTIFICATION_ID;
        int i2 = R.string.service_name;
        String string = getString(i2);
        int i3 = R.drawable.ic_notification;
        releaseNotification(i, string, i3, i3, getString(i2), getString(R.string.service_stop));
    }

    @SuppressLint({"NewApi"})
    protected void releaseNotificationChannel(String str) {
        if (TextUtils.isEmpty(str) || !BuildCheck.isOreo()) {
            return;
        }
        try {
            ((NotificationManager) getSystemService("notification")).deleteNotificationChannel(str);
        } catch (Exception e2) {
            Log.w(TAG, e2);
        }
    }

    @SuppressLint({"NewApi"})
    protected void releaseNotificationGroup(String str) {
        if (TextUtils.isEmpty(str) || !BuildCheck.isOreo()) {
            return;
        }
        try {
            ((NotificationManager) getSystemService("notification")).deleteNotificationChannelGroup(str);
        } catch (Exception e2) {
            Log.w(TAG, e2);
        }
    }

    protected void removeEvent(Runnable runnable) {
        synchronized (this.mSync) {
            Handler handler = this.mAsyncHandler;
            if (handler != null) {
                handler.removeCallbacks(runnable);
            }
        }
    }

    protected void removeEventAll(Object obj) {
        synchronized (this.mSync) {
            Handler handler = this.mAsyncHandler;
            if (handler != null) {
                handler.removeCallbacksAndMessages(obj);
            }
        }
    }

    protected void removeFromUiThread(Runnable runnable) {
        this.mUIHandler.removeCallbacks(runnable);
    }

    protected void removeFromUiThreadAll(Object obj) {
        this.mUIHandler.removeCallbacksAndMessages(obj);
    }

    protected void runOnUiThread(Runnable runnable) throws IllegalStateException {
        if (runnable == null) {
            return;
        }
        if (this.mDestroyed) {
            throw new IllegalStateException("already destroyed");
        }
        this.mUIHandler.removeCallbacks(runnable);
        this.mUIHandler.post(runnable);
    }

    protected void sendLocalBroadcast(Intent intent) {
        synchronized (this.mSync) {
            a aVar = this.mLocalBroadcastManager;
            if (aVar != null) {
                aVar.d(intent);
            }
        }
    }

    protected void showNotification(int i, CharSequence charSequence, CharSequence charSequence2, PendingIntent pendingIntent) {
        showNotification(NOTIFICATION_ID, getString(R.string.service_name), null, null, i, R.drawable.ic_notification, charSequence, charSequence2, true, pendingIntent);
    }

    public static abstract class NotificationFactory {
        protected final String channelId;
        protected final String channelTitle;
        protected final String groupId;
        protected final String groupName;
        protected final int importance;
        protected final int largeIconId;
        protected final int smallIconId;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        @SuppressLint({"InlinedApi"})
        public NotificationFactory(String str, String str2, int i) {
            this(str, str, 0, null, null, i, R.drawable.ic_notification);
            BuildCheck.isAndroid7();
        }

        protected abstract PendingIntent createContentIntent();

        protected PendingIntent createDeleteIntent() {
            return null;
        }

        @SuppressLint({"NewApi"})
        protected Notification createNotification(Context context, CharSequence charSequence, CharSequence charSequence2) {
            if (BuildCheck.isOreo()) {
                createNotificationChannel(context);
            }
            return createNotificationBuilder(context, charSequence, charSequence2).build();
        }

        @SuppressLint({"InlinedApi"})
        protected i.f createNotificationBuilder(Context context, CharSequence charSequence, CharSequence charSequence2) {
            i.f smallIcon = new i.f(context, this.channelId).setContentTitle(charSequence).setContentText(charSequence2).setSmallIcon(this.smallIconId);
            i.d dVar = new i.d();
            dVar.A(charSequence);
            dVar.z(charSequence2);
            dVar.B(charSequence2);
            i.f style = smallIcon.setStyle(dVar);
            PendingIntent pendingIntentCreateContentIntent = createContentIntent();
            if (pendingIntentCreateContentIntent != null) {
                style.setContentIntent(pendingIntentCreateContentIntent);
            }
            PendingIntent pendingIntentCreateDeleteIntent = createDeleteIntent();
            if (pendingIntentCreateDeleteIntent != null) {
                style.setDeleteIntent(pendingIntentCreateDeleteIntent);
            }
            if (!TextUtils.isEmpty(this.groupId)) {
                style.setGroup(this.groupId);
            }
            if (this.largeIconId != 0) {
                style.setLargeIcon(BitmapFactory.decodeResource(context.getResources(), this.largeIconId));
            }
            return style;
        }

        @TargetApi(26)
        protected void createNotificationChannel(Context context) {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            if (notificationManager.getNotificationChannel(this.channelId) == null) {
                NotificationChannel notificationChannel = new NotificationChannel(this.channelId, this.channelTitle, this.importance);
                if (!TextUtils.isEmpty(this.groupId)) {
                    createNotificationChannelGroup(context, this.groupId, this.groupName);
                    notificationChannel.setGroup(this.groupId);
                }
                notificationChannel.setLockscreenVisibility(0);
                notificationManager.createNotificationChannel(setupNotificationChannel(notificationChannel));
            }
        }

        @TargetApi(26)
        protected void createNotificationChannelGroup(Context context, String str, String str2) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            NotificationChannelGroup notificationChannelGroup = null;
            for (NotificationChannelGroup notificationChannelGroup2 : notificationManager.getNotificationChannelGroups()) {
                if (str.equals(notificationChannelGroup2.getId())) {
                    notificationChannelGroup = notificationChannelGroup2;
                    break;
                }
            }
            if (notificationChannelGroup == null) {
                if (TextUtils.isEmpty(str2)) {
                    str2 = str;
                }
                notificationManager.createNotificationChannelGroup(setupNotificationChannelGroup(new NotificationChannelGroup(str, str2)));
            }
        }

        protected boolean isForegroundService() {
            return true;
        }

        protected NotificationChannel setupNotificationChannel(NotificationChannel notificationChannel) {
            return notificationChannel;
        }

        protected NotificationChannelGroup setupNotificationChannelGroup(NotificationChannelGroup notificationChannelGroup) {
            return notificationChannelGroup;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        @SuppressLint({"InlinedApi"})
        public NotificationFactory(String str, String str2, int i, int i2) {
            this(str, str, 0, null, null, i, i2);
            BuildCheck.isAndroid7();
        }

        public NotificationFactory(String str, String str2, int i, String str3, String str4, int i2, int i3) {
            this.channelId = str;
            this.channelTitle = TextUtils.isEmpty(str2) ? str : str2;
            this.importance = i;
            this.groupId = str3;
            this.groupName = TextUtils.isEmpty(str4) ? str3 : str4;
            this.smallIconId = i2;
            this.largeIconId = i3;
        }
    }

    @SuppressLint({"NewApi"})
    protected void cancelNotification(int i) {
        cancelNotification(i, null);
    }

    protected void queueEvent(Runnable runnable, long j) throws IllegalStateException {
        if (runnable == null) {
            return;
        }
        if (!this.mDestroyed) {
            synchronized (this.mSync) {
                Handler handler = this.mAsyncHandler;
                if (handler != null) {
                    handler.removeCallbacks(runnable);
                    if (j > 0) {
                        this.mAsyncHandler.postDelayed(runnable, j);
                    } else {
                        this.mAsyncHandler.post(runnable);
                    }
                } else {
                    throw new IllegalStateException("worker thread is not ready");
                }
            }
            return;
        }
        throw new IllegalStateException("already destroyed");
    }

    protected void showNotification(int i, CharSequence charSequence, CharSequence charSequence2, boolean z, PendingIntent pendingIntent) {
        showNotification(NOTIFICATION_ID, getString(R.string.service_name), null, null, i, R.drawable.ic_notification, charSequence, charSequence2, z, pendingIntent);
    }

    @SuppressLint({"NewApi"})
    protected void releaseNotification(int i, String str, int i2, int i3, CharSequence charSequence, CharSequence charSequence2) {
        showNotification(i, str, i2, i3, charSequence, charSequence2, null);
        releaseNotification(i, str);
    }

    protected void runOnUiThread(Runnable runnable, long j) throws IllegalStateException {
        if (runnable == null) {
            return;
        }
        if (!this.mDestroyed) {
            this.mUIHandler.removeCallbacks(runnable);
            if (j > 0) {
                this.mUIHandler.postDelayed(runnable, j);
                return;
            } else {
                this.mUIHandler.post(runnable);
                return;
            }
        }
        throw new IllegalStateException("already destroyed");
    }

    @SuppressLint({"NewApi"})
    protected void releaseNotification(int i, String str) {
        stopForeground(true);
        cancelNotification(i, str);
    }

    protected void showNotification(int i, String str, int i2, int i3, CharSequence charSequence, CharSequence charSequence2, PendingIntent pendingIntent) {
        showNotification(i, str, null, null, i2, i3, charSequence, charSequence2, true, pendingIntent);
    }

    protected void showNotification(int i, String str, String str2, String str3, int i2, int i3, CharSequence charSequence, CharSequence charSequence2, PendingIntent pendingIntent) {
        showNotification(i, str, str2, str3, i2, i3, charSequence, charSequence2, true, pendingIntent);
    }

    protected void showNotification(int i, String str, String str2, String str3, int i2, int i3, CharSequence charSequence, CharSequence charSequence2, final boolean z, final PendingIntent pendingIntent) {
        showNotification(i, charSequence, charSequence2, new NotificationFactory(str, str, 0, str2, str3, i2, i3) { // from class: com.serenegiant.service.BaseService.2
            @Override // com.serenegiant.service.BaseService.NotificationFactory
            protected PendingIntent createContentIntent() {
                return pendingIntent;
            }

            @Override // com.serenegiant.service.BaseService.NotificationFactory
            protected boolean isForegroundService() {
                return z;
            }
        });
    }

    protected void showNotification(int i, CharSequence charSequence, CharSequence charSequence2, NotificationFactory notificationFactory) {
        NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
        Notification notificationCreateNotification = notificationFactory.createNotification(this, charSequence2, charSequence);
        if (notificationFactory.isForegroundService()) {
            startForeground(i, notificationCreateNotification);
        }
        notificationManager.notify(i, notificationCreateNotification);
    }
}
