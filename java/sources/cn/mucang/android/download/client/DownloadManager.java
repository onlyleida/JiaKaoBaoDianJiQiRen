package cn.mucang.android.download.client;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.i0;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.download.DownloadEntity;
import cn.mucang.android.download.DownloadProgress;
import cn.mucang.android.download.DownloadStatusChange;
import cn.mucang.android.download.service.DownloadMonitorService;
import cn.mucang.android.download.service.DownloadService;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class DownloadManager {
    static final int[] c = {1, 2, 4, 8, 16, 32, 64, 128, 256, 512};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f2947a;
    private final List<cn.mucang.android.download.client.b> b;

    public static class Request implements Parcelable {
        public static final Parcelable.Creator<Request> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f2948a;
        public String b;
        public List<Header> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f2949d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f2950e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public String f2951f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public String f2952g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f2953h;

        public static class Header implements Parcelable {
            public static final Parcelable.Creator<Header> CREATOR = new a();

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f2954a;
            public String b;

            class a implements Parcelable.Creator<Header> {
                a() {
                }

                @Override // android.os.Parcelable.Creator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public Header createFromParcel(Parcel parcel) {
                    return new Header(parcel, null);
                }

                @Override // android.os.Parcelable.Creator
                /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
                public Header[] newArray(int i) {
                    return new Header[i];
                }
            }

            /* synthetic */ Header(Parcel parcel, a aVar) {
                this(parcel);
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeString(this.f2954a);
                parcel.writeString(this.b);
            }

            private Header(Parcel parcel) {
                this.f2954a = parcel.readString();
                this.b = parcel.readString();
            }
        }

        class a implements Parcelable.Creator<Request> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Request createFromParcel(Parcel parcel) {
                return new Request(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public Request[] newArray(int i) {
                return new Request[i];
            }
        }

        /* synthetic */ Request(Parcel parcel, a aVar) {
            this(parcel);
        }

        public Request a(int i) {
            this.f2949d = i;
            return this;
        }

        public Request b(String str) {
            this.f2950e = str;
            return this;
        }

        public Request c(boolean z) {
            this.f2953h = z;
            return this;
        }

        public Request d(File file) {
            this.f2952g = file.getAbsolutePath();
            return this;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public Request e(String str) {
            this.b = str;
            return this;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f2948a);
            parcel.writeString(this.b);
            parcel.writeTypedList(this.c);
            parcel.writeInt(this.f2949d);
            parcel.writeString(this.f2950e);
            parcel.writeString(this.f2951f);
            parcel.writeString(this.f2952g);
        }

        public Request(String str) {
            this.c = new ArrayList();
            this.f2949d = 7;
            this.f2948a = str;
            this.c = new ArrayList();
        }

        private Request(Parcel parcel) {
            this.c = new ArrayList();
            this.f2949d = 7;
            this.f2948a = parcel.readString();
            this.b = parcel.readString();
            parcel.readTypedList(this.c, Header.CREATOR);
            this.f2949d = parcel.readInt();
            this.f2950e = parcel.readString();
            this.f2951f = parcel.readString();
            this.f2952g = parcel.readString();
        }
    }

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Request f2955a;
        final /* synthetic */ cn.mucang.android.download.client.c b;

        a(Request request, cn.mucang.android.download.client.c cVar) {
            this.f2955a = request;
            this.b = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadEntity downloadEntityF = DownloadManager.this.f(this.f2955a);
            if (downloadEntityF == null) {
                DownloadManager.this.u(this.b, null);
                return;
            }
            DownloadManager.this.u(this.b, downloadEntityF.getId());
            if (downloadEntityF.isNotification()) {
                cn.mucang.android.download.notification.a.j().f(downloadEntityF);
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ cn.mucang.android.download.client.c f2956a;
        final /* synthetic */ f b;

        b(cn.mucang.android.download.client.c cVar, f fVar) {
            this.f2956a = cVar;
            this.b = fVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadManager downloadManager = DownloadManager.this;
            downloadManager.u(this.f2956a, downloadManager.q(this.b));
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ cn.mucang.android.download.client.c f2957a;
        final /* synthetic */ long b;

        c(cn.mucang.android.download.client.c cVar, long j) {
            this.f2957a = cVar;
            this.b = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadManager downloadManager = DownloadManager.this;
            downloadManager.u(this.f2957a, downloadManager.p(this.b));
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ cn.mucang.android.download.client.c f2958a;
        final /* synthetic */ Object b;

        d(DownloadManager downloadManager, cn.mucang.android.download.client.c cVar, Object obj) {
            this.f2958a = cVar;
            this.b = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f2958a.a(this.b);
            } catch (Exception e2) {
                t.c("Exception", e2);
            }
        }
    }

    private static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static DownloadManager f2959a = new DownloadManager(null);
    }

    public static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        long[] f2960a;
        int b;
        String c;

        public f a(long... jArr) {
            this.f2960a = jArr;
            return this;
        }

        public f b(int i) {
            this.b = i;
            return this;
        }
    }

    /* synthetic */ DownloadManager(a aVar) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DownloadEntity f(Request request) {
        try {
            DownloadEntity downloadEntityCreateFromRequest = DownloadEntity.createFromRequest(request);
            if (TextUtils.isEmpty(downloadEntityCreateFromRequest.getStorePath())) {
                downloadEntityCreateFromRequest.setStorePath(d(request.f2948a));
            }
            cn.mucang.android.download.a.G().u(downloadEntityCreateFromRequest);
            Log.d("DownloadManager", "enqueue inserted entity " + System.currentTimeMillis());
            long jLongValue = downloadEntityCreateFromRequest.getId().longValue();
            Intent intent = new Intent(this.f2947a, (Class<?>) DownloadService.class);
            intent.setAction("ACTION_ENQUEUE");
            intent.putExtra("PARAM_TASK_ID", jLongValue);
            i0.a(this.f2947a, intent);
            Log.d("DownloadManager", "enqueue finished, returning " + System.currentTimeMillis());
            return downloadEntityCreateFromRequest;
        } catch (Exception e2) {
            t.c("Exception", e2);
            return null;
        }
    }

    public static DownloadManager i() {
        return e.f2959a;
    }

    public void b(cn.mucang.android.download.client.b bVar) {
        if (bVar == null || this.b.contains(bVar)) {
            return;
        }
        this.b.add(bVar);
    }

    public void c(cn.mucang.android.download.client.a aVar) {
        this.f2947a.bindService(new Intent(this.f2947a, (Class<?>) DownloadService.class), aVar, 1);
    }

    String d(String str) {
        File file;
        StringBuilder sb;
        String strD = cn.mucang.android.download.c.d(str);
        if (!cn.mucang.android.download.c.f(strD)) {
            strD = "";
        }
        File fileC = cn.mucang.android.download.c.c();
        String strG = cn.mucang.android.download.c.g(str);
        int i = 0;
        do {
            if (i == 0) {
                sb = new StringBuilder();
                sb.append(strG);
            } else {
                sb = new StringBuilder();
                sb.append(strG);
                sb.append("(");
                sb.append(i);
                sb.append(")");
            }
            sb.append(strD);
            file = new File(fileC, sb.toString());
            i++;
        } while (file.exists());
        return file.getAbsolutePath();
    }

    public void e(cn.mucang.android.download.client.a aVar) {
        if (aVar != null) {
            try {
                aVar.e();
                this.f2947a.unbindService(aVar);
            } catch (Exception e2) {
                Log.d("DownloadManager", "disconnect,e = " + e2.toString());
            }
        }
    }

    public void g(Request request, cn.mucang.android.download.client.c<Long> cVar) {
        Log.d("DownloadManager", "enqueue entered " + System.currentTimeMillis());
        if (cn.mucang.android.download.c.a(request.f2952g)) {
            w(new a(request, cVar));
            return;
        }
        if (MucangConfig.v()) {
            u.h("无效的存储路径");
        }
        u(cVar, null);
    }

    protected cn.mucang.android.core.db.e h(f fVar) {
        StringBuffer stringBuffer = new StringBuffer();
        ArrayList arrayList = new ArrayList();
        long[] jArr = fVar.f2960a;
        if (jArr != null && jArr.length > 0) {
            stringBuffer.append("(");
            for (int i = 0; i < fVar.f2960a.length; i++) {
                stringBuffer.append("_id = ?");
                if (i < fVar.f2960a.length - 1) {
                    stringBuffer.append(" or ");
                }
                arrayList.add(String.valueOf(fVar.f2960a[i]));
            }
            stringBuffer.append(")");
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        ArrayList arrayList2 = new ArrayList();
        int i2 = fVar.b;
        for (int i3 : c) {
            if ((i3 & i2) != 0) {
                stringBuffer2.append("download_status = ? or ");
                arrayList2.add(String.valueOf(i3));
            }
        }
        if (stringBuffer2.length() > 4) {
            stringBuffer2.setLength(stringBuffer2.length() - 4);
        }
        StringBuffer stringBuffer3 = new StringBuffer(stringBuffer);
        ArrayList arrayList3 = new ArrayList(arrayList);
        if (stringBuffer2.length() > 0) {
            if (stringBuffer3.length() > 0) {
                stringBuffer3.append(" and ");
            }
            stringBuffer3.append("(");
            stringBuffer3.append(stringBuffer2);
            stringBuffer3.append(")");
            arrayList3.addAll(arrayList2);
        }
        if (!n0.e(fVar.c)) {
            if (stringBuffer3.length() > 0) {
                stringBuffer3.append(" and ");
            }
            stringBuffer3.append("download_group = ?");
            arrayList3.add(fVar.c);
        }
        StringBuffer stringBuffer4 = new StringBuffer("select * from t_download");
        if (stringBuffer3.length() > 0) {
            stringBuffer4.append(" where ");
            stringBuffer4.append(stringBuffer3);
        }
        cn.mucang.android.core.db.e eVar = new cn.mucang.android.core.db.e(stringBuffer4.toString());
        eVar.a(arrayList3);
        return eVar;
    }

    public void j(long j) {
        for (cn.mucang.android.download.client.b bVar : this.b) {
            if (bVar != null) {
                bVar.b(j);
            }
        }
    }

    public void k(List<DownloadProgress> list) {
        for (cn.mucang.android.download.client.b bVar : this.b) {
            if (bVar != null) {
                bVar.a(list);
            }
        }
    }

    public void l(DownloadStatusChange downloadStatusChange) {
        for (cn.mucang.android.download.client.b bVar : this.b) {
            if (bVar != null) {
                bVar.c(downloadStatusChange);
            }
        }
    }

    public void m(long j) {
        Intent intent = new Intent(this.f2947a, (Class<?>) DownloadService.class);
        intent.setAction("ACTION_PAUSE");
        intent.putExtra("PARAM_TASK_ID", j);
        i0.a(this.f2947a, intent);
    }

    public void n(f fVar, cn.mucang.android.download.client.c<List<DownloadEntity>> cVar) {
        w(new b(cVar, fVar));
    }

    public void o(long j, cn.mucang.android.download.client.c<DownloadEntity> cVar) {
        w(new c(cVar, j));
    }

    public DownloadEntity p(long j) {
        f fVar = new f();
        fVar.a(j);
        List<DownloadEntity> listQ = q(fVar);
        if (listQ == null || listQ.size() <= 0) {
            return null;
        }
        return listQ.get(0);
    }

    public List<DownloadEntity> q(f fVar) {
        return cn.mucang.android.download.a.G().y(DownloadEntity.class, h(fVar));
    }

    public void r(long j) {
        Intent intent = new Intent(this.f2947a, (Class<?>) DownloadService.class);
        intent.setAction("ACTION_REMOVE");
        intent.putExtra("PARAM_TASK_ID", j);
        i0.a(this.f2947a, intent);
    }

    public void s(long j) {
        Intent intent = new Intent(this.f2947a, (Class<?>) DownloadService.class);
        intent.setAction("ACTION_RESTART");
        intent.putExtra("PARAM_TASK_ID", j);
        i0.a(this.f2947a, intent);
    }

    public void t(long j) {
        Intent intent = new Intent(this.f2947a, (Class<?>) DownloadService.class);
        intent.setAction("ACTION_RESUME");
        intent.putExtra("PARAM_TASK_ID", j);
        i0.a(this.f2947a, intent);
    }

    <T> void u(cn.mucang.android.download.client.c<T> cVar, T t) {
        if (cVar != null) {
            v(new d(this, cVar, t));
        }
    }

    void v(Runnable runnable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            runnable.run();
        } else {
            new Handler(Looper.getMainLooper()).post(runnable);
        }
    }

    void w(Runnable runnable) {
        MucangConfig.f(runnable);
    }

    private DownloadManager() {
        this.b = new CopyOnWriteArrayList();
        this.f2947a = MucangConfig.getContext();
        cn.mucang.android.download.a.H();
        b(cn.mucang.android.download.notification.a.j());
        i0.a(this.f2947a, new Intent(this.f2947a, (Class<?>) DownloadMonitorService.class));
    }
}
