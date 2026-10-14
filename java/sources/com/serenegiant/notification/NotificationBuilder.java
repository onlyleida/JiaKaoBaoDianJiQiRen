package com.serenegiant.notification;

import android.annotation.SuppressLint;
import android.app.Notification;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Bundle;
import android.widget.RemoteViews;
import androidx.core.app.i;
import androidx.core.app.l;
import com.serenegiant.utils.BuildCheck;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes6.dex */
public abstract class NotificationBuilder extends i.f {
    private static final boolean DEBUG = false;
    private static final int PRIORITY_UNSPECIFIED = -3;
    private static final String TAG = "NotificationBuilder";
    private final ChannelBuilder mChannelBuilder;
    private PendingIntent mContentIntent;
    private final Context mContext;
    private PendingIntent mDeleteIntent;
    private PendingIntent mFullScreenIntent;
    private boolean mHighPriorityFullScreenIntent;
    private int mPriority;

    @Retention(RetentionPolicy.SOURCE)
    public @interface BadgeIconType {
    }

    public static class DefaultIntentFactory implements NotificationBuilderFactory {
        @Override // com.serenegiant.notification.NotificationBuilder.IntentFactory
        public PendingIntent createContentIntent(PendingIntent pendingIntent) {
            return pendingIntent;
        }

        @Override // com.serenegiant.notification.NotificationBuilder.IntentFactory
        public PendingIntent createDeleteIntent(PendingIntent pendingIntent) {
            return pendingIntent;
        }

        @Override // com.serenegiant.notification.NotificationBuilder.IntentFactory
        public PendingIntent createFullScreenIntent(PendingIntent pendingIntent) {
            return pendingIntent;
        }

        @Override // com.serenegiant.notification.NotificationBuilder.IntentFactory
        public boolean isHighPriorityFullScreenIntent(boolean z) {
            return z;
        }

        @Override // com.serenegiant.notification.NotificationBuilder.NotificationBuilderFactory
        public void setupBuilder(NotificationBuilder notificationBuilder) {
        }
    }

    public interface IntentFactory {
        PendingIntent createContentIntent(PendingIntent pendingIntent);

        PendingIntent createDeleteIntent(PendingIntent pendingIntent);

        PendingIntent createFullScreenIntent(PendingIntent pendingIntent);

        boolean isHighPriorityFullScreenIntent(boolean z);
    }

    public interface NotificationBuilderFactory extends IntentFactory {
        void setupBuilder(NotificationBuilder notificationBuilder);
    }

    public NotificationBuilder(Context context, String str, int i) {
        super(context, str);
        this.mPriority = -3;
        this.mContext = context;
        this.mChannelBuilder = ChannelBuilder.getBuilder(context, str);
        setSmallIcon(i);
    }

    public static void showNotification(Context context, int i, String str, String str2, String str3, int i2, IntentFactory intentFactory) {
        showNotification(context, null, i, str, str2, str3, i2, intentFactory);
    }

    @Override // androidx.core.app.i.f
    @SuppressLint({"InlinedApi"})
    public Notification build() {
        if (this.mChannelBuilder.getImportance() == 0) {
            int i = this.mPriority;
            if (i == -2) {
                this.mChannelBuilder.setImportance(1);
            } else if (i == -1) {
                this.mChannelBuilder.setImportance(2);
            } else if (i == 0) {
                this.mChannelBuilder.setImportance(3);
            } else if (i == 1 || i == 2) {
                this.mChannelBuilder.setImportance(4);
            }
        }
        this.mChannelBuilder.build();
        super.setContentIntent(createContentIntent());
        super.setDeleteIntent(createDeleteIntent());
        super.setFullScreenIntent(createFullScreenIntent(), isHighPriorityFullScreenIntent());
        return super.build();
    }

    protected abstract PendingIntent createContentIntent();

    protected PendingIntent createDeleteIntent() {
        return this.mDeleteIntent;
    }

    protected PendingIntent createFullScreenIntent() {
        return this.mFullScreenIntent;
    }

    public NotificationBuilder enableLights(boolean z) {
        this.mChannelBuilder.enableLights(z);
        return this;
    }

    public NotificationBuilder enableVibration(boolean z) {
        this.mChannelBuilder.enableVibration(z);
        return this;
    }

    public ChannelBuilder getChannelBuilder() {
        return this.mChannelBuilder;
    }

    public String getChannelId() {
        return this.mChannelBuilder.getId();
    }

    public CharSequence getChannelName() {
        return this.mChannelBuilder.getName();
    }

    public PendingIntent getContentIntent() {
        return this.mContentIntent;
    }

    public PendingIntent getDeleteIntent() {
        return this.mDeleteIntent;
    }

    public PendingIntent getFullScreenIntent() {
        return this.mFullScreenIntent;
    }

