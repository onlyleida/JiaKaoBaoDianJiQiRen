package androidx.core.app;

import android.annotation.SuppressLint;
import android.app.Notification;
import android.app.PendingIntent;
import android.app.Person;
import android.app.RemoteInput;
import android.content.Context;
import android.content.LocusId;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.widget.RemoteViews;
import androidx.core.R;
import androidx.core.graphics.drawable.IconCompat;
import androidx.core.view.ViewCompat;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class i {

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Bundle f984a;
        private IconCompat b;
        private final n[] c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final n[] f985d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f986e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f987f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final int f988g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final boolean f989h;

        @Deprecated
        public int i;
        public CharSequence j;
        public PendingIntent k;

        public static final class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final IconCompat f990a;
            private final CharSequence b;
            private final PendingIntent c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private boolean f991d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private final Bundle f992e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private ArrayList<n> f993f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            private int f994g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            private boolean f995h;
            private boolean i;

            public a(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent) {
                this(iconCompat, charSequence, pendingIntent, new Bundle(), null, true, 0, true, false);
            }

            private void c() {
                if (this.i) {
                    Objects.requireNonNull(this.c, "Contextual Actions must contain a valid PendingIntent");
                }
            }

            public static a d(Notification.Action action) {
                RemoteInput[] remoteInputs;
                int i = Build.VERSION.SDK_INT;
                a aVar = (i < 23 || action.getIcon() == null) ? new a(action.icon, action.title, action.actionIntent) : new a(IconCompat.d(action.getIcon()), action.title, action.actionIntent);
                if (i >= 20 && (remoteInputs = action.getRemoteInputs()) != null && remoteInputs.length != 0) {
                    for (RemoteInput remoteInput : remoteInputs) {
                        aVar.a(n.c(remoteInput));
                    }
                }
                if (i >= 24) {
                    aVar.f991d = action.getAllowGeneratedReplies();
                }
                if (i >= 28) {
                    aVar.f(action.getSemanticAction());
                }
                if (i >= 29) {
                    aVar.e(action.isContextual());
                }
                return aVar;
            }

            public a a(n nVar) {
                if (this.f993f == null) {
                    this.f993f = new ArrayList<>();
                }
                if (nVar != null) {
                    this.f993f.add(nVar);
                }
                return this;
            }

            public b b() {
                c();
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                ArrayList<n> arrayList3 = this.f993f;
                if (arrayList3 != null) {
                    for (n nVar : arrayList3) {
                        if (nVar.k()) {
                            arrayList.add(nVar);
                        } else {
                            arrayList2.add(nVar);
                        }
                    }
                }
                n[] nVarArr = arrayList.isEmpty() ? null : (n[]) arrayList.toArray(new n[arrayList.size()]);
                return new b(this.f990a, this.b, this.c, this.f992e, arrayList2.isEmpty() ? null : (n[]) arrayList2.toArray(new n[arrayList2.size()]), nVarArr, this.f991d, this.f994g, this.f995h, this.i);
            }

            public a e(boolean z) {
                this.i = z;
                return this;
            }

            public a f(int i) {
                this.f994g = i;
                return this;
            }

            public a(int i, CharSequence charSequence, PendingIntent pendingIntent) {
                this(i != 0 ? IconCompat.l(null, "", i) : null, charSequence, pendingIntent, new Bundle(), null, true, 0, true, false);
            }

            private a(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, n[] nVarArr, boolean z, int i, boolean z2, boolean z3) {
                this.f991d = true;
                this.f995h = true;
                this.f990a = iconCompat;
                this.b = f.limitCharSequenceLength(charSequence);
                this.c = pendingIntent;
                this.f992e = bundle;
                this.f993f = nVarArr == null ? null : new ArrayList<>(Arrays.asList(nVarArr));
                this.f991d = z;
                this.f994g = i;
                this.f995h = z2;
                this.i = z3;
            }
        }

        public b(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this(i != 0 ? IconCompat.l(null, "", i) : null, charSequence, pendingIntent);
        }

        public PendingIntent a() {
            return this.k;
        }

        public boolean b() {
            return this.f986e;
        }

        public n[] c() {
            return this.f985d;
        }

        public Bundle d() {
            return this.f984a;
        }

        @Deprecated
        public int e() {
            return this.i;
        }

        public IconCompat f() {
            int i;
            if (this.b == null && (i = this.i) != 0) {
                this.b = IconCompat.l(null, "", i);
            }
            return this.b;
        }

        public n[] g() {
            return this.c;
        }

        public int h() {
            return this.f988g;
        }

        public boolean i() {
            return this.f987f;
        }

        public CharSequence j() {
            return this.j;
        }

        public boolean k() {
            return this.f989h;
        }

        public b(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent) {
            this(iconCompat, charSequence, pendingIntent, new Bundle(), (n[]) null, (n[]) null, true, 0, true, false);
        }

        b(int i, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, n[] nVarArr, n[] nVarArr2, boolean z, int i2, boolean z2, boolean z3) {
            this(i != 0 ? IconCompat.l(null, "", i) : null, charSequence, pendingIntent, bundle, nVarArr, nVarArr2, z, i2, z2, z3);
        }

        b(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, n[] nVarArr, n[] nVarArr2, boolean z, int i, boolean z2, boolean z3) {
            this.f987f = true;
            this.b = iconCompat;
            if (iconCompat != null && iconCompat.s() == 2) {
                this.i = iconCompat.n();
            }
            this.j = f.limitCharSequenceLength(charSequence);
            this.k = pendingIntent;
            this.f984a = bundle == null ? new Bundle() : bundle;
            this.c = nVarArr;
            this.f985d = nVarArr2;
            this.f986e = z;
            this.f988g = i;
            this.f987f = z2;
            this.f989h = z3;
        }
    }

    public static class c extends k {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Bitmap f996e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private IconCompat f997f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f998g;

        private static class a {
            static void a(Notification.BigPictureStyle bigPictureStyle, Bitmap bitmap) {
                bigPictureStyle.bigLargeIcon(bitmap);
            }

            static void b(Notification.BigPictureStyle bigPictureStyle, CharSequence charSequence) {
                bigPictureStyle.setSummaryText(charSequence);
            }
        }

        private static class b {
            static void a(Notification.BigPictureStyle bigPictureStyle, Icon icon) {
                bigPictureStyle.bigLargeIcon(icon);
            }
        }

        private static IconCompat z(Parcelable parcelable) {
            if (parcelable == null) {
                return null;
            }
            if (Build.VERSION.SDK_INT >= 23 && (parcelable instanceof Icon)) {
                return IconCompat.d((Icon) parcelable);
            }
            if (parcelable instanceof Bitmap) {
                return IconCompat.h((Bitmap) parcelable);
            }
            return null;
        }

        @Override // androidx.core.app.i.k
        public void b(androidx.core.app.h hVar) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 16) {
                Notification.BigPictureStyle bigPictureStyleBigPicture = new Notification.BigPictureStyle(hVar.a()).setBigContentTitle(this.b).bigPicture(this.f996e);
                if (this.f998g) {
                    IconCompat iconCompat = this.f997f;
                    if (iconCompat == null) {
                        a.a(bigPictureStyleBigPicture, null);
                    } else if (i >= 23) {
                        b.a(bigPictureStyleBigPicture, this.f997f.D(hVar instanceof androidx.core.app.j ? ((androidx.core.app.j) hVar).f() : null));
                    } else if (iconCompat.s() == 1) {
                        a.a(bigPictureStyleBigPicture, this.f997f.m());
                    } else {
                        a.a(bigPictureStyleBigPicture, null);
                    }
                }
                if (this.f1020d) {
                    a.b(bigPictureStyleBigPicture, this.c);
                }
            }
        }

        @Override // androidx.core.app.i.k
        protected void f(Bundle bundle) {
            super.f(bundle);
            bundle.remove("android.largeIcon.big");
            bundle.remove("android.picture");
        }

        @Override // androidx.core.app.i.k
        protected String s() {
            return "androidx.core.app.NotificationCompat$BigPictureStyle";
        }

        @Override // androidx.core.app.i.k
        protected void x(Bundle bundle) {
            super.x(bundle);
            if (bundle.containsKey("android.largeIcon.big")) {
                this.f997f = z(bundle.getParcelable("android.largeIcon.big"));
                this.f998g = true;
            }
            this.f996e = (Bitmap) bundle.getParcelable("android.picture");
        }
    }

    public static class d extends k {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private CharSequence f999e;

        public d A(CharSequence charSequence) {
            this.b = f.limitCharSequenceLength(charSequence);
            return this;
        }

        public d B(CharSequence charSequence) {
            this.c = f.limitCharSequenceLength(charSequence);
            this.f1020d = true;
            return this;
        }

        @Override // androidx.core.app.i.k
        public void a(Bundle bundle) {
            super.a(bundle);
            if (Build.VERSION.SDK_INT < 21) {
                bundle.putCharSequence("android.bigText", this.f999e);
            }
        }

        @Override // androidx.core.app.i.k
        public void b(androidx.core.app.h hVar) {
            if (Build.VERSION.SDK_INT >= 16) {
                Notification.BigTextStyle bigTextStyleBigText = new Notification.BigTextStyle(hVar.a()).setBigContentTitle(this.b).bigText(this.f999e);
                if (this.f1020d) {
                    bigTextStyleBigText.setSummaryText(this.c);
                }
            }
        }

        @Override // androidx.core.app.i.k
        protected void f(Bundle bundle) {
            super.f(bundle);
            bundle.remove("android.bigText");
        }

        @Override // androidx.core.app.i.k
        protected String s() {
            return "androidx.core.app.NotificationCompat$BigTextStyle";
        }

        @Override // androidx.core.app.i.k
        protected void x(Bundle bundle) {
            super.x(bundle);
            this.f999e = bundle.getCharSequence("android.bigText");
        }

        public d z(CharSequence charSequence) {
            this.f999e = f.limitCharSequenceLength(charSequence);
            return this;
        }
    }

    public static final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private PendingIntent f1000a;
        private PendingIntent b;
        private IconCompat c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f1001d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f1002e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f1003f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f1004g;

        private static class a {
            static e a(Notification.BubbleMetadata bubbleMetadata) {
                if (bubbleMetadata == null || bubbleMetadata.getIntent() == null) {
                    return null;
                }
                c cVar = new c(bubbleMetadata.getIntent(), IconCompat.d(bubbleMetadata.getIcon()));
                cVar.b(bubbleMetadata.getAutoExpandBubble());
                cVar.c(bubbleMetadata.getDeleteIntent());
                cVar.g(bubbleMetadata.isNotificationSuppressed());
                if (bubbleMetadata.getDesiredHeight() != 0) {
                    cVar.d(bubbleMetadata.getDesiredHeight());
                }
                if (bubbleMetadata.getDesiredHeightResId() != 0) {
                    cVar.e(bubbleMetadata.getDesiredHeightResId());
                }
                return cVar.a();
            }

            static Notification.BubbleMetadata b(e eVar) {
                if (eVar == null || eVar.g() == null) {
                    return null;
                }
                Notification.BubbleMetadata.Builder suppressNotification = new Notification.BubbleMetadata.Builder().setIcon(eVar.f().C()).setIntent(eVar.g()).setDeleteIntent(eVar.c()).setAutoExpandBubble(eVar.b()).setSuppressNotification(eVar.i());
                if (eVar.d() != 0) {
                    suppressNotification.setDesiredHeight(eVar.d());
                }
                if (eVar.e() != 0) {
                    suppressNotification.setDesiredHeightResId(eVar.e());
                }
                return suppressNotification.build();
            }
        }

        private static class b {
            static e a(Notification.BubbleMetadata bubbleMetadata) {
                if (bubbleMetadata == null) {
                    return null;
                }
                c cVar = bubbleMetadata.getShortcutId() != null ? new c(bubbleMetadata.getShortcutId()) : new c(bubbleMetadata.getIntent(), IconCompat.d(bubbleMetadata.getIcon()));
                cVar.b(bubbleMetadata.getAutoExpandBubble());
                cVar.c(bubbleMetadata.getDeleteIntent());
                cVar.g(bubbleMetadata.isNotificationSuppressed());
                if (bubbleMetadata.getDesiredHeight() != 0) {
                    cVar.d(bubbleMetadata.getDesiredHeight());
                }
                if (bubbleMetadata.getDesiredHeightResId() != 0) {
                    cVar.e(bubbleMetadata.getDesiredHeightResId());
                }
                return cVar.a();
            }

            static Notification.BubbleMetadata b(e eVar) {
                if (eVar == null) {
                    return null;
                }
                Notification.BubbleMetadata.Builder builder = eVar.h() != null ? new Notification.BubbleMetadata.Builder(eVar.h()) : new Notification.BubbleMetadata.Builder(eVar.g(), eVar.f().C());
                builder.setDeleteIntent(eVar.c()).setAutoExpandBubble(eVar.b()).setSuppressNotification(eVar.i());
                if (eVar.d() != 0) {
                    builder.setDesiredHeight(eVar.d());
                }
                if (eVar.e() != 0) {
                    builder.setDesiredHeightResId(eVar.e());
                }
                return builder.build();
            }
        }

        public static e a(Notification.BubbleMetadata bubbleMetadata) {
            if (bubbleMetadata == null) {
                return null;
            }
            int i = Build.VERSION.SDK_INT;
            if (i >= 30) {
                return b.a(bubbleMetadata);
            }
            if (i == 29) {
                return a.a(bubbleMetadata);
            }
            return null;
        }

        public static Notification.BubbleMetadata k(e eVar) {
            if (eVar == null) {
                return null;
            }
            int i = Build.VERSION.SDK_INT;
            if (i >= 30) {
                return b.b(eVar);
            }
            if (i == 29) {
                return a.b(eVar);
            }
            return null;
        }

        public boolean b() {
            return (this.f1003f & 1) != 0;
        }

        public PendingIntent c() {
            return this.b;
        }

        public int d() {
            return this.f1001d;
        }

        public int e() {
            return this.f1002e;
        }

        @SuppressLint({"InvalidNullConversion"})
        public IconCompat f() {
            return this.c;
        }

        @SuppressLint({"InvalidNullConversion"})
        public PendingIntent g() {
            return this.f1000a;
        }

        public String h() {
            return this.f1004g;
        }

        public boolean i() {
            return (this.f1003f & 2) != 0;
        }

        public void j(int i) {
            this.f1003f = i;
        }

        private e(PendingIntent pendingIntent, PendingIntent pendingIntent2, IconCompat iconCompat, int i, int i2, int i3, String str) {
            this.f1000a = pendingIntent;
            this.c = iconCompat;
            this.f1001d = i;
            this.f1002e = i2;
            this.b = pendingIntent2;
            this.f1003f = i3;
            this.f1004g = str;
        }

        public static final class c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private PendingIntent f1005a;
            private IconCompat b;
            private int c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f1006d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private int f1007e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private PendingIntent f1008f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            private String f1009g;

            public c(String str) {
                if (TextUtils.isEmpty(str)) {
                    throw new NullPointerException("Bubble requires a non-null shortcut id");
                }
                this.f1009g = str;
            }

            private c f(int i, boolean z) {
                if (z) {
                    this.f1007e = i | this.f1007e;
                } else {
                    this.f1007e = (~i) & this.f1007e;
                }
                return this;
            }

            @SuppressLint({"SyntheticAccessor"})
            public e a() {
                String str = this.f1009g;
                if (str == null) {
                    Objects.requireNonNull(this.f1005a, "Must supply pending intent or shortcut to bubble");
                }
                if (str == null) {
                    Objects.requireNonNull(this.b, "Must supply an icon or shortcut for the bubble");
                }
                PendingIntent pendingIntent = this.f1005a;
                PendingIntent pendingIntent2 = this.f1008f;
                IconCompat iconCompat = this.b;
                int i = this.c;
                int i2 = this.f1006d;
                int i3 = this.f1007e;
                e eVar = new e(pendingIntent, pendingIntent2, iconCompat, i, i2, i3, str);
                eVar.j(i3);
                return eVar;
            }

            public c b(boolean z) {
                f(1, z);
                return this;
            }

            public c c(PendingIntent pendingIntent) {
                this.f1008f = pendingIntent;
                return this;
            }

            public c d(int i) {
                this.c = Math.max(i, 0);
                this.f1006d = 0;
                return this;
            }

            public c e(int i) {
                this.f1006d = i;
                this.c = 0;
                return this;
            }

            public c g(boolean z) {
                f(2, z);
                return this;
            }

            public c(PendingIntent pendingIntent, IconCompat iconCompat) {
                Objects.requireNonNull(pendingIntent, "Bubble requires non-null pending intent");
                Objects.requireNonNull(iconCompat, "Bubbles require non-null icon");
                this.f1005a = pendingIntent;
                this.b = iconCompat;
            }
        }
    }

    public static class f {
        private static final int MAX_CHARSEQUENCE_LENGTH = 5120;
        public ArrayList<b> mActions;
        boolean mAllowSystemGeneratedContextualActions;
        int mBadgeIcon;
        RemoteViews mBigContentView;
        e mBubbleMetadata;
        String mCategory;
        String mChannelId;
        boolean mChronometerCountDown;
        int mColor;
        boolean mColorized;
        boolean mColorizedSet;
        CharSequence mContentInfo;
        PendingIntent mContentIntent;
        CharSequence mContentText;
        CharSequence mContentTitle;
        RemoteViews mContentView;
        public Context mContext;
        Bundle mExtras;
        PendingIntent mFullScreenIntent;
        int mGroupAlertBehavior;
        String mGroupKey;
        boolean mGroupSummary;
        RemoteViews mHeadsUpContentView;
        ArrayList<b> mInvisibleActions;
        Bitmap mLargeIcon;
        boolean mLocalOnly;
        androidx.core.a.c mLocusId;
        Notification mNotification;
        int mNumber;

        @Deprecated
        public ArrayList<String> mPeople;
        public ArrayList<m> mPersonList;
        int mPriority;
        int mProgress;
        boolean mProgressIndeterminate;
        int mProgressMax;
        Notification mPublicVersion;
        CharSequence[] mRemoteInputHistory;
        CharSequence mSettingsText;
        String mShortcutId;
        boolean mShowWhen;
        boolean mSilent;
        Icon mSmallIcon;
        String mSortKey;
        k mStyle;
        CharSequence mSubText;
        RemoteViews mTickerView;
        long mTimeout;
        boolean mUseChronometer;
        int mVisibility;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public f(Context context, Notification notification) {
            ArrayList parcelableArrayList;
            this(context, i.f(notification));
            int i = Build.VERSION.SDK_INT;
            Bundle bundle = notification.extras;
            k kVarR = k.r(notification);
            setContentTitle(i.j(notification)).setContentText(i.i(notification)).setContentInfo(i.h(notification)).setSubText(i.x(notification)).setSettingsText(i.t(notification)).setStyle(kVarR).setContentIntent(notification.contentIntent).setGroup(i.l(notification)).setGroupSummary(i.B(notification)).setLocusId(i.p(notification)).setWhen(notification.when).setShowWhen(i.v(notification)).setUsesChronometer(i.z(notification)).setAutoCancel(i.b(notification)).setOnlyAlertOnce(i.r(notification)).setOngoing(i.q(notification)).setLocalOnly(i.o(notification)).setLargeIcon(notification.largeIcon).setBadgeIconType(i.c(notification)).setCategory(i.e(notification)).setBubbleMetadata(i.d(notification)).setNumber(notification.number).setTicker(notification.tickerText).setContentIntent(notification.contentIntent).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(notification.fullScreenIntent, i.m(notification)).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setDefaults(notification.defaults).setPriority(notification.priority).setColor(i.g(notification)).setVisibility(i.A(notification)).setPublicVersion(i.s(notification)).setSortKey(i.w(notification)).setTimeoutAfter(i.y(notification)).setShortcutId(i.u(notification)).setProgress(bundle.getInt("android.progressMax"), bundle.getInt("android.progress"), bundle.getBoolean("android.progressIndeterminate")).setAllowSystemGeneratedContextualActions(i.a(notification)).setSmallIcon(notification.icon, notification.iconLevel).addExtras(getExtrasWithoutDuplicateData(notification, kVarR));
            if (i >= 23) {
                this.mSmallIcon = notification.getSmallIcon();
            }
            Notification.Action[] actionArr = notification.actions;
            if (actionArr != null && actionArr.length != 0) {
                for (Notification.Action action : actionArr) {
                    addAction(b.a.d(action).b());
                }
            }
            if (i >= 21) {
                List<b> listN = i.n(notification);
                if (!listN.isEmpty()) {
                    Iterator<b> it = listN.iterator();
                    while (it.hasNext()) {
                        addInvisibleAction(it.next());
                    }
                }
            }
            String[] stringArray = notification.extras.getStringArray("android.people");
            if (stringArray != null && stringArray.length != 0) {
                for (String str : stringArray) {
                    addPerson(str);
                }
            }
            if (i >= 28 && (parcelableArrayList = notification.extras.getParcelableArrayList("android.people.list")) != null && !parcelableArrayList.isEmpty()) {
                Iterator it2 = parcelableArrayList.iterator();
                while (it2.hasNext()) {
                    addPerson(m.a((Person) it2.next()));
                }
            }
            if (i >= 24 && bundle.containsKey("android.chronometerCountDown")) {
                setChronometerCountDown(bundle.getBoolean("android.chronometerCountDown"));
            }
            if (i < 26 || !bundle.containsKey("android.colorized")) {
                return;
            }
            setColorized(bundle.getBoolean("android.colorized"));
        }

        private static Bundle getExtrasWithoutDuplicateData(Notification notification, k kVar) {
            if (notification.extras == null) {
                return null;
            }
            Bundle bundle = new Bundle(notification.extras);
            bundle.remove("android.title");
            bundle.remove("android.text");
            bundle.remove("android.infoText");
            bundle.remove("android.subText");
            bundle.remove("android.intent.extra.CHANNEL_ID");
            bundle.remove("android.intent.extra.CHANNEL_GROUP_ID");
            bundle.remove("android.showWhen");
            bundle.remove("android.progress");
            bundle.remove("android.progressMax");
            bundle.remove("android.progressIndeterminate");
            bundle.remove("android.chronometerCountDown");
            bundle.remove("android.colorized");
            bundle.remove("android.people.list");
            bundle.remove("android.people");
            bundle.remove("android.support.sortKey");
            bundle.remove("android.support.groupKey");
            bundle.remove("android.support.isGroupSummary");
            bundle.remove("android.support.localOnly");
            bundle.remove("android.support.actionExtras");
            Bundle bundle2 = bundle.getBundle("android.car.EXTENSIONS");
            if (bundle2 != null) {
                Bundle bundle3 = new Bundle(bundle2);
                bundle3.remove("invisible_actions");
                bundle.putBundle("android.car.EXTENSIONS", bundle3);
            }
            if (kVar != null) {
                kVar.f(bundle);
            }
            return bundle;
        }

        protected static CharSequence limitCharSequenceLength(CharSequence charSequence) {
            return (charSequence != null && charSequence.length() > MAX_CHARSEQUENCE_LENGTH) ? charSequence.subSequence(0, MAX_CHARSEQUENCE_LENGTH) : charSequence;
        }

        private Bitmap reduceLargeIconSize(Bitmap bitmap) {
            if (bitmap == null || Build.VERSION.SDK_INT >= 27) {
                return bitmap;
            }
            Resources resources = this.mContext.getResources();
            int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.compat_notification_large_icon_max_width);
            int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.compat_notification_large_icon_max_height);
            if (bitmap.getWidth() <= dimensionPixelSize && bitmap.getHeight() <= dimensionPixelSize2) {
                return bitmap;
            }
            double dMin = Math.min(((double) dimensionPixelSize) / ((double) Math.max(1, bitmap.getWidth())), ((double) dimensionPixelSize2) / ((double) Math.max(1, bitmap.getHeight())));
            return Bitmap.createScaledBitmap(bitmap, (int) Math.ceil(((double) bitmap.getWidth()) * dMin), (int) Math.ceil(((double) bitmap.getHeight()) * dMin), true);
        }

        private void setFlag(int i, boolean z) {
            if (z) {
                Notification notification = this.mNotification;
                notification.flags = i | notification.flags;
            } else {
                Notification notification2 = this.mNotification;
                notification2.flags = (~i) & notification2.flags;
            }
        }

        private boolean useExistingRemoteView() {
            k kVar = this.mStyle;
            return kVar == null || !kVar.q();
        }

        public f addAction(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this.mActions.add(new b(i, charSequence, pendingIntent));
            return this;
        }

        public f addExtras(Bundle bundle) {
            if (bundle != null) {
                Bundle bundle2 = this.mExtras;
                if (bundle2 == null) {
                    this.mExtras = new Bundle(bundle);
                } else {
                    bundle2.putAll(bundle);
                }
            }
            return this;
        }

        public f addInvisibleAction(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this.mInvisibleActions.add(new b(i, charSequence, pendingIntent));
            return this;
        }

        @Deprecated
        public f addPerson(String str) {
            if (str != null && !str.isEmpty()) {
                this.mPeople.add(str);
            }
            return this;
        }

        public Notification build() {
            return new androidx.core.app.j(this).c();
        }

        public f clearActions() {
            this.mActions.clear();
            return this;
        }

        public f clearInvisibleActions() {
            this.mInvisibleActions.clear();
            Bundle bundle = this.mExtras.getBundle("android.car.EXTENSIONS");
            if (bundle != null) {
                Bundle bundle2 = new Bundle(bundle);
                bundle2.remove("invisible_actions");
                this.mExtras.putBundle("android.car.EXTENSIONS", bundle2);
            }
            return this;
        }

        public f clearPeople() {
            this.mPersonList.clear();
            this.mPeople.clear();
            return this;
        }

        @SuppressLint({"BuilderSetStyle"})
        public RemoteViews createBigContentView() {
            RemoteViews remoteViewsU;
            int i = Build.VERSION.SDK_INT;
            if (i < 16) {
                return null;
            }
            if (this.mBigContentView != null && useExistingRemoteView()) {
                return this.mBigContentView;
            }
            androidx.core.app.j jVar = new androidx.core.app.j(this);
            k kVar = this.mStyle;
            if (kVar != null && (remoteViewsU = kVar.u(jVar)) != null) {
                return remoteViewsU;
            }
            Notification notificationC = jVar.c();
            return i >= 24 ? Notification.Builder.recoverBuilder(this.mContext, notificationC).createBigContentView() : notificationC.bigContentView;
        }

        @SuppressLint({"BuilderSetStyle"})
        public RemoteViews createContentView() {
            RemoteViews remoteViewsV;
            if (this.mContentView != null && useExistingRemoteView()) {
                return this.mContentView;
            }
            androidx.core.app.j jVar = new androidx.core.app.j(this);
            k kVar = this.mStyle;
            if (kVar != null && (remoteViewsV = kVar.v(jVar)) != null) {
                return remoteViewsV;
            }
            Notification notificationC = jVar.c();
            return Build.VERSION.SDK_INT >= 24 ? Notification.Builder.recoverBuilder(this.mContext, notificationC).createContentView() : notificationC.contentView;
        }

        @SuppressLint({"BuilderSetStyle"})
        public RemoteViews createHeadsUpContentView() {
            RemoteViews remoteViewsW;
            int i = Build.VERSION.SDK_INT;
            if (i < 21) {
                return null;
            }
            if (this.mHeadsUpContentView != null && useExistingRemoteView()) {
                return this.mHeadsUpContentView;
            }
            androidx.core.app.j jVar = new androidx.core.app.j(this);
            k kVar = this.mStyle;
            if (kVar != null && (remoteViewsW = kVar.w(jVar)) != null) {
                return remoteViewsW;
            }
            Notification notificationC = jVar.c();
            return i >= 24 ? Notification.Builder.recoverBuilder(this.mContext, notificationC).createHeadsUpContentView() : notificationC.headsUpContentView;
        }

        public f extend(h hVar) {
            hVar.a(this);
            return this;
        }

        public RemoteViews getBigContentView() {
            return this.mBigContentView;
        }

        public e getBubbleMetadata() {
            return this.mBubbleMetadata;
        }

        public int getColor() {
            return this.mColor;
        }

        public RemoteViews getContentView() {
            return this.mContentView;
        }

        public Bundle getExtras() {
            if (this.mExtras == null) {
                this.mExtras = new Bundle();
            }
            return this.mExtras;
        }

        public RemoteViews getHeadsUpContentView() {
            return this.mHeadsUpContentView;
        }

        @Deprecated
        public Notification getNotification() {
            return build();
        }

        public int getPriority() {
            return this.mPriority;
        }

        public long getWhenIfShowing() {
            if (this.mShowWhen) {
                return this.mNotification.when;
            }
            return 0L;
        }

        public f setAllowSystemGeneratedContextualActions(boolean z) {
            this.mAllowSystemGeneratedContextualActions = z;
            return this;
        }

        public f setAutoCancel(boolean z) {
            setFlag(16, z);
            return this;
        }

        public f setBadgeIconType(int i) {
            this.mBadgeIcon = i;
            return this;
        }

        public f setBubbleMetadata(e eVar) {
            this.mBubbleMetadata = eVar;
            return this;
        }

        public f setCategory(String str) {
            this.mCategory = str;
            return this;
        }

        public f setChannelId(String str) {
            this.mChannelId = str;
            return this;
        }

        public f setChronometerCountDown(boolean z) {
            this.mChronometerCountDown = z;
            getExtras().putBoolean("android.chronometerCountDown", z);
            return this;
        }

        public f setColor(int i) {
            this.mColor = i;
            return this;
        }

        public f setColorized(boolean z) {
            this.mColorized = z;
            this.mColorizedSet = true;
            return this;
        }

        public f setContent(RemoteViews remoteViews) {
            this.mNotification.contentView = remoteViews;
            return this;
        }

        public f setContentInfo(CharSequence charSequence) {
            this.mContentInfo = limitCharSequenceLength(charSequence);
            return this;
        }

        public f setContentIntent(PendingIntent pendingIntent) {
            this.mContentIntent = pendingIntent;
            return this;
        }

        public f setContentText(CharSequence charSequence) {
            this.mContentText = limitCharSequenceLength(charSequence);
            return this;
        }

        public f setContentTitle(CharSequence charSequence) {
            this.mContentTitle = limitCharSequenceLength(charSequence);
            return this;
        }

        public f setCustomBigContentView(RemoteViews remoteViews) {
            this.mBigContentView = remoteViews;
            return this;
        }

        public f setCustomContentView(RemoteViews remoteViews) {
            this.mContentView = remoteViews;
            return this;
        }

        public f setCustomHeadsUpContentView(RemoteViews remoteViews) {
            this.mHeadsUpContentView = remoteViews;
            return this;
        }

        public f setDefaults(int i) {
            Notification notification = this.mNotification;
            notification.defaults = i;
            if ((i & 4) != 0) {
                notification.flags |= 1;
            }
            return this;
        }

        public f setDeleteIntent(PendingIntent pendingIntent) {
            this.mNotification.deleteIntent = pendingIntent;
            return this;
        }

        public f setExtras(Bundle bundle) {
            this.mExtras = bundle;
            return this;
        }

        public f setFullScreenIntent(PendingIntent pendingIntent, boolean z) {
            this.mFullScreenIntent = pendingIntent;
            setFlag(128, z);
            return this;
        }

        public f setGroup(String str) {
            this.mGroupKey = str;
            return this;
        }

        public f setGroupAlertBehavior(int i) {
            this.mGroupAlertBehavior = i;
            return this;
        }

        public f setGroupSummary(boolean z) {
            this.mGroupSummary = z;
            return this;
        }

        public f setLargeIcon(Bitmap bitmap) {
            this.mLargeIcon = reduceLargeIconSize(bitmap);
            return this;
        }

        public f setLights(int i, int i2, int i3) {
            Notification notification = this.mNotification;
            notification.ledARGB = i;
            notification.ledOnMS = i2;
            notification.ledOffMS = i3;
            notification.flags = ((i2 == 0 || i3 == 0) ? 0 : 1) | (notification.flags & (-2));
            return this;
        }

        public f setLocalOnly(boolean z) {
            this.mLocalOnly = z;
            return this;
        }

        public f setLocusId(androidx.core.a.c cVar) {
            this.mLocusId = cVar;
            return this;
        }

        @Deprecated
        public f setNotificationSilent() {
            this.mSilent = true;
            return this;
        }

        public f setNumber(int i) {
            this.mNumber = i;
            return this;
        }

        public f setOngoing(boolean z) {
            setFlag(2, z);
            return this;
        }

        public f setOnlyAlertOnce(boolean z) {
            setFlag(8, z);
            return this;
        }

        public f setPriority(int i) {
            this.mPriority = i;
            return this;
        }

        public f setProgress(int i, int i2, boolean z) {
            this.mProgressMax = i;
            this.mProgress = i2;
            this.mProgressIndeterminate = z;
            return this;
        }

        public f setPublicVersion(Notification notification) {
            this.mPublicVersion = notification;
            return this;
        }

        public f setRemoteInputHistory(CharSequence[] charSequenceArr) {
            this.mRemoteInputHistory = charSequenceArr;
            return this;
        }

        public f setSettingsText(CharSequence charSequence) {
            this.mSettingsText = limitCharSequenceLength(charSequence);
            return this;
        }

        public f setShortcutId(String str) {
            this.mShortcutId = str;
            return this;
        }

        public f setShortcutInfo(androidx.core.a.e.a aVar) {
            if (aVar == null) {
                return this;
            }
            aVar.a();
            throw null;
        }

        public f setShowWhen(boolean z) {
            this.mShowWhen = z;
            return this;
        }

        public f setSilent(boolean z) {
            this.mSilent = z;
            return this;
        }

        public f setSmallIcon(IconCompat iconCompat) {
            this.mSmallIcon = iconCompat.D(this.mContext);
            return this;
        }

        public f setSortKey(String str) {
            this.mSortKey = str;
            return this;
        }

        public f setSound(Uri uri) {
            Notification notification = this.mNotification;
            notification.sound = uri;
            notification.audioStreamType = -1;
            if (Build.VERSION.SDK_INT >= 21) {
                notification.audioAttributes = new AudioAttributes.Builder().setContentType(4).setUsage(5).build();
            }
            return this;
        }

        public f setStyle(k kVar) {
            if (this.mStyle != kVar) {
                this.mStyle = kVar;
                if (kVar != null) {
                    kVar.y(this);
                }
            }
            return this;
        }

        public f setSubText(CharSequence charSequence) {
            this.mSubText = limitCharSequenceLength(charSequence);
            return this;
        }

        public f setTicker(CharSequence charSequence) {
            this.mNotification.tickerText = limitCharSequenceLength(charSequence);
            return this;
        }

        public f setTimeoutAfter(long j) {
            this.mTimeout = j;
            return this;
        }

        public f setUsesChronometer(boolean z) {
            this.mUseChronometer = z;
            return this;
        }

        public f setVibrate(long[] jArr) {
            this.mNotification.vibrate = jArr;
            return this;
        }

        public f setVisibility(int i) {
            this.mVisibility = i;
            return this;
        }

        public f setWhen(long j) {
            this.mNotification.when = j;
            return this;
        }

        public f addAction(b bVar) {
            if (bVar != null) {
                this.mActions.add(bVar);
            }
            return this;
        }

        public f addInvisibleAction(b bVar) {
            if (bVar != null) {
                this.mInvisibleActions.add(bVar);
            }
            return this;
        }

        public f setSmallIcon(int i) {
            this.mNotification.icon = i;
            return this;
        }

        @Deprecated
        public f setTicker(CharSequence charSequence, RemoteViews remoteViews) {
            this.mNotification.tickerText = limitCharSequenceLength(charSequence);
            this.mTickerView = remoteViews;
            return this;
        }

        public f addPerson(m mVar) {
            if (mVar != null) {
                this.mPersonList.add(mVar);
            }
            return this;
        }

        public f setSmallIcon(int i, int i2) {
            Notification notification = this.mNotification;
            notification.icon = i;
            notification.iconLevel = i2;
            return this;
        }

        public f setSound(Uri uri, int i) {
            Notification notification = this.mNotification;
            notification.sound = uri;
            notification.audioStreamType = i;
            if (Build.VERSION.SDK_INT >= 21) {
                notification.audioAttributes = new AudioAttributes.Builder().setContentType(4).setLegacyStreamType(i).build();
            }
            return this;
        }

        public f(Context context, String str) {
            this.mActions = new ArrayList<>();
            this.mPersonList = new ArrayList<>();
            this.mInvisibleActions = new ArrayList<>();
            this.mShowWhen = true;
            this.mLocalOnly = false;
            this.mColor = 0;
            this.mVisibility = 0;
            this.mBadgeIcon = 0;
            this.mGroupAlertBehavior = 0;
            Notification notification = new Notification();
            this.mNotification = notification;
            this.mContext = context;
            this.mChannelId = str;
            notification.when = System.currentTimeMillis();
            this.mNotification.audioStreamType = -1;
            this.mPriority = 0;
            this.mPeople = new ArrayList<>();
            this.mAllowSystemGeneratedContextualActions = true;
        }

        @Deprecated
        public f(Context context) {
            this(context, (String) null);
        }
    }

    public static class g extends k {
        private RemoteViews A(b bVar) {
            boolean z = bVar.k == null;
            RemoteViews remoteViews = new RemoteViews(this.f1019a.mContext.getPackageName(), z ? R.layout.notification_action_tombstone : R.layout.notification_action);
            IconCompat iconCompatF = bVar.f();
            if (iconCompatF != null) {
                remoteViews.setImageViewBitmap(R.id.action_image, n(iconCompatF, this.f1019a.mContext.getResources().getColor(R.color.notification_action_color_filter)));
            }
            remoteViews.setTextViewText(R.id.action_text, bVar.j);
            if (!z) {
                remoteViews.setOnClickPendingIntent(R.id.action_container, bVar.k);
            }
            if (Build.VERSION.SDK_INT >= 15) {
                remoteViews.setContentDescription(R.id.action_container, bVar.j);
            }
            return remoteViews;
        }

        private static List<b> B(List<b> list) {
            if (list == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (b bVar : list) {
                if (!bVar.k()) {
                    arrayList.add(bVar);
                }
            }
            return arrayList;
        }

        private RemoteViews z(RemoteViews remoteViews, boolean z) {
            int iMin;
            boolean z2 = true;
            RemoteViews remoteViewsC = c(true, R.layout.notification_template_custom_big, false);
            remoteViewsC.removeAllViews(R.id.actions);
            List<b> listB = B(this.f1019a.mActions);
            if (!z || listB == null || (iMin = Math.min(listB.size(), 3)) <= 0) {
                z2 = false;
            } else {
                for (int i = 0; i < iMin; i++) {
                    remoteViewsC.addView(R.id.actions, A(listB.get(i)));
                }
            }
            int i2 = z2 ? 0 : 8;
            remoteViewsC.setViewVisibility(R.id.actions, i2);
            remoteViewsC.setViewVisibility(R.id.action_divider, i2);
            d(remoteViewsC, remoteViews);
            return remoteViewsC;
        }

        @Override // androidx.core.app.i.k
        public void b(androidx.core.app.h hVar) {
            if (Build.VERSION.SDK_INT >= 24) {
                hVar.a().setStyle(new Notification.DecoratedCustomViewStyle());
            }
        }

        @Override // androidx.core.app.i.k
        public boolean q() {
            return true;
        }

        @Override // androidx.core.app.i.k
        protected String s() {
            return "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle";
        }

        @Override // androidx.core.app.i.k
        public RemoteViews u(androidx.core.app.h hVar) {
            if (Build.VERSION.SDK_INT >= 24) {
                return null;
            }
            RemoteViews bigContentView = this.f1019a.getBigContentView();
            if (bigContentView == null) {
                bigContentView = this.f1019a.getContentView();
            }
            if (bigContentView == null) {
                return null;
            }
            return z(bigContentView, true);
        }

        @Override // androidx.core.app.i.k
        public RemoteViews v(androidx.core.app.h hVar) {
            if (Build.VERSION.SDK_INT < 24 && this.f1019a.getContentView() != null) {
                return z(this.f1019a.getContentView(), false);
            }
            return null;
        }

        @Override // androidx.core.app.i.k
        public RemoteViews w(androidx.core.app.h hVar) {
            if (Build.VERSION.SDK_INT >= 24) {
                return null;
            }
            RemoteViews headsUpContentView = this.f1019a.getHeadsUpContentView();
            RemoteViews contentView = headsUpContentView != null ? headsUpContentView : this.f1019a.getContentView();
            if (headsUpContentView == null) {
                return null;
            }
            return z(contentView, true);
        }
    }

    public interface h {
        f a(f fVar);
    }

    /* JADX INFO: renamed from: androidx.core.app.i$i, reason: collision with other inner class name */
    public static class C0026i extends k {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private ArrayList<CharSequence> f1010e = new ArrayList<>();

        @Override // androidx.core.app.i.k
        public void b(androidx.core.app.h hVar) {
            if (Build.VERSION.SDK_INT >= 16) {
                Notification.InboxStyle bigContentTitle = new Notification.InboxStyle(hVar.a()).setBigContentTitle(this.b);
                if (this.f1020d) {
                    bigContentTitle.setSummaryText(this.c);
                }
                Iterator<CharSequence> it = this.f1010e.iterator();
                while (it.hasNext()) {
                    bigContentTitle.addLine(it.next());
                }
            }
        }

        @Override // androidx.core.app.i.k
        protected void f(Bundle bundle) {
            super.f(bundle);
            bundle.remove("android.textLines");
        }

        @Override // androidx.core.app.i.k
        protected String s() {
            return "androidx.core.app.NotificationCompat$InboxStyle";
        }

        @Override // androidx.core.app.i.k
        protected void x(Bundle bundle) {
            super.x(bundle);
            this.f1010e.clear();
            if (bundle.containsKey("android.textLines")) {
                Collections.addAll(this.f1010e, bundle.getCharSequenceArray("android.textLines"));
            }
        }
    }

    public static class j extends k {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final List<a> f1011e = new ArrayList();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final List<a> f1012f = new ArrayList();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private m f1013g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private CharSequence f1014h;
        private Boolean i;

        public static final class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final CharSequence f1015a;
            private final long b;
            private final m c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private Bundle f1016d = new Bundle();

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private String f1017e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private Uri f1018f;

            public a(CharSequence charSequence, long j, m mVar) {
                this.f1015a = charSequence;
                this.b = j;
                this.c = mVar;
            }

            static Bundle[] a(List<a> list) {
                Bundle[] bundleArr = new Bundle[list.size()];
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    bundleArr[i] = list.get(i).l();
                }
                return bundleArr;
            }

            static a e(Bundle bundle) {
                m mVarA;
                try {
                    if (bundle.containsKey("text") && bundle.containsKey("time")) {
                        if (bundle.containsKey("person")) {
                            mVarA = m.b(bundle.getBundle("person"));
                        } else if (bundle.containsKey("sender_person") && Build.VERSION.SDK_INT >= 28) {
                            mVarA = m.a((Person) bundle.getParcelable("sender_person"));
                        } else if (bundle.containsKey("sender")) {
                            m.a aVar = new m.a();
                            aVar.f(bundle.getCharSequence("sender"));
                            mVarA = aVar.a();
                        } else {
                            mVarA = null;
                        }
                        a aVar2 = new a(bundle.getCharSequence("text"), bundle.getLong("time"), mVarA);
                        if (bundle.containsKey("type") && bundle.containsKey("uri")) {
                            aVar2.j(bundle.getString("type"), (Uri) bundle.getParcelable("uri"));
                        }
                        if (bundle.containsKey("extras")) {
                            aVar2.d().putAll(bundle.getBundle("extras"));
                        }
                        return aVar2;
                    }
                } catch (ClassCastException unused) {
                }
                return null;
            }

            static List<a> f(Parcelable[] parcelableArr) {
                a aVarE;
                ArrayList arrayList = new ArrayList(parcelableArr.length);
                for (int i = 0; i < parcelableArr.length; i++) {
                    if ((parcelableArr[i] instanceof Bundle) && (aVarE = e((Bundle) parcelableArr[i])) != null) {
                        arrayList.add(aVarE);
                    }
                }
                return arrayList;
            }

            private Bundle l() {
                Bundle bundle = new Bundle();
                CharSequence charSequence = this.f1015a;
                if (charSequence != null) {
                    bundle.putCharSequence("text", charSequence);
                }
                bundle.putLong("time", this.b);
                m mVar = this.c;
                if (mVar != null) {
                    bundle.putCharSequence("sender", mVar.e());
                    if (Build.VERSION.SDK_INT >= 28) {
                        bundle.putParcelable("sender_person", this.c.j());
                    } else {
                        bundle.putBundle("person", this.c.k());
                    }
                }
                String str = this.f1017e;
                if (str != null) {
                    bundle.putString("type", str);
                }
                Uri uri = this.f1018f;
                if (uri != null) {
                    bundle.putParcelable("uri", uri);
                }
                Bundle bundle2 = this.f1016d;
                if (bundle2 != null) {
                    bundle.putBundle("extras", bundle2);
                }
                return bundle;
            }

            public String b() {
                return this.f1017e;
            }

            public Uri c() {
                return this.f1018f;
            }

            public Bundle d() {
                return this.f1016d;
            }

            public m g() {
                return this.c;
            }

            public CharSequence h() {
                return this.f1015a;
            }

            public long i() {
                return this.b;
            }

            public a j(String str, Uri uri) {
                this.f1017e = str;
                this.f1018f = uri;
                return this;
            }

            Notification.MessagingStyle.Message k() {
                Notification.MessagingStyle.Message message;
                m mVarG = g();
                if (Build.VERSION.SDK_INT >= 28) {
                    message = new Notification.MessagingStyle.Message(h(), i(), mVarG != null ? mVarG.j() : null);
                } else {
                    message = new Notification.MessagingStyle.Message(h(), i(), mVarG != null ? mVarG.e() : null);
                }
                if (b() != null) {
                    message.setData(b(), c());
                }
                return message;
            }
        }

        j() {
        }

        private boolean A() {
            for (int size = this.f1011e.size() - 1; size >= 0; size--) {
                a aVar = this.f1011e.get(size);
                if (aVar.g() != null && aVar.g().e() == null) {
                    return true;
                }
            }
            return false;
        }

        private TextAppearanceSpan C(int i) {
            return new TextAppearanceSpan(null, 0, 0, ColorStateList.valueOf(i), null);
        }

        private CharSequence D(a aVar) {
            androidx.core.e.a aVarC = androidx.core.e.a.c();
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            boolean z = Build.VERSION.SDK_INT >= 21;
            int color = z ? ViewCompat.MEASURED_STATE_MASK : -1;
            CharSequence charSequenceE = aVar.g() == null ? "" : aVar.g().e();
            if (TextUtils.isEmpty(charSequenceE)) {
                charSequenceE = this.f1013g.e();
                if (z && this.f1019a.getColor() != 0) {
                    color = this.f1019a.getColor();
                }
            }
            CharSequence charSequenceH = aVarC.h(charSequenceE);
            spannableStringBuilder.append(charSequenceH);
            spannableStringBuilder.setSpan(C(color), spannableStringBuilder.length() - charSequenceH.length(), spannableStringBuilder.length(), 33);
            spannableStringBuilder.append((CharSequence) "  ").append(aVarC.h(aVar.h() != null ? aVar.h() : ""));
            return spannableStringBuilder;
        }

        private a z() {
            for (int size = this.f1011e.size() - 1; size >= 0; size--) {
                a aVar = this.f1011e.get(size);
                if (aVar.g() != null && !TextUtils.isEmpty(aVar.g().e())) {
                    return aVar;
                }
            }
            if (this.f1011e.isEmpty()) {
                return null;
            }
            List<a> list = this.f1011e;
            return list.get(list.size() - 1);
        }

        public boolean B() {
            f fVar = this.f1019a;
            if (fVar != null && fVar.mContext.getApplicationInfo().targetSdkVersion < 28 && this.i == null) {
                return this.f1014h != null;
            }
            Boolean bool = this.i;
            if (bool != null) {
                return bool.booleanValue();
            }
            return false;
        }

        public j E(boolean z) {
            this.i = Boolean.valueOf(z);
            return this;
        }

        @Override // androidx.core.app.i.k
        public void a(Bundle bundle) {
            super.a(bundle);
            bundle.putCharSequence("android.selfDisplayName", this.f1013g.e());
            bundle.putBundle("android.messagingStyleUser", this.f1013g.k());
            bundle.putCharSequence("android.hiddenConversationTitle", this.f1014h);
            if (this.f1014h != null && this.i.booleanValue()) {
                bundle.putCharSequence("android.conversationTitle", this.f1014h);
            }
            if (!this.f1011e.isEmpty()) {
                bundle.putParcelableArray("android.messages", a.a(this.f1011e));
            }
            if (!this.f1012f.isEmpty()) {
                bundle.putParcelableArray("android.messages.historic", a.a(this.f1012f));
            }
            Boolean bool = this.i;
            if (bool != null) {
                bundle.putBoolean("android.isGroupConversation", bool.booleanValue());
            }
        }

        @Override // androidx.core.app.i.k
        public void b(androidx.core.app.h hVar) {
            int i = Build.VERSION.SDK_INT;
            E(B());
            if (i >= 24) {
                Notification.MessagingStyle messagingStyle = i >= 28 ? new Notification.MessagingStyle(this.f1013g.j()) : new Notification.MessagingStyle(this.f1013g.e());
                Iterator<a> it = this.f1011e.iterator();
                while (it.hasNext()) {
                    messagingStyle.addMessage(it.next().k());
                }
                if (i >= 26) {
                    Iterator<a> it2 = this.f1012f.iterator();
                    while (it2.hasNext()) {
                        messagingStyle.addHistoricMessage(it2.next().k());
                    }
                }
                if (this.i.booleanValue() || i >= 28) {
                    messagingStyle.setConversationTitle(this.f1014h);
                }
                if (i >= 28) {
                    messagingStyle.setGroupConversation(this.i.booleanValue());
                }
                messagingStyle.setBuilder(hVar.a());
                return;
            }
            a aVarZ = z();
            if (this.f1014h != null && this.i.booleanValue()) {
                hVar.a().setContentTitle(this.f1014h);
            } else if (aVarZ != null) {
                hVar.a().setContentTitle("");
                if (aVarZ.g() != null) {
                    hVar.a().setContentTitle(aVarZ.g().e());
                }
            }
            if (aVarZ != null) {
                hVar.a().setContentText(this.f1014h != null ? D(aVarZ) : aVarZ.h());
            }
            if (i >= 16) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                boolean z = this.f1014h != null || A();
                for (int size = this.f1011e.size() - 1; size >= 0; size--) {
                    a aVar = this.f1011e.get(size);
                    CharSequence charSequenceD = z ? D(aVar) : aVar.h();
                    if (size != this.f1011e.size() - 1) {
                        spannableStringBuilder.insert(0, (CharSequence) "\n");
                    }
                    spannableStringBuilder.insert(0, charSequenceD);
                }
                new Notification.BigTextStyle(hVar.a()).setBigContentTitle(null).bigText(spannableStringBuilder);
            }
        }

        @Override // androidx.core.app.i.k
        protected void f(Bundle bundle) {
            super.f(bundle);
            bundle.remove("android.messagingStyleUser");
            bundle.remove("android.selfDisplayName");
            bundle.remove("android.conversationTitle");
            bundle.remove("android.hiddenConversationTitle");
            bundle.remove("android.messages");
            bundle.remove("android.messages.historic");
            bundle.remove("android.isGroupConversation");
        }

        @Override // androidx.core.app.i.k
        protected String s() {
            return "androidx.core.app.NotificationCompat$MessagingStyle";
        }

        @Override // androidx.core.app.i.k
        protected void x(Bundle bundle) {
            super.x(bundle);
            this.f1011e.clear();
            if (bundle.containsKey("android.messagingStyleUser")) {
                this.f1013g = m.b(bundle.getBundle("android.messagingStyleUser"));
            } else {
                m.a aVar = new m.a();
                aVar.f(bundle.getString("android.selfDisplayName"));
                this.f1013g = aVar.a();
            }
            CharSequence charSequence = bundle.getCharSequence("android.conversationTitle");
            this.f1014h = charSequence;
            if (charSequence == null) {
                this.f1014h = bundle.getCharSequence("android.hiddenConversationTitle");
            }
            Parcelable[] parcelableArray = bundle.getParcelableArray("android.messages");
            if (parcelableArray != null) {
                this.f1011e.addAll(a.f(parcelableArray));
            }
            Parcelable[] parcelableArray2 = bundle.getParcelableArray("android.messages.historic");
            if (parcelableArray2 != null) {
                this.f1012f.addAll(a.f(parcelableArray2));
            }
            if (bundle.containsKey("android.isGroupConversation")) {
                this.i = Boolean.valueOf(bundle.getBoolean("android.isGroupConversation"));
            }
        }
    }

    public static abstract class k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected f f1019a;
        CharSequence b;
        CharSequence c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f1020d = false;

        private int e() {
            Resources resources = this.f1019a.mContext.getResources();
            int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.notification_top_pad);
            int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.notification_top_pad_large_text);
            float fG = (g(resources.getConfiguration().fontScale, 1.0f, 1.3f) - 1.0f) / 0.29999995f;
            return Math.round(((1.0f - fG) * dimensionPixelSize) + (fG * dimensionPixelSize2));
        }

        private static float g(float f2, float f3, float f4) {
            if (f2 < f3) {
                return f3;
            }
            return f2 > f4 ? f4 : f2;
        }

        static k h(String str) {
            if (str == null) {
                return null;
            }
            str.hashCode();
            switch (str) {
                case "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle":
                    return new g();
                case "androidx.core.app.NotificationCompat$BigPictureStyle":
                    return new c();
                case "androidx.core.app.NotificationCompat$InboxStyle":
                    return new C0026i();
                case "androidx.core.app.NotificationCompat$BigTextStyle":
                    return new d();
                case "androidx.core.app.NotificationCompat$MessagingStyle":
                    return new j();
                default:
                    return null;
            }
        }

        private static k i(String str) {
            int i;
            if (str != null && (i = Build.VERSION.SDK_INT) >= 16) {
                if (str.equals(Notification.BigPictureStyle.class.getName())) {
                    return new c();
                }
                if (str.equals(Notification.BigTextStyle.class.getName())) {
                    return new d();
                }
                if (str.equals(Notification.InboxStyle.class.getName())) {
                    return new C0026i();
                }
                if (i >= 24) {
                    if (str.equals(Notification.MessagingStyle.class.getName())) {
                        return new j();
                    }
                    if (str.equals(Notification.DecoratedCustomViewStyle.class.getName())) {
                        return new g();
                    }
                }
            }
            return null;
        }

        static k j(Bundle bundle) {
            k kVarH = h(bundle.getString("androidx.core.app.extra.COMPAT_TEMPLATE"));
            if (kVarH != null) {
                return kVarH;
            }
            if (bundle.containsKey("android.selfDisplayName") || bundle.containsKey("android.messagingStyleUser")) {
                return new j();
            }
            if (bundle.containsKey("android.picture")) {
                return new c();
            }
            if (bundle.containsKey("android.bigText")) {
                return new d();
            }
            return bundle.containsKey("android.textLines") ? new C0026i() : i(bundle.getString("android.template"));
        }

        static k k(Bundle bundle) {
            k kVarJ = j(bundle);
            if (kVarJ == null) {
                return null;
            }
            try {
                kVarJ.x(bundle);
                return kVarJ;
            } catch (ClassCastException unused) {
                return null;
            }
        }

        private Bitmap m(int i, int i2, int i3) {
            return o(IconCompat.k(this.f1019a.mContext, i), i2, i3);
        }

        private Bitmap o(IconCompat iconCompat, int i, int i2) {
            Drawable drawableX = iconCompat.x(this.f1019a.mContext);
            int intrinsicWidth = i2 == 0 ? drawableX.getIntrinsicWidth() : i2;
            if (i2 == 0) {
                i2 = drawableX.getIntrinsicHeight();
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(intrinsicWidth, i2, Bitmap.Config.ARGB_8888);
            drawableX.setBounds(0, 0, intrinsicWidth, i2);
            if (i != 0) {
                drawableX.mutate().setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN));
            }
            drawableX.draw(new Canvas(bitmapCreateBitmap));
            return bitmapCreateBitmap;
        }

        private Bitmap p(int i, int i2, int i3, int i4) {
            int i5 = R.drawable.notification_icon_background;
            if (i4 == 0) {
                i4 = 0;
            }
            Bitmap bitmapM = m(i5, i4, i2);
            Canvas canvas = new Canvas(bitmapM);
            Drawable drawableMutate = this.f1019a.mContext.getResources().getDrawable(i).mutate();
            drawableMutate.setFilterBitmap(true);
            int i6 = (i2 - i3) / 2;
            int i7 = i3 + i6;
            drawableMutate.setBounds(i6, i6, i7, i7);
            drawableMutate.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_ATOP));
            drawableMutate.draw(canvas);
            return bitmapM;
        }

        public static k r(Notification notification) {
            Bundle bundleK = i.k(notification);
            if (bundleK == null) {
                return null;
            }
            return k(bundleK);
        }

        private void t(RemoteViews remoteViews) {
            remoteViews.setViewVisibility(R.id.title, 8);
            remoteViews.setViewVisibility(R.id.text2, 8);
            remoteViews.setViewVisibility(R.id.text, 8);
        }

        public void a(Bundle bundle) {
            if (this.f1020d) {
                bundle.putCharSequence("android.summaryText", this.c);
            }
            CharSequence charSequence = this.b;
            if (charSequence != null) {
                bundle.putCharSequence("android.title.big", charSequence);
            }
            String strS = s();
            if (strS != null) {
                bundle.putString("androidx.core.app.extra.COMPAT_TEMPLATE", strS);
            }
        }

        public abstract void b(androidx.core.app.h hVar);

        /* JADX WARN: Code duplicated, block: B:64:0x0186  */
        /* JADX WARN: Code duplicated, block: B:68:0x018d  */
        /* JADX WARN: Code duplicated, block: B:72:0x01af  */
        /* JADX WARN: Code duplicated, block: B:80:0x01e4  */
        /* JADX WARN: Code duplicated, block: B:81:0x01f5  */
        /* JADX WARN: Code duplicated, block: B:84:0x01fa  */
        /* JADX WARN: Code duplicated, block: B:85:0x01fc  */
        /* JADX WARN: Code duplicated, block: B:89:0x0206  */
        public RemoteViews c(boolean z, int i, boolean z2) {
            boolean z3;
            boolean z4;
            boolean z5;
            CharSequence charSequence;
            boolean z6;
            int i2;
            Resources resources = this.f1019a.mContext.getResources();
            RemoteViews remoteViews = new RemoteViews(this.f1019a.mContext.getPackageName(), i);
            boolean z7 = true;
            boolean z8 = this.f1019a.getPriority() < -1;
            int i3 = Build.VERSION.SDK_INT;
            if (i3 >= 16 && i3 < 21) {
                if (z8) {
                    remoteViews.setInt(R.id.notification_background, "setBackgroundResource", R.drawable.notification_bg_low);
                    remoteViews.setInt(R.id.icon, "setBackgroundResource", R.drawable.notification_template_icon_low_bg);
                } else {
                    remoteViews.setInt(R.id.notification_background, "setBackgroundResource", R.drawable.notification_bg);
                    remoteViews.setInt(R.id.icon, "setBackgroundResource", R.drawable.notification_template_icon_bg);
                }
            }
            f fVar = this.f1019a;
            if (fVar.mLargeIcon != null) {
                if (i3 >= 16) {
                    int i4 = R.id.icon;
                    remoteViews.setViewVisibility(i4, 0);
                    remoteViews.setImageViewBitmap(i4, this.f1019a.mLargeIcon);
                } else {
                    remoteViews.setViewVisibility(R.id.icon, 8);
                }
                if (z && this.f1019a.mNotification.icon != 0) {
                    int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.notification_right_icon_size);
                    int dimensionPixelSize2 = dimensionPixelSize - (resources.getDimensionPixelSize(R.dimen.notification_small_icon_background_padding) * 2);
                    if (i3 >= 21) {
                        f fVar2 = this.f1019a;
                        remoteViews.setImageViewBitmap(R.id.right_icon, p(fVar2.mNotification.icon, dimensionPixelSize, dimensionPixelSize2, fVar2.getColor()));
                    } else {
                        remoteViews.setImageViewBitmap(R.id.right_icon, l(this.f1019a.mNotification.icon, -1));
                    }
                    remoteViews.setViewVisibility(R.id.right_icon, 0);
                }
            } else if (z && fVar.mNotification.icon != 0) {
                int i5 = R.id.icon;
                remoteViews.setViewVisibility(i5, 0);
                if (i3 >= 21) {
                    int dimensionPixelSize3 = resources.getDimensionPixelSize(R.dimen.notification_large_icon_width) - resources.getDimensionPixelSize(R.dimen.notification_big_circle_margin);
                    int dimensionPixelSize4 = resources.getDimensionPixelSize(R.dimen.notification_small_icon_size_as_large);
                    f fVar3 = this.f1019a;
                    remoteViews.setImageViewBitmap(i5, p(fVar3.mNotification.icon, dimensionPixelSize3, dimensionPixelSize4, fVar3.getColor()));
                } else {
                    remoteViews.setImageViewBitmap(i5, l(this.f1019a.mNotification.icon, -1));
                }
            }
            CharSequence charSequence2 = this.f1019a.mContentTitle;
            if (charSequence2 != null) {
                remoteViews.setTextViewText(R.id.title, charSequence2);
            }
            CharSequence charSequence3 = this.f1019a.mContentText;
            if (charSequence3 != null) {
                remoteViews.setTextViewText(R.id.text, charSequence3);
                z3 = true;
            } else {
                z3 = false;
            }
            boolean z9 = i3 < 21 && this.f1019a.mLargeIcon != null;
            f fVar4 = this.f1019a;
            CharSequence charSequence4 = fVar4.mContentInfo;
            if (charSequence4 == null) {
                if (fVar4.mNumber > 0) {
                    if (this.f1019a.mNumber > resources.getInteger(R.integer.status_bar_notification_info_maxnum)) {
                        remoteViews.setTextViewText(R.id.info, resources.getString(R.string.status_bar_notification_info_overflow));
                    } else {
                        remoteViews.setTextViewText(R.id.info, NumberFormat.getIntegerInstance().format(this.f1019a.mNumber));
                    }
                    remoteViews.setViewVisibility(R.id.info, 0);
                } else {
                    remoteViews.setViewVisibility(R.id.info, 8);
                    z4 = z3;
                    z5 = z9;
                }
                charSequence = this.f1019a.mSubText;
                if (charSequence != null || i3 < 16) {
                    z6 = false;
                } else {
                    remoteViews.setTextViewText(R.id.text, charSequence);
                    CharSequence charSequence5 = this.f1019a.mContentText;
                    if (charSequence5 != null) {
                        int i6 = R.id.text2;
                        remoteViews.setTextViewText(i6, charSequence5);
                        remoteViews.setViewVisibility(i6, 0);
                        z6 = true;
                    } else {
                        remoteViews.setViewVisibility(R.id.text2, 8);
                        z6 = false;
                    }
                }
                if (z6 && i3 >= 16) {
                    if (z2) {
                        remoteViews.setTextViewTextSize(R.id.text, 0, resources.getDimensionPixelSize(R.dimen.notification_subtext_size));
                    }
                    remoteViews.setViewPadding(R.id.line1, 0, 0, 0, 0);
                }
                if (this.f1019a.getWhenIfShowing() != 0) {
                    z7 = z5;
                } else if (this.f1019a.mUseChronometer || i3 < 16) {
                    int i7 = R.id.time;
                    remoteViews.setViewVisibility(i7, 0);
                    remoteViews.setLong(i7, "setTime", this.f1019a.getWhenIfShowing());
                } else {
                    int i8 = R.id.chronometer;
                    remoteViews.setViewVisibility(i8, 0);
                    remoteViews.setLong(i8, "setBase", this.f1019a.getWhenIfShowing() + (SystemClock.elapsedRealtime() - System.currentTimeMillis()));
                    remoteViews.setBoolean(i8, "setStarted", true);
                    boolean z10 = this.f1019a.mChronometerCountDown;
                    if (z10 && i3 >= 24) {
                        remoteViews.setChronometerCountDown(i8, z10);
                    }
                }
                int i9 = R.id.right_side;
                if (z7) {
                    i2 = 0;
                } else {
                    i2 = 8;
                }
                remoteViews.setViewVisibility(i9, i2);
                remoteViews.setViewVisibility(R.id.line3, z4 ? 0 : 8);
                return remoteViews;
            }
            int i10 = R.id.info;
            remoteViews.setTextViewText(i10, charSequence4);
            remoteViews.setViewVisibility(i10, 0);
            z4 = true;
            z5 = true;
            charSequence = this.f1019a.mSubText;
            if (charSequence != null) {
                z6 = false;
            } else {
                z6 = false;
            }
            if (z6) {
                if (z2) {
                    remoteViews.setTextViewTextSize(R.id.text, 0, resources.getDimensionPixelSize(R.dimen.notification_subtext_size));
                }
                remoteViews.setViewPadding(R.id.line1, 0, 0, 0, 0);
            }
            if (this.f1019a.getWhenIfShowing() != 0) {
                z7 = z5;
            } else if (this.f1019a.mUseChronometer) {
                int i11 = R.id.time;
                remoteViews.setViewVisibility(i11, 0);
                remoteViews.setLong(i11, "setTime", this.f1019a.getWhenIfShowing());
            } else {
                int i12 = R.id.time;
                remoteViews.setViewVisibility(i12, 0);
                remoteViews.setLong(i12, "setTime", this.f1019a.getWhenIfShowing());
            }
            int i13 = R.id.right_side;
            if (z7) {
                i2 = 0;
            } else {
                i2 = 8;
            }
            remoteViews.setViewVisibility(i13, i2);
            remoteViews.setViewVisibility(R.id.line3, z4 ? 0 : 8);
            return remoteViews;
        }

        public void d(RemoteViews remoteViews, RemoteViews remoteViews2) {
            t(remoteViews);
            int i = R.id.notification_main_column;
            remoteViews.removeAllViews(i);
            remoteViews.addView(i, remoteViews2.clone());
            remoteViews.setViewVisibility(i, 0);
            if (Build.VERSION.SDK_INT >= 21) {
                remoteViews.setViewPadding(R.id.notification_main_column_container, 0, e(), 0, 0);
            }
        }

        protected void f(Bundle bundle) {
            bundle.remove("android.summaryText");
            bundle.remove("android.title.big");
            bundle.remove("androidx.core.app.extra.COMPAT_TEMPLATE");
        }

        public Bitmap l(int i, int i2) {
            return m(i, i2, 0);
        }

        Bitmap n(IconCompat iconCompat, int i) {
            return o(iconCompat, i, 0);
        }

        public boolean q() {
            return false;
        }

        protected String s() {
            return null;
        }

        public RemoteViews u(androidx.core.app.h hVar) {
            return null;
        }

        public RemoteViews v(androidx.core.app.h hVar) {
            return null;
        }

        public RemoteViews w(androidx.core.app.h hVar) {
            return null;
        }

        protected void x(Bundle bundle) {
            if (bundle.containsKey("android.summaryText")) {
                this.c = bundle.getCharSequence("android.summaryText");
                this.f1020d = true;
            }
            this.b = bundle.getCharSequence("android.title.big");
        }

        public void y(f fVar) {
            if (this.f1019a != fVar) {
                this.f1019a = fVar;
                if (fVar != null) {
                    fVar.setStyle(this);
                }
            }
        }
    }

    public static int A(Notification notification) {
        if (Build.VERSION.SDK_INT >= 21) {
            return notification.visibility;
        }
        return 0;
    }

    public static boolean B(Notification notification) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 20) {
            return (notification.flags & 512) != 0;
        }
        if (i >= 19) {
            return notification.extras.getBoolean("android.support.isGroupSummary");
        }
        if (i >= 16) {
            return androidx.core.app.k.g(notification).getBoolean("android.support.isGroupSummary");
        }
        return false;
    }

    public static boolean a(Notification notification) {
        if (Build.VERSION.SDK_INT >= 29) {
            return notification.getAllowSystemGeneratedContextualActions();
        }
        return false;
    }

    public static boolean b(Notification notification) {
        return (notification.flags & 16) != 0;
    }

    public static int c(Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return notification.getBadgeIconType();
        }
        return 0;
    }

    public static e d(Notification notification) {
        if (Build.VERSION.SDK_INT >= 29) {
            return e.a(notification.getBubbleMetadata());
        }
        return null;
    }

    public static String e(Notification notification) {
        if (Build.VERSION.SDK_INT >= 21) {
            return notification.category;
        }
        return null;
    }

    public static String f(Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return notification.getChannelId();
        }
        return null;
    }

    public static int g(Notification notification) {
        if (Build.VERSION.SDK_INT >= 21) {
            return notification.color;
        }
        return 0;
    }

    public static CharSequence h(Notification notification) {
        return notification.extras.getCharSequence("android.infoText");
    }

    public static CharSequence i(Notification notification) {
        return notification.extras.getCharSequence("android.text");
    }

    public static CharSequence j(Notification notification) {
        return notification.extras.getCharSequence("android.title");
    }

    public static Bundle k(Notification notification) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 19) {
            return notification.extras;
        }
        if (i >= 16) {
            return androidx.core.app.k.g(notification);
        }
        return null;
    }

    public static String l(Notification notification) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 20) {
            return notification.getGroup();
        }
        if (i >= 19) {
            return notification.extras.getString("android.support.groupKey");
        }
        if (i >= 16) {
            return androidx.core.app.k.g(notification).getString("android.support.groupKey");
        }
        return null;
    }

    static boolean m(Notification notification) {
        return (notification.flags & 128) != 0;
    }

    public static List<b> n(Notification notification) {
        Bundle bundle;
        Bundle bundle2;
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 19 && (bundle = notification.extras.getBundle("android.car.EXTENSIONS")) != null && (bundle2 = bundle.getBundle("invisible_actions")) != null) {
            for (int i = 0; i < bundle2.size(); i++) {
                arrayList.add(androidx.core.app.k.d(bundle2.getBundle(Integer.toString(i))));
            }
        }
        return arrayList;
    }

    public static boolean o(Notification notification) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 20) {
            return (notification.flags & 256) != 0;
        }
        if (i >= 19) {
            return notification.extras.getBoolean("android.support.localOnly");
        }
        if (i >= 16) {
            return androidx.core.app.k.g(notification).getBoolean("android.support.localOnly");
        }
        return false;
    }

    public static androidx.core.a.c p(Notification notification) {
        LocusId locusId;
        if (Build.VERSION.SDK_INT < 29 || (locusId = notification.getLocusId()) == null) {
            return null;
        }
        return androidx.core.a.c.c(locusId);
    }

    public static boolean q(Notification notification) {
        return (notification.flags & 2) != 0;
    }

    public static boolean r(Notification notification) {
        return (notification.flags & 8) != 0;
    }

    public static Notification s(Notification notification) {
        if (Build.VERSION.SDK_INT >= 21) {
            return notification.publicVersion;
        }
        return null;
    }

    public static CharSequence t(Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return notification.getSettingsText();
        }
        return null;
    }

    public static String u(Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return notification.getShortcutId();
        }
        return null;
    }

    public static boolean v(Notification notification) {
        return notification.extras.getBoolean("android.showWhen");
    }

    public static String w(Notification notification) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 20) {
            return notification.getSortKey();
        }
        if (i >= 19) {
            return notification.extras.getString("android.support.sortKey");
        }
        if (i >= 16) {
            return androidx.core.app.k.g(notification).getString("android.support.sortKey");
        }
        return null;
    }

    public static CharSequence x(Notification notification) {
        return notification.extras.getCharSequence("android.subText");
    }

    public static long y(Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return notification.getTimeoutAfter();
        }
        return 0L;
    }

    public static boolean z(Notification notification) {
        return notification.extras.getBoolean("android.showChronometer");
    }
}
