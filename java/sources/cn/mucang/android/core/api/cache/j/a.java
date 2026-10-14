package cn.mucang.android.core.api.cache.j;

import cn.mucang.android.ui.framework.fetcher.ThreadPool;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class a implements Closeable {
    static final Pattern o = Pattern.compile("[a-z0-9_-]{1,120}");
    private static final OutputStream p = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final File f2351a;
    private final File b;
    private final File c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final File f2352d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f2353e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f2354f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f2355g;
    private Writer i;
    private int k;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f2356h = 0;
    private final LinkedHashMap<String, d> j = new LinkedHashMap<>(0, 0.75f, true);
    private long l = 0;
    final ThreadPoolExecutor m = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadPool.a("lru"));
    private final Callable<Void> n = new CallableC0065a();

    /* JADX INFO: renamed from: cn.mucang.android.core.api.cache.j.a$a, reason: collision with other inner class name */
    class CallableC0065a implements Callable<Void> {
        CallableC0065a() {
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() throws Exception {
            synchronized (a.this) {
                if (a.this.i == null) {
                    return null;
                }
                a.this.H();
                if (a.this.z()) {
                    a.this.E();
                    a.this.k = 0;
                }
                return null;
            }
        }
    }

    class b extends OutputStream {
        b() {
        }

        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
        }
    }

    public final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final d f2358a;
        private final boolean[] b;
        private boolean c;

        /* JADX INFO: renamed from: cn.mucang.android.core.api.cache.j.a$c$a, reason: collision with other inner class name */
        private class C0066a extends FilterOutputStream {
            /* synthetic */ C0066a(c cVar, OutputStream outputStream, CallableC0065a callableC0065a) {
                this(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                try {
                    ((FilterOutputStream) this).out.close();
                } catch (IOException unused) {
                    c.this.c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public void flush() {
                try {
                    ((FilterOutputStream) this).out.flush();
                } catch (IOException unused) {
                    c.this.c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(int i) {
                try {
                    ((FilterOutputStream) this).out.write(i);
                } catch (IOException unused) {
                    c.this.c = true;
                }
            }

            private C0066a(OutputStream outputStream) {
                super(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) {
                try {
                    ((FilterOutputStream) this).out.write(bArr, i, i2);
                } catch (IOException unused) {
                    c.this.c = true;
                }
            }
        }

        /* synthetic */ c(a aVar, d dVar, CallableC0065a callableC0065a) {
            this(dVar);
        }

        public void a() throws IOException {
            a.this.n(this, false);
        }

        public void e() throws IOException {
            if (!this.c) {
                a.this.n(this, true);
            } else {
                a.this.n(this, false);
                a.this.F(this.f2358a.f2361a);
            }
        }

        public OutputStream f(int i) throws IOException {
            FileOutputStream fileOutputStream;
            C0066a c0066a;
            if (i < 0 || i >= a.this.f2355g) {
                throw new IllegalArgumentException("Expected index " + i + " to be greater than 0 and less than the maximum value count of " + a.this.f2355g);
            }
            synchronized (a.this) {
                if (this.f2358a.f2362d != this) {
                    throw new IllegalStateException();
                }
                if (!this.f2358a.c) {
                    this.b[i] = true;
                }
                File fileK = this.f2358a.k(i);
                try {
                    fileOutputStream = new FileOutputStream(fileK);
                } catch (FileNotFoundException unused) {
                    a.this.f2351a.mkdirs();
                    try {
                        fileOutputStream = new FileOutputStream(fileK);
                    } catch (FileNotFoundException unused2) {
                        return a.p;
                    }
                }
                c0066a = new C0066a(this, fileOutputStream, null);
            }
            return c0066a;
        }

        private c(d dVar) {
            this.f2358a = dVar;
            this.b = dVar.c ? null : new boolean[a.this.f2355g];
        }
    }

    private final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f2361a;
        private final long[] b;
        private boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private c f2362d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f2363e;

        /* synthetic */ d(a aVar, String str, CallableC0065a callableC0065a) {
            this(str);
        }

        private IOException m(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void n(String[] strArr) throws IOException {
            if (strArr.length != a.this.f2355g) {
                m(strArr);
                throw null;
            }
            for (int i = 0; i < strArr.length; i++) {
                try {
                    this.b[i] = Long.parseLong(strArr[i]);
                } catch (NumberFormatException unused) {
                    m(strArr);
                    throw null;
                }
            }
        }

        public File j(int i) {
            return new File(a.this.f2351a, this.f2361a + "." + i);
        }

        public File k(int i) {
            return new File(a.this.f2351a, this.f2361a + "." + i + ".tmp");
        }

        public String l() throws IOException {
            StringBuilder sb = new StringBuilder();
            for (long j : this.b) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }

        private d(String str) {
            this.f2361a = str;
            this.b = new long[a.this.f2355g];
        }
    }

    public final class e implements Closeable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final InputStream[] f2365a;

        /* synthetic */ e(a aVar, String str, long j, InputStream[] inputStreamArr, long[] jArr, CallableC0065a callableC0065a) {
            this(aVar, str, j, inputStreamArr, jArr);
        }

        public InputStream a(int i) {
            return this.f2365a[i];
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (InputStream inputStream : this.f2365a) {
                cn.mucang.android.core.api.cache.j.c.a(inputStream);
            }
        }

        public String getString(int i) throws IOException {
            return a.y(a(i));
        }

        private e(a aVar, String str, long j, InputStream[] inputStreamArr, long[] jArr) {
            this.f2365a = inputStreamArr;
        }
    }

    private a(File file, int i, int i2, long j) {
        this.f2351a = file;
        this.f2353e = i;
        this.b = new File(file, "journal");
        this.c = new File(file, "journal.tmp");
        this.f2352d = new File(file, "journal.bkp");
        this.f2355g = i2;
        this.f2354f = j;
    }

    public static a A(File file, int i, int i2, long j) throws IOException {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (i2 <= 0) {
            throw new IllegalArgumentException("valueCount <= 0");
        }
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else {
                G(file2, file3, false);
            }
        }
        a aVar = new a(file, i, i2, j);
        if (aVar.b.exists()) {
            try {
                aVar.C();
                aVar.B();
                return aVar;
            } catch (IOException e2) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e2.getMessage() + ", removing");
                aVar.p();
            }
        }
        file.mkdirs();
        a aVar2 = new a(file, i, i2, j);
        aVar2.E();
        return aVar2;
    }

    private void B() throws IOException {
        q(this.c);
        Iterator<d> it = this.j.values().iterator();
        while (it.hasNext()) {
            d next = it.next();
            int i = 0;
            if (next.f2362d == null) {
                while (i < this.f2355g) {
                    this.f2356h += next.b[i];
                    i++;
                }
            } else {
                next.f2362d = null;
                while (i < this.f2355g) {
                    q(next.j(i));
                    q(next.k(i));
                    i++;
                }
                it.remove();
            }
        }
    }

    private void C() throws IOException {
        cn.mucang.android.core.api.cache.j.b bVar = new cn.mucang.android.core.api.cache.j.b(new FileInputStream(this.b), cn.mucang.android.core.api.cache.j.c.f2370a);
        try {
            String strD = bVar.d();
            String strD2 = bVar.d();
            String strD3 = bVar.d();
            String strD4 = bVar.d();
            String strD5 = bVar.d();
            if (!"libcore.io.DiskLruCache".equals(strD) || !"1".equals(strD2) || !Integer.toString(this.f2353e).equals(strD3) || !Integer.toString(this.f2355g).equals(strD4) || !"".equals(strD5)) {
                throw new IOException("unexpected journal header: [" + strD + ", " + strD2 + ", " + strD4 + ", " + strD5 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    D(bVar.d());
                    i++;
                } catch (EOFException unused) {
                    this.k = i - this.j.size();
                    if (bVar.c()) {
                        E();
                    } else {
                        this.i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.b, true), cn.mucang.android.core.api.cache.j.c.f2370a));
                    }
                    cn.mucang.android.core.api.cache.j.c.a(bVar);
                    return;
                }
            }
        } catch (Throwable th) {
            cn.mucang.android.core.api.cache.j.c.a(bVar);
            throw th;
        }
    }

    private void D(String str) throws IOException {
        String strSubstring;
        int iIndexOf = str.indexOf(32);
        if (iIndexOf == -1) {
            throw new IOException("unexpected journal line: " + str);
        }
        int i = iIndexOf + 1;
        int iIndexOf2 = str.indexOf(32, i);
        if (iIndexOf2 == -1) {
            strSubstring = str.substring(i);
            if (iIndexOf == 6 && str.startsWith("REMOVE")) {
                this.j.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i, iIndexOf2);
        }
        d dVar = this.j.get(strSubstring);
        CallableC0065a callableC0065a = null;
        if (dVar == null) {
            dVar = new d(this, strSubstring, callableC0065a);
            this.j.put(strSubstring, dVar);
        }
        if (iIndexOf2 != -1 && iIndexOf == 5 && str.startsWith("CLEAN")) {
            String[] strArrSplit = str.substring(iIndexOf2 + 1).split(" ");
            dVar.c = true;
            dVar.f2362d = null;
            dVar.n(strArrSplit);
            return;
        }
        if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith("DIRTY")) {
            dVar.f2362d = new c(this, dVar, callableC0065a);
            return;
        }
        if (iIndexOf2 == -1 && iIndexOf == 4 && str.startsWith("READ")) {
            return;
        }
        throw new IOException("unexpected journal line: " + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void E() throws IOException {
        try {
            Writer writer = this.i;
            if (writer != null) {
                writer.close();
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.c), cn.mucang.android.core.api.cache.j.c.f2370a));
            try {
                bufferedWriter.write("libcore.io.DiskLruCache");
                bufferedWriter.write("\n");
                bufferedWriter.write("1");
                bufferedWriter.write("\n");
                bufferedWriter.write(Integer.toString(this.f2353e));
                bufferedWriter.write("\n");
                bufferedWriter.write(Integer.toString(this.f2355g));
                bufferedWriter.write("\n");
                bufferedWriter.write("\n");
                for (d dVar : this.j.values()) {
                    if (dVar.f2362d != null) {
                        bufferedWriter.write("DIRTY " + dVar.f2361a + '\n');
                    } else {
                        bufferedWriter.write("CLEAN " + dVar.f2361a + dVar.l() + '\n');
                    }
                }
                bufferedWriter.close();
                if (this.b.exists()) {
                    G(this.b, this.f2352d, true);
                }
                G(this.c, this.b, false);
                this.f2352d.delete();
                this.i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.b, true), cn.mucang.android.core.api.cache.j.c.f2370a));
            } catch (Throwable th) {
                bufferedWriter.close();
                throw th;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private static void G(File file, File file2, boolean z) throws IOException {
        if (z) {
            q(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H() throws IOException {
        while (this.f2356h > this.f2354f) {
            F(this.j.entrySet().iterator().next().getKey());
        }
    }

    private void I(String str) {
        if (o.matcher(str).matches()) {
            return;
        }
        throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + "\"");
    }

    private void l() {
        if (this.i == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void n(c cVar, boolean z) throws IOException {
        d dVar = cVar.f2358a;
        if (dVar.f2362d != cVar) {
            throw new IllegalStateException();
        }
        if (z && !dVar.c) {
            for (int i = 0; i < this.f2355g; i++) {
                if (!cVar.b[i]) {
                    cVar.a();
                    throw new IllegalStateException("Newly created entry didn't create value for index " + i);
                }
                if (!dVar.k(i).exists()) {
                    cVar.a();
                    return;
                }
            }
        }
        for (int i2 = 0; i2 < this.f2355g; i2++) {
            File fileK = dVar.k(i2);
            if (!z) {
                q(fileK);
            } else if (fileK.exists()) {
                File fileJ = dVar.j(i2);
                fileK.renameTo(fileJ);
                long j = dVar.b[i2];
                long length = fileJ.length();
                dVar.b[i2] = length;
                this.f2356h = (this.f2356h - j) + length;
            }
        }
        this.k++;
        dVar.f2362d = null;
        if (dVar.c || z) {
            dVar.c = true;
            this.i.write("CLEAN " + dVar.f2361a + dVar.l() + '\n');
            if (z) {
                long j2 = this.l;
                this.l = 1 + j2;
                dVar.f2363e = j2;
            }
        } else {
            this.j.remove(dVar.f2361a);
            this.i.write("REMOVE " + dVar.f2361a + '\n');
        }
        this.i.flush();
        if (this.f2356h > this.f2354f || z()) {
            this.m.submit(this.n);
        }
    }

    private static void q(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    private synchronized c u(String str, long j) throws IOException {
        l();
        I(str);
        d dVar = this.j.get(str);
        CallableC0065a callableC0065a = null;
        if (j != -1 && (dVar == null || dVar.f2363e != j)) {
            return null;
        }
        if (dVar == null) {
            dVar = new d(this, str, callableC0065a);
            this.j.put(str, dVar);
        } else if (dVar.f2362d != null) {
            return null;
        }
        c cVar = new c(this, dVar, callableC0065a);
        dVar.f2362d = cVar;
        this.i.write("DIRTY " + str + '\n');
        this.i.flush();
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String y(InputStream inputStream) throws IOException {
        return cn.mucang.android.core.api.cache.j.c.c(new InputStreamReader(inputStream, cn.mucang.android.core.api.cache.j.c.b));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean z() {
        int i = this.k;
        return i >= 2000 && i >= this.j.size();
    }

    public synchronized boolean F(String str) throws IOException {
        l();
        I(str);
        d dVar = this.j.get(str);
        if (dVar != null && dVar.f2362d == null) {
            for (int i = 0; i < this.f2355g; i++) {
                File fileJ = dVar.j(i);
                if (fileJ.exists() && !fileJ.delete()) {
                    throw new IOException("failed to delete " + fileJ);
                }
                this.f2356h -= dVar.b[i];
                dVar.b[i] = 0;
            }
            this.k++;
            this.i.append((CharSequence) ("REMOVE " + str + '\n'));
            this.j.remove(str);
            if (z()) {
                this.m.submit(this.n);
            }
            return true;
        }
        return false;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        if (this.i == null) {
            return;
        }
        for (d dVar : new ArrayList(this.j.values())) {
            if (dVar.f2362d != null) {
                dVar.f2362d.a();
            }
        }
        H();
        this.i.close();
        this.i = null;
    }

    public synchronized boolean isClosed() {
        return this.i == null;
    }

    public void p() throws IOException {
        close();
        cn.mucang.android.core.api.cache.j.c.b(this.f2351a);
    }

    public c s(String str) throws IOException {
        return u(str, -1L);
    }

    public synchronized e x(String str) throws IOException {
        l();
        I(str);
        d dVar = this.j.get(str);
        if (dVar == null) {
            return null;
        }
        if (!dVar.c) {
            return null;
        }
        InputStream[] inputStreamArr = new InputStream[this.f2355g];
        for (int i = 0; i < this.f2355g; i++) {
            try {
                inputStreamArr[i] = new FileInputStream(dVar.j(i));
            } catch (FileNotFoundException unused) {
                for (int i2 = 0; i2 < this.f2355g && inputStreamArr[i2] != null; i2++) {
                    cn.mucang.android.core.api.cache.j.c.a(inputStreamArr[i2]);
                }
                return null;
            }
        }
        this.k++;
        this.i.append((CharSequence) ("READ " + str + '\n'));
        if (z()) {
            this.m.submit(this.n);
        }
        return new e(this, str, dVar.f2363e, inputStreamArr, dVar.b, null);
    }
}