    public int getImportance() {
        return this.mChannelBuilder.getImportance();
    }

    public int getLockscreenVisibility() {
        return this.mChannelBuilder.getLockscreenVisibility();
    }

    public boolean isHighPriorityFullScreenIntent() {
        return this.mHighPriorityFullScreenIntent;
    }

    public NotificationBuilder notify(int i) {
        notify(this.mContext, null, i, build());
        return this;
    }

    public NotificationBuilder notifyForeground(Service service, int i) {
        return notifyForeground(service, null, i);
    }

    public NotificationBuilder setBypassDnd(boolean z) {
        this.mChannelBuilder.setBypassDnd(z);
        return this;
    }

    public NotificationBuilder setChannelGroup(String str) {
        ChannelBuilder channelBuilder = this.mChannelBuilder;
        channelBuilder.setGroup(str, channelBuilder.getGroupName());
        return this;
    }

    public NotificationBuilder setChannelName(CharSequence charSequence) {
        this.mChannelBuilder.setName(charSequence);
        return this;
    }

    public NotificationBuilder setDescription(String str) {
        this.mChannelBuilder.setDescription(str);
        return this;
    }

    public NotificationBuilder setImportance(int i) {
        this.mChannelBuilder.setImportance(i);
        return this;
    }

    public NotificationBuilder setLightColor(int i) {
        this.mChannelBuilder.setLightColor(i);
        return this;
    }

    public NotificationBuilder setLockscreenVisibility(int i) {
        this.mChannelBuilder.setLockscreenVisibility(i);
        return this;
    }

    public NotificationBuilder setShowBadge(boolean z) {
        this.mChannelBuilder.setShowBadge(z);
        return this;
    }

    public NotificationBuilder setVibrationPattern(long[] jArr) {
        this.mChannelBuilder.setVibrationPattern(jArr);
        return this;
    }

