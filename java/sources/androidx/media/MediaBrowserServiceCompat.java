package androidx.media;

import android.annotation.SuppressLint;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.media.browse.MediaBrowser;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.service.media.MediaBrowserService;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.session.IMediaSession;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class MediaBrowserServiceCompat extends Service {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final boolean f1546h = Log.isLoggable("MBServiceCompat", 3);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private g f1547a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    f f1549e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    MediaSessionCompat.Token f1551g;
    final f b = new f("android.media.session.MediaController", -1, -1, null, null);
    final ArrayList<f> c = new ArrayList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final androidx.collection.a<IBinder, f> f1548d = new androidx.collection.a<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final r f1550f = new r();

    class a extends m<List<MediaBrowserCompat.MediaItem>> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ f f1552f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f1553g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ Bundle f1554h;
        final /* synthetic */ Bundle i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Object obj, f fVar, String str, Bundle bundle, Bundle bundle2) {
            super(obj);
            this.f1552f = fVar;
            this.f1553g = str;
            this.f1554h = bundle;
            this.i = bundle2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media.MediaBrowserServiceCompat.m
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public void d(List<MediaBrowserCompat.MediaItem> list) {
            if (MediaBrowserServiceCompat.this.f1548d.get(this.f1552f.f1560d.asBinder()) != this.f1552f) {
                if (MediaBrowserServiceCompat.f1546h) {
                    Log.d("MBServiceCompat", "Not sending onLoadChildren result for connection that has been disconnected. pkg=" + this.f1552f.f1559a + " id=" + this.f1553g);
                    return;
                }
                return;
            }
            if ((a() & 1) != 0) {
                list = MediaBrowserServiceCompat.this.b(list, this.f1554h);
            }
            try {
                this.f1552f.f1560d.a(this.f1553g, list, this.f1554h, this.i);
            } catch (RemoteException unused) {
                Log.w("MBServiceCompat", "Calling onLoadChildren() failed for id=" + this.f1553g + " package=" + this.f1552f.f1559a);
            }
        }
    }

    class b extends m<MediaBrowserCompat.MediaItem> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ ResultReceiver f1555f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(MediaBrowserServiceCompat mediaBrowserServiceCompat, Object obj, ResultReceiver resultReceiver) {
            super(obj);
            this.f1555f = resultReceiver;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media.MediaBrowserServiceCompat.m
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public void d(MediaBrowserCompat.MediaItem mediaItem) {
            if ((a() & 2) != 0) {
                this.f1555f.send(-1, null);
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putParcelable("media_item", mediaItem);
            this.f1555f.send(0, bundle);
        }
    }

    class c extends m<List<MediaBrowserCompat.MediaItem>> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ ResultReceiver f1556f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(MediaBrowserServiceCompat mediaBrowserServiceCompat, Object obj, ResultReceiver resultReceiver) {
            super(obj);
            this.f1556f = resultReceiver;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media.MediaBrowserServiceCompat.m
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public void d(List<MediaBrowserCompat.MediaItem> list) {
            if ((a() & 4) != 0 || list == null) {
                this.f1556f.send(-1, null);
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putParcelableArray("search_results", (Parcelable[]) list.toArray(new MediaBrowserCompat.MediaItem[0]));
            this.f1556f.send(0, bundle);
        }
    }

    class d extends m<Bundle> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ ResultReceiver f1557f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(MediaBrowserServiceCompat mediaBrowserServiceCompat, Object obj, ResultReceiver resultReceiver) {
            super(obj);
            this.f1557f = resultReceiver;
        }

        @Override // androidx.media.MediaBrowserServiceCompat.m
        void c(Bundle bundle) {
            this.f1557f.send(-1, bundle);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media.MediaBrowserServiceCompat.m
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public void d(Bundle bundle) {
            this.f1557f.send(0, bundle);
        }
    }

    public static final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f1558a;
        private final Bundle b;

        public e(String str, Bundle bundle) {
            if (str == null) {
                throw new IllegalArgumentException("The root id in BrowserRoot cannot be null. Use null for BrowserRoot instead");
            }
            this.f1558a = str;
            this.b = bundle;
        }

        public Bundle c() {
            return this.b;
        }

        public String d() {
            return this.f1558a;
        }
    }

    private class f implements IBinder.DeathRecipient {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f1559a;
        public final int b;
        public final int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final p f1560d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final HashMap<String, List<androidx.core.util.d<IBinder, Bundle>>> f1561e = new HashMap<>();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public e f1562f;

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                f fVar = f.this;
                MediaBrowserServiceCompat.this.f1548d.remove(fVar.f1560d.asBinder());
            }
        }

        f(String str, int i, int i2, Bundle bundle, p pVar) {
            this.f1559a = str;
            this.b = i;
            this.c = i2;
            new androidx.media.b(str, i, i2);
            this.f1560d = pVar;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            MediaBrowserServiceCompat.this.f1550f.post(new a());
        }
    }

    interface g {
        void a();

        IBinder b(Intent intent);
    }

    class h implements g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final List<Bundle> f1565a = new ArrayList();
        MediaBrowserService b;
        Messenger c;

        class a extends m<List<MediaBrowserCompat.MediaItem>> {

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ n f1567f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(h hVar, Object obj, n nVar) {
                super(obj);
                this.f1567f = nVar;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.media.MediaBrowserServiceCompat.m
            /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
            public void d(List<MediaBrowserCompat.MediaItem> list) {
                ArrayList arrayList;
                if (list != null) {
                    arrayList = new ArrayList();
                    for (MediaBrowserCompat.MediaItem mediaItem : list) {
                        Parcel parcelObtain = Parcel.obtain();
                        mediaItem.writeToParcel(parcelObtain, 0);
                        arrayList.add(parcelObtain);
                    }
                } else {
                    arrayList = null;
                }
                this.f1567f.b(arrayList);
            }
        }

        class b extends MediaBrowserService {
            b(Context context) {
                attachBaseContext(context);
            }

            @Override // android.service.media.MediaBrowserService
            @SuppressLint({"SyntheticAccessor"})
            public MediaBrowserService.BrowserRoot onGetRoot(String str, int i, Bundle bundle) {
                MediaSessionCompat.ensureClassLoader(bundle);
                e eVarC = h.this.c(str, i, bundle == null ? null : new Bundle(bundle));
                if (eVarC == null) {
                    return null;
                }
                return new MediaBrowserService.BrowserRoot(eVarC.f1558a, eVarC.b);
            }

            @Override // android.service.media.MediaBrowserService
            public void onLoadChildren(String str, MediaBrowserService.Result<List<MediaBrowser.MediaItem>> result) {
                h.this.d(str, new n<>(result));
            }
        }

        h() {
        }

        @Override // androidx.media.MediaBrowserServiceCompat.g
        public void a() {
            b bVar = new b(MediaBrowserServiceCompat.this);
            this.b = bVar;
            bVar.onCreate();
        }

        @Override // androidx.media.MediaBrowserServiceCompat.g
        public IBinder b(Intent intent) {
            return this.b.onBind(intent);
        }

        public e c(String str, int i, Bundle bundle) {
            Bundle bundleC;
            int i2;
            if (bundle == null || bundle.getInt("extra_client_version", 0) == 0) {
                bundleC = null;
                i2 = -1;
            } else {
                bundle.remove("extra_client_version");
                this.c = new Messenger(MediaBrowserServiceCompat.this.f1550f);
                bundleC = new Bundle();
                bundleC.putInt("extra_service_version", 2);
                androidx.core.app.e.b(bundleC, "extra_messenger", this.c.getBinder());
                MediaSessionCompat.Token token = MediaBrowserServiceCompat.this.f1551g;
                if (token != null) {
                    IMediaSession extraBinder = token.getExtraBinder();
                    androidx.core.app.e.b(bundleC, "extra_session_binder", extraBinder == null ? null : extraBinder.asBinder());
                } else {
                    this.f1565a.add(bundleC);
                }
                int i3 = bundle.getInt("extra_calling_pid", -1);
                bundle.remove("extra_calling_pid");
                i2 = i3;
            }
            f fVar = MediaBrowserServiceCompat.this.new f(str, i2, i, bundle, null);
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            mediaBrowserServiceCompat.f1549e = fVar;
            e eVarE = mediaBrowserServiceCompat.e(str, i, bundle);
            MediaBrowserServiceCompat mediaBrowserServiceCompat2 = MediaBrowserServiceCompat.this;
            mediaBrowserServiceCompat2.f1549e = null;
            if (eVarE == null) {
                return null;
            }
            if (this.c != null) {
                mediaBrowserServiceCompat2.c.add(fVar);
            }
            if (bundleC == null) {
                bundleC = eVarE.c();
            } else if (eVarE.c() != null) {
                bundleC.putAll(eVarE.c());
            }
            return new e(eVarE.d(), bundleC);
        }

        public void d(String str, n<List<Parcel>> nVar) {
            a aVar = new a(this, str, nVar);
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            mediaBrowserServiceCompat.f1549e = mediaBrowserServiceCompat.b;
            mediaBrowserServiceCompat.f(str, aVar);
            MediaBrowserServiceCompat.this.f1549e = null;
        }
    }

    class i extends h {

        class a extends m<MediaBrowserCompat.MediaItem> {

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ n f1570f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(i iVar, Object obj, n nVar) {
                super(obj);
                this.f1570f = nVar;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.media.MediaBrowserServiceCompat.m
            /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
            public void d(MediaBrowserCompat.MediaItem mediaItem) {
                if (mediaItem == null) {
                    this.f1570f.b(null);
                    return;
                }
                Parcel parcelObtain = Parcel.obtain();
                mediaItem.writeToParcel(parcelObtain, 0);
                this.f1570f.b(parcelObtain);
            }
        }

        class b extends h.b {
            b(Context context) {
                super(context);
            }

            @Override // android.service.media.MediaBrowserService
            public void onLoadItem(String str, MediaBrowserService.Result<MediaBrowser.MediaItem> result) {
                i.this.e(str, new n<>(result));
            }
        }

        i() {
            super();
        }

        @Override // androidx.media.MediaBrowserServiceCompat.h, androidx.media.MediaBrowserServiceCompat.g
        public void a() {
            b bVar = new b(MediaBrowserServiceCompat.this);
            this.b = bVar;
            bVar.onCreate();
        }

        public void e(String str, n<Parcel> nVar) {
            a aVar = new a(this, str, nVar);
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            mediaBrowserServiceCompat.f1549e = mediaBrowserServiceCompat.b;
            mediaBrowserServiceCompat.h(str, aVar);
            MediaBrowserServiceCompat.this.f1549e = null;
        }
    }

    class j extends i {

        class a extends m<List<MediaBrowserCompat.MediaItem>> {

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ n f1572f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            final /* synthetic */ Bundle f1573g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(Object obj, n nVar, Bundle bundle) {
                super(obj);
                this.f1572f = nVar;
                this.f1573g = bundle;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.media.MediaBrowserServiceCompat.m
            /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
            public void d(List<MediaBrowserCompat.MediaItem> list) {
                if (list == null) {
                    this.f1572f.b(null);
                    return;
                }
                if ((a() & 1) != 0) {
                    list = MediaBrowserServiceCompat.this.b(list, this.f1573g);
                }
                ArrayList arrayList = new ArrayList();
                for (MediaBrowserCompat.MediaItem mediaItem : list) {
                    Parcel parcelObtain = Parcel.obtain();
                    mediaItem.writeToParcel(parcelObtain, 0);
                    arrayList.add(parcelObtain);
                }
                this.f1572f.b(arrayList);
            }
        }

        class b extends i.b {
            b(Context context) {
                super(context);
            }

            @Override // android.service.media.MediaBrowserService
            public void onLoadChildren(String str, MediaBrowserService.Result<List<MediaBrowser.MediaItem>> result, Bundle bundle) {
                MediaSessionCompat.ensureClassLoader(bundle);
                j jVar = j.this;
                MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
                mediaBrowserServiceCompat.f1549e = mediaBrowserServiceCompat.b;
                jVar.f(str, new n<>(result), bundle);
                MediaBrowserServiceCompat.this.f1549e = null;
            }
        }

        j() {
            super();
        }

        @Override // androidx.media.MediaBrowserServiceCompat.i, androidx.media.MediaBrowserServiceCompat.h, androidx.media.MediaBrowserServiceCompat.g
        public void a() {
            b bVar = new b(MediaBrowserServiceCompat.this);
            this.b = bVar;
            bVar.onCreate();
        }

        public void f(String str, n<List<Parcel>> nVar, Bundle bundle) {
            a aVar = new a(str, nVar, bundle);
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            mediaBrowserServiceCompat.f1549e = mediaBrowserServiceCompat.b;
            mediaBrowserServiceCompat.g(str, aVar, bundle);
            MediaBrowserServiceCompat.this.f1549e = null;
        }
    }

    class k extends j {
        k(MediaBrowserServiceCompat mediaBrowserServiceCompat) {
            super();
        }
    }

    class l implements g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Messenger f1575a;

        l() {
        }

        @Override // androidx.media.MediaBrowserServiceCompat.g
        public void a() {
            this.f1575a = new Messenger(MediaBrowserServiceCompat.this.f1550f);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.g
        public IBinder b(Intent intent) {
            if ("android.media.browse.MediaBrowserService".equals(intent.getAction())) {
                return this.f1575a.getBinder();
            }
            return null;
        }
    }

    public static class m<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object f1576a;
        private boolean b;
        private boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f1577d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f1578e;

        m(Object obj) {
            this.f1576a = obj;
        }

        int a() {
            return this.f1578e;
        }

        boolean b() {
            return this.b || this.c || this.f1577d;
        }

        void c(Bundle bundle) {
            throw new UnsupportedOperationException("It is not supported to send an error for " + this.f1576a);
        }

        void d(T t) {
            throw null;
        }

        public void e(Bundle bundle) {
            if (!this.c && !this.f1577d) {
                this.f1577d = true;
                c(bundle);
            } else {
                throw new IllegalStateException("sendError() called when either sendResult() or sendError() had already been called for: " + this.f1576a);
            }
        }

        public void f(T t) {
            if (!this.c && !this.f1577d) {
                this.c = true;
                d(t);
            } else {
                throw new IllegalStateException("sendResult() called when either sendResult() or sendError() had already been called for: " + this.f1576a);
            }
        }

        void g(int i) {
            this.f1578e = i;
        }
    }

    static class n<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        MediaBrowserService.Result f1579a;

        n(MediaBrowserService.Result result) {
            this.f1579a = result;
        }

        List<MediaBrowser.MediaItem> a(List<Parcel> list) {
            if (list == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (Parcel parcel : list) {
                parcel.setDataPosition(0);
                arrayList.add((MediaBrowser.MediaItem) MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel));
                parcel.recycle();
            }
            return arrayList;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void b(T t) {
            if (t instanceof List) {
                this.f1579a.sendResult(a((List) t));
                return;
            }
            if (!(t instanceof Parcel)) {
                this.f1579a.sendResult(null);
                return;
            }
            Parcel parcel = (Parcel) t;
            parcel.setDataPosition(0);
            this.f1579a.sendResult(MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel));
            parcel.recycle();
        }
    }

    private class o {

        class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ p f1581a;
            final /* synthetic */ String b;
            final /* synthetic */ int c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ int f1582d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ Bundle f1583e;

            a(p pVar, String str, int i, int i2, Bundle bundle) {
                this.f1581a = pVar;
                this.b = str;
                this.c = i;
                this.f1582d = i2;
                this.f1583e = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                IBinder iBinderAsBinder = this.f1581a.asBinder();
                MediaBrowserServiceCompat.this.f1548d.remove(iBinderAsBinder);
                f fVar = MediaBrowserServiceCompat.this.new f(this.b, this.c, this.f1582d, this.f1583e, this.f1581a);
                MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
                mediaBrowserServiceCompat.f1549e = fVar;
                e eVarE = mediaBrowserServiceCompat.e(this.b, this.f1582d, this.f1583e);
                fVar.f1562f = eVarE;
                MediaBrowserServiceCompat mediaBrowserServiceCompat2 = MediaBrowserServiceCompat.this;
                mediaBrowserServiceCompat2.f1549e = null;
                if (eVarE != null) {
                    try {
                        mediaBrowserServiceCompat2.f1548d.put(iBinderAsBinder, fVar);
                        iBinderAsBinder.linkToDeath(fVar, 0);
                        if (MediaBrowserServiceCompat.this.f1551g != null) {
                            this.f1581a.c(fVar.f1562f.d(), MediaBrowserServiceCompat.this.f1551g, fVar.f1562f.c());
                            return;
                        }
                        return;
                    } catch (RemoteException unused) {
                        Log.w("MBServiceCompat", "Calling onConnect() failed. Dropping client. pkg=" + this.b);
                        MediaBrowserServiceCompat.this.f1548d.remove(iBinderAsBinder);
                        return;
                    }
                }
                Log.i("MBServiceCompat", "No root for client " + this.b + " from service " + a.class.getName());
                try {
                    this.f1581a.b();
                } catch (RemoteException unused2) {
                    Log.w("MBServiceCompat", "Calling onConnectFailed() failed. Ignoring. pkg=" + this.b);
                }
            }
        }

        class b implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ p f1585a;

            b(p pVar) {
                this.f1585a = pVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                f fVarRemove = MediaBrowserServiceCompat.this.f1548d.remove(this.f1585a.asBinder());
                if (fVarRemove != null) {
                    fVarRemove.f1560d.asBinder().unlinkToDeath(fVarRemove, 0);
                }
            }
        }

        class c implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ p f1586a;
            final /* synthetic */ String b;
            final /* synthetic */ IBinder c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ Bundle f1587d;

            c(p pVar, String str, IBinder iBinder, Bundle bundle) {
                this.f1586a = pVar;
                this.b = str;
                this.c = iBinder;
                this.f1587d = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                f fVar = MediaBrowserServiceCompat.this.f1548d.get(this.f1586a.asBinder());
                if (fVar != null) {
                    MediaBrowserServiceCompat.this.a(this.b, fVar, this.c, this.f1587d);
                    return;
                }
                Log.w("MBServiceCompat", "addSubscription for callback that isn't registered id=" + this.b);
            }
        }

        class d implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ p f1589a;
            final /* synthetic */ String b;
            final /* synthetic */ IBinder c;

            d(p pVar, String str, IBinder iBinder) {
                this.f1589a = pVar;
                this.b = str;
                this.c = iBinder;
            }

            @Override // java.lang.Runnable
            public void run() {
                f fVar = MediaBrowserServiceCompat.this.f1548d.get(this.f1589a.asBinder());
                if (fVar == null) {
                    Log.w("MBServiceCompat", "removeSubscription for callback that isn't registered id=" + this.b);
                    return;
                }
                if (MediaBrowserServiceCompat.this.p(this.b, fVar, this.c)) {
                    return;
                }
                Log.w("MBServiceCompat", "removeSubscription called for " + this.b + " which is not subscribed");
            }
        }

        class e implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ p f1591a;
            final /* synthetic */ String b;
            final /* synthetic */ ResultReceiver c;

            e(p pVar, String str, ResultReceiver resultReceiver) {
                this.f1591a = pVar;
                this.b = str;
                this.c = resultReceiver;
            }

            @Override // java.lang.Runnable
            public void run() {
                f fVar = MediaBrowserServiceCompat.this.f1548d.get(this.f1591a.asBinder());
                if (fVar != null) {
                    MediaBrowserServiceCompat.this.n(this.b, fVar, this.c);
                    return;
                }
                Log.w("MBServiceCompat", "getMediaItem for callback that isn't registered id=" + this.b);
            }
        }

        class f implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ p f1593a;
            final /* synthetic */ int b;
            final /* synthetic */ String c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ int f1594d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ Bundle f1595e;

            f(p pVar, int i, String str, int i2, Bundle bundle) {
                this.f1593a = pVar;
                this.b = i;
                this.c = str;
                this.f1594d = i2;
                this.f1595e = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                IBinder iBinderAsBinder = this.f1593a.asBinder();
                MediaBrowserServiceCompat.this.f1548d.remove(iBinderAsBinder);
                Iterator<f> it = MediaBrowserServiceCompat.this.c.iterator();
                f fVar = null;
                while (it.hasNext()) {
                    f next = it.next();
                    if (next.c == this.b) {
                        if (TextUtils.isEmpty(this.c) || this.f1594d <= 0) {
                            fVar = MediaBrowserServiceCompat.this.new f(next.f1559a, next.b, next.c, this.f1595e, this.f1593a);
                        }
                        it.remove();
                    }
                }
                if (fVar == null) {
                    fVar = MediaBrowserServiceCompat.this.new f(this.c, this.f1594d, this.b, this.f1595e, this.f1593a);
                }
                MediaBrowserServiceCompat.this.f1548d.put(iBinderAsBinder, fVar);
                try {
                    iBinderAsBinder.linkToDeath(fVar, 0);
                } catch (RemoteException unused) {
                    Log.w("MBServiceCompat", "IBinder is already dead.");
                }
            }
        }

        class g implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ p f1597a;

            g(p pVar) {
                this.f1597a = pVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                IBinder iBinderAsBinder = this.f1597a.asBinder();
                f fVarRemove = MediaBrowserServiceCompat.this.f1548d.remove(iBinderAsBinder);
                if (fVarRemove != null) {
                    iBinderAsBinder.unlinkToDeath(fVarRemove, 0);
                }
            }
        }

        class h implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ p f1598a;
            final /* synthetic */ String b;
            final /* synthetic */ Bundle c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ ResultReceiver f1599d;

            h(p pVar, String str, Bundle bundle, ResultReceiver resultReceiver) {
                this.f1598a = pVar;
                this.b = str;
                this.c = bundle;
                this.f1599d = resultReceiver;
            }

            @Override // java.lang.Runnable
            public void run() {
                f fVar = MediaBrowserServiceCompat.this.f1548d.get(this.f1598a.asBinder());
                if (fVar != null) {
                    MediaBrowserServiceCompat.this.o(this.b, this.c, fVar, this.f1599d);
                    return;
                }
                Log.w("MBServiceCompat", "search for callback that isn't registered query=" + this.b);
            }
        }

        class i implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ p f1601a;
            final /* synthetic */ String b;
            final /* synthetic */ Bundle c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ ResultReceiver f1602d;

            i(p pVar, String str, Bundle bundle, ResultReceiver resultReceiver) {
                this.f1601a = pVar;
                this.b = str;
                this.c = bundle;
                this.f1602d = resultReceiver;
            }

            @Override // java.lang.Runnable
            public void run() {
                f fVar = MediaBrowserServiceCompat.this.f1548d.get(this.f1601a.asBinder());
                if (fVar != null) {
                    MediaBrowserServiceCompat.this.l(this.b, this.c, fVar, this.f1602d);
                    return;
                }
                Log.w("MBServiceCompat", "sendCustomAction for callback that isn't registered action=" + this.b + ", extras=" + this.c);
            }
        }

        o() {
        }

        public void a(String str, IBinder iBinder, Bundle bundle, p pVar) {
            MediaBrowserServiceCompat.this.f1550f.a(new c(pVar, str, iBinder, bundle));
        }

        public void b(String str, int i2, int i3, Bundle bundle, p pVar) {
            if (MediaBrowserServiceCompat.this.c(str, i3)) {
                MediaBrowserServiceCompat.this.f1550f.a(new a(pVar, str, i2, i3, bundle));
                return;
            }
            throw new IllegalArgumentException("Package/uid mismatch: uid=" + i3 + " package=" + str);
        }

        public void c(p pVar) {
            MediaBrowserServiceCompat.this.f1550f.a(new b(pVar));
        }

        public void d(String str, ResultReceiver resultReceiver, p pVar) {
            if (TextUtils.isEmpty(str) || resultReceiver == null) {
                return;
            }
            MediaBrowserServiceCompat.this.f1550f.a(new e(pVar, str, resultReceiver));
        }

        public void e(p pVar, String str, int i2, int i3, Bundle bundle) {
            MediaBrowserServiceCompat.this.f1550f.a(new f(pVar, i3, str, i2, bundle));
        }

        public void f(String str, IBinder iBinder, p pVar) {
            MediaBrowserServiceCompat.this.f1550f.a(new d(pVar, str, iBinder));
        }

        public void g(String str, Bundle bundle, ResultReceiver resultReceiver, p pVar) {
            if (TextUtils.isEmpty(str) || resultReceiver == null) {
                return;
            }
            MediaBrowserServiceCompat.this.f1550f.a(new h(pVar, str, bundle, resultReceiver));
        }

        public void h(String str, Bundle bundle, ResultReceiver resultReceiver, p pVar) {
            if (TextUtils.isEmpty(str) || resultReceiver == null) {
                return;
            }
            MediaBrowserServiceCompat.this.f1550f.a(new i(pVar, str, bundle, resultReceiver));
        }

        public void i(p pVar) {
            MediaBrowserServiceCompat.this.f1550f.a(new g(pVar));
        }
    }

    private interface p {
        void a(String str, List<MediaBrowserCompat.MediaItem> list, Bundle bundle, Bundle bundle2) throws RemoteException;

        IBinder asBinder();

        void b() throws RemoteException;

        void c(String str, MediaSessionCompat.Token token, Bundle bundle) throws RemoteException;
    }

    private static class q implements p {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Messenger f1604a;

        q(Messenger messenger) {
            this.f1604a = messenger;
        }

        private void d(int i, Bundle bundle) throws RemoteException {
            Message messageObtain = Message.obtain();
            messageObtain.what = i;
            messageObtain.arg1 = 2;
            messageObtain.setData(bundle);
            this.f1604a.send(messageObtain);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.p
        public void a(String str, List<MediaBrowserCompat.MediaItem> list, Bundle bundle, Bundle bundle2) throws RemoteException {
            Bundle bundle3 = new Bundle();
            bundle3.putString("data_media_item_id", str);
            bundle3.putBundle("data_options", bundle);
            bundle3.putBundle("data_notify_children_changed_options", bundle2);
            if (list != null) {
                bundle3.putParcelableArrayList("data_media_item_list", list instanceof ArrayList ? (ArrayList) list : new ArrayList<>(list));
            }
            d(3, bundle3);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.p
        public IBinder asBinder() {
            return this.f1604a.getBinder();
        }

        @Override // androidx.media.MediaBrowserServiceCompat.p
        public void b() throws RemoteException {
            d(2, null);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.p
        public void c(String str, MediaSessionCompat.Token token, Bundle bundle) throws RemoteException {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putInt("extra_service_version", 2);
            Bundle bundle2 = new Bundle();
            bundle2.putString("data_media_item_id", str);
            bundle2.putParcelable("data_media_session_token", token);
            bundle2.putBundle("data_root_hints", bundle);
            d(1, bundle2);
        }
    }

    private final class r extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final o f1605a;

        r() {
            this.f1605a = MediaBrowserServiceCompat.this.new o();
        }

        public void a(Runnable runnable) {
            if (Thread.currentThread() == getLooper().getThread()) {
                runnable.run();
            } else {
                post(runnable);
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Bundle data = message.getData();
            switch (message.what) {
                case 1:
                    Bundle bundle = data.getBundle("data_root_hints");
                    MediaSessionCompat.ensureClassLoader(bundle);
                    this.f1605a.b(data.getString("data_package_name"), data.getInt("data_calling_pid"), data.getInt("data_calling_uid"), bundle, new q(message.replyTo));
                    break;
                case 2:
                    this.f1605a.c(new q(message.replyTo));
                    break;
                case 3:
                    Bundle bundle2 = data.getBundle("data_options");
                    MediaSessionCompat.ensureClassLoader(bundle2);
                    this.f1605a.a(data.getString("data_media_item_id"), androidx.core.app.e.a(data, "data_callback_token"), bundle2, new q(message.replyTo));
                    break;
                case 4:
                    this.f1605a.f(data.getString("data_media_item_id"), androidx.core.app.e.a(data, "data_callback_token"), new q(message.replyTo));
                    break;
                case 5:
                    this.f1605a.d(data.getString("data_media_item_id"), (ResultReceiver) data.getParcelable("data_result_receiver"), new q(message.replyTo));
                    break;
                case 6:
                    Bundle bundle3 = data.getBundle("data_root_hints");
                    MediaSessionCompat.ensureClassLoader(bundle3);
                    this.f1605a.e(new q(message.replyTo), data.getString("data_package_name"), data.getInt("data_calling_pid"), data.getInt("data_calling_uid"), bundle3);
                    break;
                case 7:
                    this.f1605a.i(new q(message.replyTo));
                    break;
                case 8:
                    Bundle bundle4 = data.getBundle("data_search_extras");
                    MediaSessionCompat.ensureClassLoader(bundle4);
                    this.f1605a.g(data.getString("data_search_query"), bundle4, (ResultReceiver) data.getParcelable("data_result_receiver"), new q(message.replyTo));
                    break;
                case 9:
                    Bundle bundle5 = data.getBundle("data_custom_action_extras");
                    MediaSessionCompat.ensureClassLoader(bundle5);
                    this.f1605a.h(data.getString("data_custom_action"), bundle5, (ResultReceiver) data.getParcelable("data_result_receiver"), new q(message.replyTo));
                    break;
                default:
                    Log.w("MBServiceCompat", "Unhandled message: " + message + "\n  Service version: 2\n  Client version: " + message.arg1);
                    break;
            }
        }

        @Override // android.os.Handler
        public boolean sendMessageAtTime(Message message, long j) {
            Bundle data = message.getData();
            data.setClassLoader(MediaBrowserCompat.class.getClassLoader());
            data.putInt("data_calling_uid", Binder.getCallingUid());
            int callingPid = Binder.getCallingPid();
            if (callingPid > 0) {
                data.putInt("data_calling_pid", callingPid);
            } else if (!data.containsKey("data_calling_pid")) {
                data.putInt("data_calling_pid", -1);
            }
            return super.sendMessageAtTime(message, j);
        }
    }

    void a(String str, f fVar, IBinder iBinder, Bundle bundle) {
        List<androidx.core.util.d<IBinder, Bundle>> arrayList = fVar.f1561e.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        for (androidx.core.util.d<IBinder, Bundle> dVar : arrayList) {
            if (iBinder == dVar.f1148a && androidx.media.a.a(bundle, dVar.b)) {
                return;
            }
        }
        arrayList.add(new androidx.core.util.d<>(iBinder, bundle));
        fVar.f1561e.put(str, arrayList);
        m(str, fVar, bundle, null);
        j(str, bundle);
    }

    List<MediaBrowserCompat.MediaItem> b(List<MediaBrowserCompat.MediaItem> list, Bundle bundle) {
        if (list == null) {
            return null;
        }
        int i2 = bundle.getInt(MediaBrowserCompat.EXTRA_PAGE, -1);
        int i3 = bundle.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1);
        if (i2 == -1 && i3 == -1) {
            return list;
        }
        int i4 = i3 * i2;
        int size = i4 + i3;
        if (i2 < 0 || i3 < 1 || i4 >= list.size()) {
            return Collections.emptyList();
        }
        if (size > list.size()) {
            size = list.size();
        }
        return list.subList(i4, size);
    }

    boolean c(String str, int i2) {
        if (str == null) {
            return false;
        }
        for (String str2 : getPackageManager().getPackagesForUid(i2)) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public void d(String str, Bundle bundle, m<Bundle> mVar) {
        mVar.e(null);
    }

    @Override // android.app.Service
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public abstract e e(String str, int i2, Bundle bundle);

    public abstract void f(String str, m<List<MediaBrowserCompat.MediaItem>> mVar);

    public void g(String str, m<List<MediaBrowserCompat.MediaItem>> mVar, Bundle bundle) {
        mVar.g(1);
        f(str, mVar);
    }

    public void h(String str, m<MediaBrowserCompat.MediaItem> mVar) {
        mVar.g(2);
        mVar.f(null);
    }

    public void i(String str, Bundle bundle, m<List<MediaBrowserCompat.MediaItem>> mVar) {
        mVar.g(4);
        mVar.f(null);
    }

    public void j(String str, Bundle bundle) {
    }

    public void k(String str) {
    }

    void l(String str, Bundle bundle, f fVar, ResultReceiver resultReceiver) {
        d dVar = new d(this, str, resultReceiver);
        d(str, bundle, dVar);
        if (dVar.b()) {
            return;
        }
        throw new IllegalStateException("onCustomAction must call detach() or sendResult() or sendError() before returning for action=" + str + " extras=" + bundle);
    }

    void m(String str, f fVar, Bundle bundle, Bundle bundle2) {
        a aVar = new a(str, fVar, str, bundle, bundle2);
        if (bundle == null) {
            f(str, aVar);
        } else {
            g(str, aVar, bundle);
        }
        if (aVar.b()) {
            return;
        }
        throw new IllegalStateException("onLoadChildren must call detach() or sendResult() before returning for package=" + fVar.f1559a + " id=" + str);
    }

    void n(String str, f fVar, ResultReceiver resultReceiver) {
        b bVar = new b(this, str, resultReceiver);
        h(str, bVar);
        if (bVar.b()) {
            return;
        }
        throw new IllegalStateException("onLoadItem must call detach() or sendResult() before returning for id=" + str);
    }

    void o(String str, Bundle bundle, f fVar, ResultReceiver resultReceiver) {
        c cVar = new c(this, str, resultReceiver);
        i(str, bundle, cVar);
        if (cVar.b()) {
            return;
        }
        throw new IllegalStateException("onSearch must call detach() or sendResult() before returning for query=" + str);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f1547a.b(intent);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            this.f1547a = new k(this);
        } else if (i2 >= 26) {
            this.f1547a = new j();
        } else if (i2 >= 23) {
            this.f1547a = new i();
        } else if (i2 >= 21) {
            this.f1547a = new h();
        } else {
            this.f1547a = new l();
        }
        this.f1547a.a();
    }

    boolean p(String str, f fVar, IBinder iBinder) {
        boolean z = false;
        try {
            if (iBinder == null) {
                boolean z2 = fVar.f1561e.remove(str) != null;
                k(str);
                return z2;
            }
            List<androidx.core.util.d<IBinder, Bundle>> list = fVar.f1561e.get(str);
            if (list != null) {
                Iterator<androidx.core.util.d<IBinder, Bundle>> it = list.iterator();
                while (it.hasNext()) {
                    if (iBinder == it.next().f1148a) {
                        it.remove();
                        z = true;
                    }
                }
                if (list.size() == 0) {
                    fVar.f1561e.remove(str);
                }
            }
            k(str);
            return z;
        } catch (Throwable th) {
            k(str);
            throw th;
        }
    }
}
