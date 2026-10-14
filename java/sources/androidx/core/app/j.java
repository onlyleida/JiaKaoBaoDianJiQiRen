package androidx.core.app;

import android.app.Notification;
import android.app.RemoteInput;
import android.content.Context;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.widget.RemoteViews;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class j implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f1021a;
    private final Notification.Builder b;
    private final i.f c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RemoteViews f1022d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private RemoteViews f1023e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List<Bundle> f1024f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Bundle f1025g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f1026h;
    private RemoteViews i;

    j(i.f fVar) {
        Icon icon;
        List<String> listE;
        int i = Build.VERSION.SDK_INT;
        this.f1024f = new ArrayList();
        this.f1025g = new Bundle();
        this.c = fVar;
        this.f1021a = fVar.mContext;
        if (i >= 26) {
            this.b = new Notification.Builder(fVar.mContext, fVar.mChannelId);
        } else {
            this.b = new Notification.Builder(fVar.mContext);
        }
        Notification notification = fVar.mNotification;
        this.b.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, fVar.mTickerView).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(fVar.mContentTitle).setContentText(fVar.mContentText).setContentInfo(fVar.mContentInfo).setContentIntent(fVar.mContentIntent).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(fVar.mFullScreenIntent, (notification.flags & 128) != 0).setLargeIcon(fVar.mLargeIcon).setNumber(fVar.mNumber).setProgress(fVar.mProgressMax, fVar.mProgress, fVar.mProgressIndeterminate);
        if (i < 21) {
            this.b.setSound(notification.sound, notification.audioStreamType);
        }
        if (i >= 16) {
            this.b.setSubText(fVar.mSubText).setUsesChronometer(fVar.mUseChronometer).setPriority(fVar.mPriority);
            Iterator<i.b> it = fVar.mActions.iterator();
            while (it.hasNext()) {
                b(it.next());
            }
            Bundle bundle = fVar.mExtras;
            if (bundle != null) {
                this.f1025g.putAll(bundle);
            }
            if (i < 20) {
                if (fVar.mLocalOnly) {
                    this.f1025g.putBoolean("android.support.localOnly", true);
                }
                String str = fVar.mGroupKey;
                if (str != null) {
                    this.f1025g.putString("android.support.groupKey", str);
                    if (fVar.mGroupSummary) {
                        this.f1025g.putBoolean("android.support.isGroupSummary", true);
                    } else {
                        this.f1025g.putBoolean("android.support.useSideChannel", true);
                    }
                }
                String str2 = fVar.mSortKey;
                if (str2 != null) {
                    this.f1025g.putString("android.support.sortKey", str2);
                }
            }
            this.f1022d = fVar.mContentView;
            this.f1023e = fVar.mBigContentView;
        }
        if (i >= 17) {
            this.b.setShowWhen(fVar.mShowWhen);
        }
        if (i >= 19 && i < 21 && (listE = e(g(fVar.mPersonList), fVar.mPeople)) != null && !listE.isEmpty()) {
            this.f1025g.putStringArray("android.people", (String[]) listE.toArray(new String[listE.size()]));
        }
        if (i >= 20) {
            this.b.setLocalOnly(fVar.mLocalOnly).setGroup(fVar.mGroupKey).setGroupSummary(fVar.mGroupSummary).setSortKey(fVar.mSortKey);
            this.f1026h = fVar.mGroupAlertBehavior;
        }
        if (i >= 21) {
            this.b.setCategory(fVar.mCategory).setColor(fVar.mColor).setVisibility(fVar.mVisibility).setPublicVersion(fVar.mPublicVersion).setSound(notification.sound, notification.audioAttributes);
            List listE2 = i < 28 ? e(g(fVar.mPersonList), fVar.mPeople) : fVar.mPeople;
            if (listE2 != null && !listE2.isEmpty()) {
                Iterator it2 = listE2.iterator();
                while (it2.hasNext()) {
                    this.b.addPerson((String) it2.next());
                }
            }
            this.i = fVar.mHeadsUpContentView;
            if (fVar.mInvisibleActions.size() > 0) {
                Bundle bundle2 = fVar.getExtras().getBundle("android.car.EXTENSIONS");
                bundle2 = bundle2 == null ? new Bundle() : bundle2;
                Bundle bundle3 = new Bundle(bundle2);
                Bundle bundle4 = new Bundle();
                for (int i2 = 0; i2 < fVar.mInvisibleActions.size(); i2++) {
                    bundle4.putBundle(Integer.toString(i2), k.f(fVar.mInvisibleActions.get(i2)));
                }
                bundle2.putBundle("invisible_actions", bundle4);
                bundle3.putBundle("invisible_actions", bundle4);
                fVar.getExtras().putBundle("android.car.EXTENSIONS", bundle2);
                this.f1025g.putBundle("android.car.EXTENSIONS", bundle3);
            }
        }
        if (i >= 23 && (icon = fVar.mSmallIcon) != null) {
            this.b.setSmallIcon(icon);
        }
        if (i >= 24) {
            this.b.setExtras(fVar.mExtras).setRemoteInputHistory(fVar.mRemoteInputHistory);
            RemoteViews remoteViews = fVar.mContentView;
            if (remoteViews != null) {
                this.b.setCustomContentView(remoteViews);
            }
            RemoteViews remoteViews2 = fVar.mBigContentView;
            if (remoteViews2 != null) {
                this.b.setCustomBigContentView(remoteViews2);
            }
            RemoteViews remoteViews3 = fVar.mHeadsUpContentView;
            if (remoteViews3 != null) {
                this.b.setCustomHeadsUpContentView(remoteViews3);
            }
        }
        if (i >= 26) {
            this.b.setBadgeIconType(fVar.mBadgeIcon).setSettingsText(fVar.mSettingsText).setShortcutId(fVar.mShortcutId).setTimeoutAfter(fVar.mTimeout).setGroupAlertBehavior(fVar.mGroupAlertBehavior);
            if (fVar.mColorizedSet) {
                this.b.setColorized(fVar.mColorized);
            }
            if (!TextUtils.isEmpty(fVar.mChannelId)) {
                this.b.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
            }
        }
        if (i >= 28) {
            Iterator<m> it3 = fVar.mPersonList.iterator();
            while (it3.hasNext()) {
                this.b.addPerson(it3.next().j());
            }
        }
        if (i >= 29) {
            this.b.setAllowSystemGeneratedContextualActions(fVar.mAllowSystemGeneratedContextualActions);
            this.b.setBubbleMetadata(i.e.k(fVar.mBubbleMetadata));
            androidx.core.a.c cVar = fVar.mLocusId;
            if (cVar != null) {
                this.b.setLocusId(cVar.b());
            }
        }
        if (fVar.mSilent) {
            if (this.c.mGroupSummary) {
                this.f1026h = 2;
            } else {
                this.f1026h = 1;
            }
            this.b.setVibrate(null);
            this.b.setSound(null);
            int i3 = notification.defaults & (-2);
            notification.defaults = i3;
            int i4 = i3 & (-3);
            notification.defaults = i4;
            this.b.setDefaults(i4);
            if (i >= 26) {
                if (TextUtils.isEmpty(this.c.mGroupKey)) {
                    this.b.setGroup("silent");
                }
                this.b.setGroupAlertBehavior(this.f1026h);
            }
        }
    }

    private void b(i.b bVar) {
        int i = Build.VERSION.SDK_INT;
        if (i < 20) {
            if (i >= 16) {
                this.f1024f.add(k.j(this.b, bVar));
                return;
            }
            return;
        }
        IconCompat iconCompatF = bVar.f();
        Notification.Action.Builder builder = i >= 23 ? new Notification.Action.Builder(iconCompatF != null ? iconCompatF.C() : null, bVar.j(), bVar.a()) : new Notification.Action.Builder(iconCompatF != null ? iconCompatF.n() : 0, bVar.j(), bVar.a());
        if (bVar.g() != null) {
            for (RemoteInput remoteInput : n.b(bVar.g())) {
                builder.addRemoteInput(remoteInput);
            }
        }
        Bundle bundle = bVar.d() != null ? new Bundle(bVar.d()) : new Bundle();
        bundle.putBoolean("android.support.allowGeneratedReplies", bVar.b());
        if (i >= 24) {
            builder.setAllowGeneratedReplies(bVar.b());
        }
        bundle.putInt("android.support.action.semanticAction", bVar.h());
        if (i >= 28) {
            builder.setSemanticAction(bVar.h());
        }
        if (i >= 29) {
            builder.setContextual(bVar.k());
        }
        bundle.putBoolean("android.support.action.showsUserInterface", bVar.i());
        builder.addExtras(bundle);
        this.b.addAction(builder.build());
    }

    private static List<String> e(List<String> list, List<String> list2) {
        if (list == null) {
            return list2;
        }
        if (list2 == null) {
            return list;
        }
        androidx.collection.b bVar = new androidx.collection.b(list.size() + list2.size());
        bVar.addAll(list);
        bVar.addAll(list2);
        return new ArrayList(bVar);
    }

    private static List<String> g(List<m> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<m> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().i());
        }
        return arrayList;
    }

    private void h(Notification notification) {
        notification.sound = null;
        notification.vibrate = null;
        int i = notification.defaults & (-2);
        notification.defaults = i;
        notification.defaults = i & (-3);
    }

    @Override // androidx.core.app.h
    public Notification.Builder a() {
        return this.b;
    }

    public Notification c() {
        Bundle bundleK;
        RemoteViews remoteViewsW;
        RemoteViews remoteViewsU;
        i.k kVar = this.c.mStyle;
        if (kVar != null) {
            kVar.b(this);
        }
        RemoteViews remoteViewsV = kVar != null ? kVar.v(this) : null;
        Notification notificationD = d();
        if (remoteViewsV != null) {
            notificationD.contentView = remoteViewsV;
        } else {
            RemoteViews remoteViews = this.c.mContentView;
            if (remoteViews != null) {
                notificationD.contentView = remoteViews;
            }
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 16 && kVar != null && (remoteViewsU = kVar.u(this)) != null) {
            notificationD.bigContentView = remoteViewsU;
        }
        if (i >= 21 && kVar != null && (remoteViewsW = this.c.mStyle.w(this)) != null) {
            notificationD.headsUpContentView = remoteViewsW;
        }
        if (i >= 16 && kVar != null && (bundleK = i.k(notificationD)) != null) {
            kVar.a(bundleK);
        }
        return notificationD;
    }

    protected Notification d() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            return this.b.build();
        }
        if (i >= 24) {
            Notification notificationBuild = this.b.build();
            if (this.f1026h != 0) {
                if (notificationBuild.getGroup() != null && (notificationBuild.flags & 512) != 0 && this.f1026h == 2) {
                    h(notificationBuild);
                }
                if (notificationBuild.getGroup() != null && (notificationBuild.flags & 512) == 0 && this.f1026h == 1) {
                    h(notificationBuild);
                }
            }
            return notificationBuild;
        }
        if (i >= 21) {
            this.b.setExtras(this.f1025g);
            Notification notificationBuild2 = this.b.build();
            RemoteViews remoteViews = this.f1022d;
            if (remoteViews != null) {
                notificationBuild2.contentView = remoteViews;
            }
            RemoteViews remoteViews2 = this.f1023e;
            if (remoteViews2 != null) {
                notificationBuild2.bigContentView = remoteViews2;
            }
            RemoteViews remoteViews3 = this.i;
            if (remoteViews3 != null) {
                notificationBuild2.headsUpContentView = remoteViews3;
            }
            if (this.f1026h != 0) {
                if (notificationBuild2.getGroup() != null && (notificationBuild2.flags & 512) != 0 && this.f1026h == 2) {
                    h(notificationBuild2);
                }
                if (notificationBuild2.getGroup() != null && (notificationBuild2.flags & 512) == 0 && this.f1026h == 1) {
                    h(notificationBuild2);
                }
            }
            return notificationBuild2;
        }
        if (i >= 20) {
            this.b.setExtras(this.f1025g);
            Notification notificationBuild3 = this.b.build();
            RemoteViews remoteViews4 = this.f1022d;
            if (remoteViews4 != null) {
                notificationBuild3.contentView = remoteViews4;
            }
            RemoteViews remoteViews5 = this.f1023e;
            if (remoteViews5 != null) {
                notificationBuild3.bigContentView = remoteViews5;
            }
            if (this.f1026h != 0) {
                if (notificationBuild3.getGroup() != null && (notificationBuild3.flags & 512) != 0 && this.f1026h == 2) {
                    h(notificationBuild3);
                }
                if (notificationBuild3.getGroup() != null && (notificationBuild3.flags & 512) == 0 && this.f1026h == 1) {
                    h(notificationBuild3);
                }
            }
            return notificationBuild3;
        }
        if (i >= 19) {
            SparseArray<Bundle> sparseArrayA = k.a(this.f1024f);
            if (sparseArrayA != null) {
                this.f1025g.putSparseParcelableArray("android.support.actionExtras", sparseArrayA);
            }
            this.b.setExtras(this.f1025g);
            Notification notificationBuild4 = this.b.build();
            RemoteViews remoteViews6 = this.f1022d;
            if (remoteViews6 != null) {
                notificationBuild4.contentView = remoteViews6;
            }
            RemoteViews remoteViews7 = this.f1023e;
            if (remoteViews7 != null) {
                notificationBuild4.bigContentView = remoteViews7;
            }
            return notificationBuild4;
        }
        if (i < 16) {
            return this.b.getNotification();
        }
        Notification notificationBuild5 = this.b.build();
        Bundle bundleK = i.k(notificationBuild5);
        Bundle bundle = new Bundle(this.f1025g);
        for (String str : this.f1025g.keySet()) {
            if (bundleK.containsKey(str)) {
                bundle.remove(str);
            }
        }
        bundleK.putAll(bundle);
        SparseArray<Bundle> sparseArrayA2 = k.a(this.f1024f);
        if (sparseArrayA2 != null) {
            i.k(notificationBuild5).putSparseParcelableArray("android.support.actionExtras", sparseArrayA2);
        }
        RemoteViews remoteViews8 = this.f1022d;
        if (remoteViews8 != null) {
            notificationBuild5.contentView = remoteViews8;
        }
        RemoteViews remoteViews9 = this.f1023e;
        if (remoteViews9 != null) {
            notificationBuild5.bigContentView = remoteViews9;
        }
        return notificationBuild5;
    }

    Context f() {
        return this.f1021a;
    }
}