    public static void showNotification(Context context, String str, int i, String str2, String str3, String str4, int i2, final IntentFactory intentFactory) {
        NotificationBuilder notificationBuilder = new NotificationBuilder(context, str2, i2) { // from class: com.serenegiant.notification.NotificationBuilder.1
            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f addAction(int i3, CharSequence charSequence, PendingIntent pendingIntent) {
                return super.addAction(i3, charSequence, pendingIntent);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f addExtras(Bundle bundle) {
                return super.addExtras(bundle);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f addPerson(String str5) {
                return super.addPerson(str5);
            }

            @Override // com.serenegiant.notification.NotificationBuilder
            protected PendingIntent createContentIntent() {
                IntentFactory intentFactory2 = intentFactory;
                if (intentFactory2 != null) {
                    return intentFactory2.createContentIntent(getContentIntent());
                }
                return null;
            }

            @Override // com.serenegiant.notification.NotificationBuilder
            protected PendingIntent createDeleteIntent() {
                IntentFactory intentFactory2 = intentFactory;
                return intentFactory2 != null ? intentFactory2.createDeleteIntent(getDeleteIntent()) : super.createDeleteIntent();
            }

            @Override // com.serenegiant.notification.NotificationBuilder
            protected PendingIntent createFullScreenIntent() {
                IntentFactory intentFactory2 = intentFactory;
                return intentFactory2 != null ? intentFactory2.createFullScreenIntent(getFullScreenIntent()) : super.createFullScreenIntent();
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f extend(i.h hVar) {
                return super.extend(hVar);
            }

            @Override // com.serenegiant.notification.NotificationBuilder
            public boolean isHighPriorityFullScreenIntent() {
                boolean zIsHighPriorityFullScreenIntent = super.isHighPriorityFullScreenIntent();
                IntentFactory intentFactory2 = intentFactory;
                return intentFactory2 != null ? intentFactory2.isHighPriorityFullScreenIntent(zIsHighPriorityFullScreenIntent) : zIsHighPriorityFullScreenIntent;
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setAutoCancel(boolean z) {
                return super.setAutoCancel(z);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setBadgeIconType(int i3) {
                return super.setBadgeIconType(i3);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setCategory(String str5) {
                return super.setCategory(str5);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setChannelId(String str5) {
                return super.setChannelId(str5);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setColor(int i3) {
                return super.setColor(i3);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setColorized(boolean z) {
                return super.setColorized(z);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setContent(RemoteViews remoteViews) {
                return super.setContent(remoteViews);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setContentInfo(CharSequence charSequence) {
                return super.setContentInfo(charSequence);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setContentIntent(PendingIntent pendingIntent) {
                return super.setContentIntent(pendingIntent);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setContentText(CharSequence charSequence) {
                return super.setContentText(charSequence);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setContentTitle(CharSequence charSequence) {
                return super.setContentTitle(charSequence);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setCustomBigContentView(RemoteViews remoteViews) {
                return super.setCustomBigContentView(remoteViews);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setCustomContentView(RemoteViews remoteViews) {
                return super.setCustomContentView(remoteViews);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setCustomHeadsUpContentView(RemoteViews remoteViews) {
                return super.setCustomHeadsUpContentView(remoteViews);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setDefaults(int i3) {
                return super.setDefaults(i3);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setDeleteIntent(PendingIntent pendingIntent) {
                return super.setDeleteIntent(pendingIntent);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setExtras(Bundle bundle) {
                return super.setExtras(bundle);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setFullScreenIntent(PendingIntent pendingIntent, boolean z) {
                return super.setFullScreenIntent(pendingIntent, z);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setGroup(String str5) {
                return super.setGroup(str5);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setGroupAlertBehavior(int i3) {
                return super.setGroupAlertBehavior(i3);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setGroupSummary(boolean z) {
                return super.setGroupSummary(z);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setLargeIcon(Bitmap bitmap) {
                return super.setLargeIcon(bitmap);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setLights(int i3, int i4, int i5) {
                return super.setLights(i3, i4, i5);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setLocalOnly(boolean z) {
                return super.setLocalOnly(z);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setNumber(int i3) {
                return super.setNumber(i3);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setOngoing(boolean z) {
                return super.setOngoing(z);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setOnlyAlertOnce(boolean z) {
                return super.setOnlyAlertOnce(z);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setPriority(int i3) {
                return super.setPriority(i3);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setProgress(int i3, int i4, boolean z) {
                return super.setProgress(i3, i4, z);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setPublicVersion(Notification notification) {
                return super.setPublicVersion(notification);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setRemoteInputHistory(CharSequence[] charSequenceArr) {
                return super.setRemoteInputHistory(charSequenceArr);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setShortcutId(String str5) {
                return super.setShortcutId(str5);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setShowWhen(boolean z) {
                return super.setShowWhen(z);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setSmallIcon(int i3) {
                return super.setSmallIcon(i3);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setSortKey(String str5) {
                return super.setSortKey(str5);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setSound(Uri uri) {
                return super.setSound(uri);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setStyle(i.k kVar) {
                return super.setStyle(kVar);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setSubText(CharSequence charSequence) {
                return super.setSubText(charSequence);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setTicker(CharSequence charSequence) {
                return super.setTicker(charSequence);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setTimeoutAfter(long j) {
                return super.setTimeoutAfter(j);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setUsesChronometer(boolean z) {
                return super.setUsesChronometer(z);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setVibrate(long[] jArr) {
                return super.setVibrate(jArr);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setVisibility(int i3) {
                return super.setVisibility(i3);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setWhen(long j) {
                return super.setWhen(j);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f addAction(i.b bVar) {
                return super.addAction(bVar);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setSmallIcon(int i3, int i4) {
                return super.setSmallIcon(i3, i4);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            @SuppressLint({"NewApi"})
            public /* bridge */ /* synthetic */ i.f setSound(Uri uri, int i3) {
                return super.setSound(uri, i3);
            }

            @Override // com.serenegiant.notification.NotificationBuilder, androidx.core.app.i.f
            public /* bridge */ /* synthetic */ i.f setTicker(CharSequence charSequence, RemoteViews remoteViews) {
                return super.setTicker(charSequence, remoteViews);
            }
        };
        notificationBuilder.setContentTitle((CharSequence) str3).setContentText((CharSequence) str4);
        if (intentFactory instanceof NotificationBuilderFactory) {
            ((NotificationBuilderFactory) intentFactory).setupBuilder(notificationBuilder);
        }
        notificationBuilder.notify(i);
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder addExtras(Bundle bundle) {
        super.addExtras(bundle);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder addPerson(String str) {
        super.addPerson(str);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder extend(i.h hVar) {
        super.extend(hVar);
        return this;
    }

    public NotificationBuilder notify(String str, int i) {
        notify(this.mContext, str, i, build());
        return this;
    }

    public NotificationBuilder notifyForeground(Service service, String str, int i) {
        Notification notificationBuild = build();
        service.startForeground(i, notificationBuild);
        notify(service, str, i, notificationBuild);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setAutoCancel(boolean z) {
        super.setAutoCancel(z);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setBadgeIconType(int i) {
        super.setBadgeIconType(i);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setCategory(String str) {
        super.setCategory(str);
        return this;
    }

    public NotificationBuilder setChannelGroup(String str, String str2) {
        this.mChannelBuilder.setGroup(str, str2);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setChannelId(String str) {
        super.setChannelId(str);
        this.mChannelBuilder.setId(str);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setColor(int i) {
        super.setColor(i);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setColorized(boolean z) {
        super.setColorized(z);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setContent(RemoteViews remoteViews) {
        super.setContent(remoteViews);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setContentInfo(CharSequence charSequence) {
        super.setContentInfo(charSequence);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setContentIntent(PendingIntent pendingIntent) {
        super.setContentIntent(this.mContentIntent);
        this.mContentIntent = pendingIntent;
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setContentText(CharSequence charSequence) {
        super.setContentText(charSequence);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setContentTitle(CharSequence charSequence) {
        super.setContentTitle(charSequence);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setCustomBigContentView(RemoteViews remoteViews) {
        super.setCustomBigContentView(remoteViews);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setCustomContentView(RemoteViews remoteViews) {
        super.setCustomContentView(remoteViews);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setCustomHeadsUpContentView(RemoteViews remoteViews) {
        super.setCustomHeadsUpContentView(remoteViews);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setDefaults(int i) {
        super.setDefaults(i);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setDeleteIntent(PendingIntent pendingIntent) {
        super.setDeleteIntent(pendingIntent);
        this.mDeleteIntent = pendingIntent;
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setExtras(Bundle bundle) {
        super.setExtras(bundle);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setFullScreenIntent(PendingIntent pendingIntent, boolean z) {
        super.setFullScreenIntent(pendingIntent, z);
        this.mFullScreenIntent = pendingIntent;
        this.mHighPriorityFullScreenIntent = z;
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setGroup(String str) {
        super.setGroup(str);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setGroupAlertBehavior(int i) {
        super.setGroupAlertBehavior(i);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setGroupSummary(boolean z) {
        super.setGroupSummary(z);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setLargeIcon(Bitmap bitmap) {
        super.setLargeIcon(bitmap);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setLights(int i, int i2, int i3) {
        super.setLights(i, i2, i3);
        this.mChannelBuilder.setLightColor(i);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setLocalOnly(boolean z) {
        super.setLocalOnly(z);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setNumber(int i) {
        super.setNumber(i);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setOngoing(boolean z) {
        super.setOngoing(z);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setOnlyAlertOnce(boolean z) {
        super.setOnlyAlertOnce(z);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setPriority(int i) {
        super.setPriority(i);
        this.mPriority = i;
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setProgress(int i, int i2, boolean z) {
        super.setProgress(i, i2, z);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setPublicVersion(Notification notification) {
        super.setPublicVersion(notification);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setRemoteInputHistory(CharSequence[] charSequenceArr) {
        super.setRemoteInputHistory(charSequenceArr);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setShortcutId(String str) {
        super.setShortcutId(str);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setShowWhen(boolean z) {
        super.setShowWhen(z);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setSortKey(String str) {
        super.setSortKey(str);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setStyle(i.k kVar) {
        super.setStyle(kVar);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setSubText(CharSequence charSequence) {
        super.setSubText(charSequence);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setTimeoutAfter(long j) {
        super.setTimeoutAfter(j);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setUsesChronometer(boolean z) {
        super.setUsesChronometer(z);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setVibrate(long[] jArr) {
        super.setVibrate(jArr);
        this.mChannelBuilder.setVibrationPattern(jArr);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setVisibility(int i) {
        super.setVisibility(i);
        this.mChannelBuilder.setLockscreenVisibility(i);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setWhen(long j) {
        super.setWhen(j);
        return this;
    }

    private static void notify(Context context, String str, int i, Notification notification) {
        l.d(context).g(str, i, notification);
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder addAction(int i, CharSequence charSequence, PendingIntent pendingIntent) {
        super.addAction(i, charSequence, pendingIntent);
        return this;
    }

    public NotificationBuilder setLargeIcon(int i) {
        super.setLargeIcon(BitmapFactory.decodeResource(this.mContext.getResources(), i));
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setSmallIcon(int i) {
        super.setSmallIcon(i);
        return this;
    }

    public NotificationBuilder setSound(Uri uri, AudioAttributes audioAttributes) {
        super.setSound(uri);
        this.mChannelBuilder.setSound(uri, audioAttributes);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setTicker(CharSequence charSequence) {
        super.setTicker(charSequence);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder addAction(i.b bVar) {
        super.addAction(bVar);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setSmallIcon(int i, int i2) {
        super.setSmallIcon(i, i2);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setTicker(CharSequence charSequence, RemoteViews remoteViews) {
        super.setTicker(charSequence, remoteViews);
        return this;
    }

    @Override // androidx.core.app.i.f
    public NotificationBuilder setSound(Uri uri) {
        super.setSound(uri);
        this.mChannelBuilder.setSound(uri, null);
        return this;
    }

    @Override // androidx.core.app.i.f
    @SuppressLint({"NewApi"})
    public NotificationBuilder setSound(Uri uri, int i) {
        super.setSound(uri, i);
        this.mChannelBuilder.setSound(uri, BuildCheck.isLollipop() ? new AudioAttributes.Builder().setLegacyStreamType(i).build() : null);
        return this;
    }
}
