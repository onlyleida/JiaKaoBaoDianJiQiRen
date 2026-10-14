package cn.mucang.android.download.service;

import android.content.ContentValues;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.o;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.x;
import cn.mucang.android.download.DownloadEntity;
import cn.mucang.android.download.DownloadProgress;
import cn.mucang.android.download.DownloadStatusChange;
import cn.mucang.android.download.client.DownloadManager;
import cn.mucang.android.ui.framework.fetcher.ThreadPool;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;
import com.alibaba.fastjson.parser.Feature;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.common.net.HttpHeaders;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.concurrent.TimeUnit;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* JADX INFO: loaded from: classes.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private LinkedHashSet<c> f2979a = new LinkedHashSet<>();
    private Handler b;
    private cn.mucang.android.download.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f2980d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private d[] f2981e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private OkHttpClient f2982f;

    class a extends TypeReference<List<DownloadManager.Request.Header>> {
        a(f fVar) {
        }
    }

    private static class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private f f2983a;
        private boolean b;

        b(f fVar, boolean z) {
            this.f2983a = fVar;
            this.b = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            for (d dVar : this.f2983a.f2981e) {
                if (dVar.f() != null) {
                    arrayList.add(new DownloadProgress(dVar.f().f2984a));
                }
            }
            if (!arrayList.isEmpty()) {
                Message messageObtainMessage = this.f2983a.b.obtainMessage(3);
                Bundle bundle = new Bundle();
                bundle.putParcelableArrayList("MSG_DATA_PROGRESS", arrayList);
                messageObtainMessage.setData(bundle);
                messageObtainMessage.sendToTarget();
            }
            if (this.b) {
                return;
            }
            this.f2983a.b.postDelayed(new b(this.f2983a, false), 2500L);
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        volatile DownloadEntity f2984a;
        volatile d b;
        int c;

        c(DownloadEntity downloadEntity) {
            this.f2984a = downloadEntity;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return (this.f2984a == null || cVar.f2984a == null || this.f2984a.getId() == null || !this.f2984a.getId().equals(cVar.f2984a.getId())) ? false : true;
        }

        public int hashCode() {
            if (this.f2984a != null) {
                return this.f2984a.hashCode();
            }
            return 0;
        }
    }

    private static class d extends Thread {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f2985a;
        private boolean b;
        private final f c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private c f2986d;

        class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Closeable f2987a;

            a(d dVar, Closeable closeable) {
                this.f2987a = closeable;
            }

            @Override // java.lang.Runnable
            public void run() {
                o.a(this.f2987a);
            }
        }

        public d(f fVar) {
            this.c = fVar;
        }

        private boolean c(DownloadEntity downloadEntity) {
            if (downloadEntity == null || TextUtils.isEmpty(downloadEntity.getStorePath())) {
                return false;
            }
            File file = new File(downloadEntity.getStorePath());
            if (file.exists() && file.isFile()) {
                return downloadEntity.getContentLength() == 0 || file.length() == downloadEntity.getContentLength();
            }
            return false;
        }

        private void d(Closeable closeable, boolean z) {
            if (closeable != null) {
                if (z) {
                    ThreadPool.a(new a(this, closeable));
                } else {
                    o.a(closeable);
                }
            }
        }

        public void e(c cVar) {
            ResponseBody responseBodyBody;
            boolean zIsInterrupted;
            boolean z;
            this.c.I(cVar, 8);
            DownloadEntity downloadEntity = cVar.f2984a;
            try {
                Response responseP = this.c.p(this.c.m(), downloadEntity);
                if (this.c.f2980d) {
                    try {
                        String strHeader = responseP.header(HttpHeaders.ETAG);
                        if (strHeader != null && !TextUtils.isEmpty(strHeader)) {
                            String etag = downloadEntity.getEtag();
                            if (TextUtils.isEmpty(etag)) {
                                downloadEntity.setEtag(strHeader);
                                this.c.F(downloadEntity);
                            } else if (!TextUtils.isEmpty(etag) && !etag.equalsIgnoreCase(strHeader)) {
                                downloadEntity.setEtag(strHeader);
                                this.c.F(downloadEntity);
                                String storePath = downloadEntity.getStorePath();
                                if (!TextUtils.isEmpty(storePath)) {
                                    File file = new File(storePath);
                                    if (file.exists()) {
                                        file.delete();
                                    }
                                }
                                downloadEntity.setContentLength(0L);
                                downloadEntity.setDownloadedLength(0L);
                                this.c.G(downloadEntity);
                                g(cVar);
                                return;
                            }
                        }
                    } catch (Exception e2) {
                        t.c("Exception", e2);
                    }
                }
                if (responseP == null || (responseBodyBody = responseP.body()) == null) {
                    g(cVar);
                    return;
                }
                try {
                    long jContentLength = responseBodyBody.contentLength();
                    if (downloadEntity.getContentLength() == 0) {
                        long downloadedLength = downloadEntity.getDownloadedLength();
                        if (jContentLength > 0) {
                            downloadEntity.setContentLength(downloadedLength + jContentLength);
                            this.c.H(cVar);
                        }
                    } else if (jContentLength + downloadEntity.getDownloadedLength() > downloadEntity.getContentLength()) {
                        downloadEntity.setDownloadedLength(0L);
                        downloadEntity.setContentLength(0L);
                        this.c.H(cVar);
                        g(cVar);
                        return;
                    }
                    try {
                        if (TextUtils.isEmpty(downloadEntity.getMimeType()) && responseBodyBody.contentType() != null) {
                            String string = responseBodyBody.contentType().toString();
                            if (!TextUtils.isEmpty(string)) {
                                downloadEntity.setMimeType(string);
                            }
                        }
                    } catch (Exception e3) {
                        t.c("Exception", e3);
                    }
                    byte[] bArr = new byte[4096];
                    Closeable closeable = null;
                    try {
                        RandomAccessFile randomAccessFile = new RandomAccessFile(downloadEntity.getStorePath(), "rw");
                        try {
                            randomAccessFile.seek(downloadEntity.getDownloadedLength());
                            try {
                                BufferedInputStream bufferedInputStream = new BufferedInputStream(responseBodyBody.byteStream(), 4096);
                                long jCurrentTimeMillis = System.currentTimeMillis();
                                while (true) {
                                    zIsInterrupted = Thread.currentThread().isInterrupted();
                                    if (zIsInterrupted) {
                                        break;
                                    }
                                    try {
                                        int i = bufferedInputStream.read(bArr, 0, 4096);
                                        if (i == -1) {
                                            break;
                                        }
                                        randomAccessFile.write(bArr, 0, i);
                                        downloadEntity.setDownloadedLength(downloadEntity.getDownloadedLength() + ((long) i));
                                        if (System.currentTimeMillis() - jCurrentTimeMillis >= 500) {
                                            this.c.H(cVar);
                                            jCurrentTimeMillis = System.currentTimeMillis();
                                        }
                                    } catch (InterruptedIOException unused) {
                                        zIsInterrupted = Thread.interrupted();
                                    } catch (IOException e4) {
                                        t.c("Exception", e4);
                                        z = true;
                                    }
                                }
                                z = false;
                                t.a("DownloadManager", "DownloadQueueManager finished reading bytes" + System.currentTimeMillis());
                                d(randomAccessFile, false);
                                d(bufferedInputStream, true);
                                this.c.H(cVar);
                                if (z) {
                                    g(cVar);
                                    return;
                                }
                                if (!zIsInterrupted) {
                                    if (c(downloadEntity)) {
                                        this.c.I(cVar, 32);
                                        return;
                                    } else {
                                        this.c.I(cVar, 512);
                                        return;
                                    }
                                }
                                t.a("DownloadManager", "DownloadQueueManager going to setStatus " + new Date());
                                if (this.b) {
                                    return;
                                }
                                this.c.I(cVar, this.f2985a ? 256 : 16);
                            } catch (Exception e5) {
                                t.c("Exception", e5);
                                d(randomAccessFile, false);
                                this.c.I(cVar, 64);
                            }
                        } catch (Exception e6) {
                            e = e6;
                            closeable = randomAccessFile;
                            t.c("Exception", e);
                            d(closeable, false);
                            this.c.I(cVar, 128);
                        }
                    } catch (Exception e7) {
                        e = e7;
                    }
                } catch (Exception e8) {
                    t.c("Exception", e8);
                    g(cVar);
                }
            } catch (IOException e9) {
                t.c("Exception", e9);
                if (Thread.currentThread().isInterrupted() && this.b) {
                    return;
                }
                if (h(cVar)) {
                    g(cVar);
                } else {
                    this.c.I(cVar, 4);
                }
            }
        }

        c f() {
            return this.f2986d;
        }

        void g(c cVar) {
            int i = cVar.c;
            if (i > 3) {
                this.c.I(cVar, 64);
                return;
            }
            cVar.c = i + 1;
            this.c.I(cVar, 2);
            synchronized (this.c) {
                this.c.f2979a.add(cVar);
                this.c.notifyAll();
            }
        }

        boolean h(c cVar) {
            NetworkInfo networkInfoB;
            int allowNetworkType = cVar.f2984a.getAllowNetworkType();
            t.a("DownloadManager", "DownloadQueueManager testTaskCondition allowedNetworkType:" + allowNetworkType);
            if ((allowNetworkType & 1) != 0 && x.f()) {
                t.a("DownloadManager", "DownloadQueueManager testTaskCondition ok task:" + cVar.f2984a.getId());
                return true;
            }
            if ((allowNetworkType & 2) != 0 && x.d()) {
                t.a("DownloadManager", "DownloadQueueManager testTaskCondition ok task:" + cVar.f2984a.getId());
                return true;
            }
            if ((allowNetworkType & 4) == 0 || (networkInfoB = x.b()) == null || networkInfoB.getType() != 9) {
                t.a("DownloadManager", "DownloadQueueManager testTaskCondition fail task:" + cVar.f2984a.getId());
                return false;
            }
            t.a("DownloadManager", "DownloadQueueManager testTaskCondition ok task:" + cVar.f2984a.getId());
            return true;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            c cVar;
            t.a("DownloadManager", "DownloadQueueManager WorkerThread run");
            loop0: while (!this.f2985a) {
                Thread.interrupted();
                synchronized (this.c) {
                    cVar = null;
                    while (cVar == null) {
                        Iterator it = this.c.f2979a.iterator();
                        if (it.hasNext()) {
                            c cVar2 = (c) it.next();
                            if (h(cVar2)) {
                                cVar = cVar2;
                            } else {
                                this.c.I(cVar2, 4);
                            }
                            it.remove();
                        }
                        if (cVar == null) {
                            try {
                                this.c.wait(1000L);
                            } catch (InterruptedException unused) {
                                if (this.f2985a) {
                                    t.a("DownloadManager", "DownloadQueueManager WorkerThread end");
                                }
                            }
                        }
                    }
                }
                cVar.b = this;
                this.f2986d = cVar;
                this.b = false;
                t.a("DownloadManager", "DownloadQueueManager doRealDownload start thread:" + Thread.currentThread() + " task:" + this.f2986d.f2984a.getId());
                e(cVar);
                t.a("DownloadManager", "DownloadQueueManager doRealDownload finish thread:" + Thread.currentThread() + " task:" + this.f2986d.f2984a.getId());
                this.f2986d = null;
                cVar.b = null;
                if (this.b) {
                    this.c.n(cVar.f2984a.getId().longValue());
                }
            }
            t.a("DownloadManager", "DownloadQueueManager WorkerThread end");
        }
    }

    public f(int i, Handler handler) {
        if (cn.mucang.android.download.a.G() == null) {
            cn.mucang.android.download.a.H();
        }
        this.f2980d = cn.mucang.android.download.b.a("download_module_check_etag", true);
        this.c = cn.mucang.android.download.a.G();
        this.b = handler;
        handler.postDelayed(new b(this, false), 2500L);
        this.f2981e = new d[i];
        for (int i2 = 0; i2 < i; i2++) {
            this.f2981e[i2] = new d(this);
            this.f2981e[i2].start();
        }
    }

    private void B(int[] iArr, List<String> list) {
        StringBuilder sb = new StringBuilder();
        if (iArr.length > 0) {
            sb.append("(");
            for (int i = 0; i < iArr.length; i++) {
                sb.append("download_status = ");
                sb.append(iArr[i]);
                if (i < iArr.length - 1) {
                    sb.append(" or ");
                }
            }
            sb.append(")");
        }
        if (cn.mucang.android.core.utils.g.d(list)) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("download_status", (Integer) 16);
            cn.mucang.android.download.a aVarG = cn.mucang.android.download.a.G();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(sb.toString());
            sb2.append(" and download_group in (" + n0.h(cn.mucang.android.core.utils.g.f(list, new cn.mucang.android.core.utils.g.a() { // from class: cn.mucang.android.download.service.b
                @Override // cn.mucang.android.core.utils.g.a
                public final Object transform(Object obj) {
                    return f.s((String) obj);
                }
            }), ",") + ")");
            aVarG.B(DownloadEntity.class, contentValues, sb2.toString(), null);
        }
        StringBuilder sb3 = new StringBuilder("select * from t_download where ");
        StringBuilder sb4 = new StringBuilder();
        if (cn.mucang.android.core.utils.g.d(list)) {
            sb4.append(" and download_group not in (");
            sb4.append(n0.h(cn.mucang.android.core.utils.g.f(list, new cn.mucang.android.core.utils.g.a() { // from class: cn.mucang.android.download.service.c
                @Override // cn.mucang.android.core.utils.g.a
                public final Object transform(Object obj) {
                    return f.t((String) obj);
                }
            }), ","));
            sb4.append(")");
        }
        sb3.append((CharSequence) sb);
        sb3.append((CharSequence) sb4);
        List<DownloadEntity> listY = this.c.y(DownloadEntity.class, new cn.mucang.android.core.db.e(sb3.toString()));
        if (listY == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (DownloadEntity downloadEntity : listY) {
            if (!q(downloadEntity.getId().longValue())) {
                c cVar = new c(downloadEntity);
                arrayList.add(cVar);
                I(cVar, 1);
            }
        }
        synchronized (this) {
            this.f2979a.addAll(arrayList);
            notifyAll();
        }
    }

    private void E(ContentValues contentValues, long j) {
        this.c.A(DownloadEntity.class, contentValues, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F(DownloadEntity downloadEntity) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("etag", downloadEntity.getEtag());
        E(contentValues, downloadEntity.getId().longValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G(DownloadEntity downloadEntity) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("content_length", Long.valueOf(downloadEntity.getContentLength()));
        contentValues.put("downloaded_length", Long.valueOf(downloadEntity.getDownloadedLength()));
        E(contentValues, downloadEntity.getId().longValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H(c cVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("content_length", Long.valueOf(cVar.f2984a.getContentLength()));
        contentValues.put("downloaded_length", Long.valueOf(cVar.f2984a.getDownloadedLength()));
        E(contentValues, cVar.f2984a.getId().longValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I(c cVar, int i) {
        DownloadEntity downloadEntity = cVar.f2984a;
        t.a("DownloadManager", "DownloadQueueManager setStatus Thread:" + Thread.currentThread() + " task:" + downloadEntity.getId() + " status:" + i + " " + System.currentTimeMillis());
        Message messageObtainMessage = this.b.obtainMessage(4);
        Bundle bundle = new Bundle();
        bundle.putParcelable("MSG_DATA_STATUS_CHANGE", new DownloadStatusChange(downloadEntity.getId().longValue(), downloadEntity.getDownloadStatus(), i));
        messageObtainMessage.setData(bundle);
        messageObtainMessage.sendToTarget();
        ContentValues contentValues = new ContentValues();
        downloadEntity.setDownloadStatus(i);
        contentValues.put("download_status", Integer.valueOf(i));
        if (i == 32) {
            downloadEntity.setFinishTime(System.currentTimeMillis());
            contentValues.put("finish_time", Long.valueOf(downloadEntity.getFinishTime()));
        }
        E(contentValues, downloadEntity.getId().longValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public OkHttpClient m() {
        if (this.f2982f == null) {
            OkHttpClient.Builder builderNewBuilder = cn.mucang.android.core.http.a.r().newBuilder();
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            this.f2982f = builderNewBuilder.connectTimeout(DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS, timeUnit).readTimeout(30000L, timeUnit).writeTimeout(30000L, timeUnit).build();
        }
        return this.f2982f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(long j) {
        DownloadEntity downloadEntity = (DownloadEntity) this.c.m(DownloadEntity.class, j);
        if (downloadEntity != null) {
            String storePath = downloadEntity.getStorePath();
            if (!TextUtils.isEmpty(storePath)) {
                File file = new File(storePath);
                if (file.exists()) {
                    file.delete();
                }
            }
            this.c.h(DownloadEntity.class, j);
            Message messageObtainMessage = this.b.obtainMessage(5);
            Bundle bundle = new Bundle();
            bundle.putLong("MSG_DATA_REMOVED", j);
            messageObtainMessage.setData(bundle);
            messageObtainMessage.sendToTarget();
        }
    }

    private c o(long j) {
        for (d dVar : this.f2981e) {
            c cVarF = dVar.f();
            if (cVarF != null && cVarF.f2984a != null && cVarF.f2984a.getId().longValue() == j) {
                if (cVarF.b == null) {
                    cVarF.b = dVar;
                }
                return cVarF;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Response p(OkHttpClient okHttpClient, DownloadEntity downloadEntity) throws IOException {
        long length;
        List<DownloadManager.Request.Header> list;
        String url = downloadEntity.getUrl();
        long downloadedLength = downloadEntity.getDownloadedLength();
        long contentLength = downloadEntity.getContentLength();
        File file = new File(downloadEntity.getStorePath());
        if (file.exists()) {
            length = file.length();
            if (downloadedLength == 0 && contentLength == 0) {
                try {
                    file.delete();
                } catch (Exception unused) {
                }
                length = 0;
            }
        } else {
            length = 0;
        }
        if (downloadedLength != length) {
            t.a("DownloadManager", "local.size != db.size, download error！local:" + length + " -- db:" + downloadedLength);
            downloadEntity.setDownloadedLength(length);
            ContentValues contentValues = new ContentValues();
            contentValues.put("downloaded_length", Long.valueOf(length));
            E(contentValues, downloadEntity.getId().longValue());
            downloadedLength = length;
        }
        try {
            Request.Builder builderUrl = new Request.Builder().url(url);
            if (!TextUtils.isEmpty(downloadEntity.getHeaders()) && (list = (List) JSON.parseObject(downloadEntity.getHeaders(), new a(this), new Feature[0])) != null) {
                for (DownloadManager.Request.Header header : list) {
                    builderUrl.addHeader(header.f2954a, header.b);
                }
            }
            if (downloadedLength > 0) {
                builderUrl.header(HttpHeaders.RANGE, String.format("bytes=%d-", Long.valueOf(downloadedLength)));
            }
            return okHttpClient.newCall(builderUrl.build()).execute();
        } catch (Exception e2) {
            t.c("Exception", e2);
            throw new IOException("网络连接失败");
        }
    }

    private boolean q(long j) {
        if (o(j) != null) {
            return true;
        }
        synchronized (this) {
            Iterator<c> it = this.f2979a.iterator();
            while (it.hasNext()) {
                if (it.next().f2984a.getId().longValue() == j) {
                    return true;
                }
            }
            return false;
        }
    }

    static /* synthetic */ String r(String str) {
        return "'" + str + "'";
    }

    static /* synthetic */ String s(String str) {
        return "'" + str + "'";
    }

    static /* synthetic */ String t(String str) {
        return "'" + str + "'";
    }

    public void A(long j) {
        try {
            DownloadEntity downloadEntity = (DownloadEntity) this.c.m(DownloadEntity.class, j);
            if (downloadEntity != null) {
                String storePath = downloadEntity.getStorePath();
                if (!TextUtils.isEmpty(storePath)) {
                    File file = new File(storePath);
                    if (file.exists()) {
                        file.delete();
                    }
                }
                downloadEntity.setDownloadedLength(0L);
                downloadEntity.setContentLength(0L);
                G(downloadEntity);
                D(j);
            }
        } catch (Exception e2) {
            t.c("Exception", e2);
        }
    }

    protected void C(String str) {
        B(new int[]{1, 2, 4, 8, 256, 64}, !TextUtils.isEmpty(str) ? Arrays.asList(str.split(",")) : null);
    }

    public void D(long j) {
        l(j);
    }

    public void l(long j) {
        t.a("DownloadManager", "DownloadQueueManager add id:" + j);
        DownloadEntity downloadEntity = (DownloadEntity) this.c.m(DownloadEntity.class, j);
        if (downloadEntity == null || o(j) != null || q(j)) {
            return;
        }
        t.a("DownloadManager", "DownloadQueueManager entities found id:" + downloadEntity.getId());
        c cVar = new c(downloadEntity);
        I(cVar, 1);
        synchronized (this) {
            this.f2979a.add(cVar);
            notifyAll();
            t.a("DownloadManager", "DownloadQueueManager added to queue notified");
        }
    }

    protected void u() {
        Log.d("DownloadManager", "DownloadQueueManager networkStatusChanged");
        B(new int[]{1, 2, 4}, null);
    }

    public void v() {
        this.b.post(new b(this, true));
    }

    public void w(long j) {
        Log.d("DownloadManager", "pause " + j + " at：" + System.currentTimeMillis());
        c cVarO = o(j);
        if (cVarO != null && cVarO.b != null) {
            cVarO.b.interrupt();
            return;
        }
        synchronized (this) {
            for (c cVar : this.f2979a) {
                if (cVar.f2984a.getId().longValue() == j) {
                    this.f2979a.remove(cVar);
                    I(cVar, 16);
                    break;
                }
            }
        }
    }

    public void x(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        List listAsList = Arrays.asList(str.split(","));
        synchronized (this) {
            Iterator<c> it = this.f2979a.iterator();
            while (it.hasNext()) {
                c next = it.next();
                if (listAsList.contains(next.f2984a.getDownloadGroup())) {
                    it.remove();
                    I(next, 16);
                }
            }
        }
        for (d dVar : this.f2981e) {
            c cVarF = dVar.f();
            if (cVarF != null && cVarF.f2984a != null && listAsList.contains(cVarF.f2984a.getDownloadGroup())) {
                dVar.interrupt();
            }
        }
        StringBuilder sb = new StringBuilder("select * from t_download where download_status = ");
        sb.append(4);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(" and download_group in (");
        sb2.append(n0.h(cn.mucang.android.core.utils.g.f(listAsList, new cn.mucang.android.core.utils.g.a() { // from class: cn.mucang.android.download.service.a
            @Override // cn.mucang.android.core.utils.g.a
            public final Object transform(Object obj) {
                return f.r((String) obj);
            }
        }), ","));
        sb2.append(")");
        sb.append((CharSequence) sb2);
        Iterator it2 = this.c.y(DownloadEntity.class, new cn.mucang.android.core.db.e(sb.toString())).iterator();
        while (it2.hasNext()) {
            I(new c((DownloadEntity) it2.next()), 16);
        }
    }

    public void y() {
        for (d dVar : this.f2981e) {
            dVar.f2985a = true;
            dVar.interrupt();
        }
    }

    public void z(long j) {
        synchronized (this) {
            for (c cVar : this.f2979a) {
                if (cVar.f2984a.getId().longValue() == j) {
                    this.f2979a.remove(cVar);
                    break;
                }
            }
        }
        c cVarO = o(j);
        if (cVarO == null || cVarO.b == null) {
            n(j);
        } else {
            cVarO.b.b = true;
            cVarO.b.interrupt();
        }
    }
}
