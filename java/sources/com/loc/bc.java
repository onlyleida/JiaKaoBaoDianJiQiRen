package com.loc;

import com.google.android.exoplayer2.C;
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
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public final class bc implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Pattern f12535a = Pattern.compile("[a-z0-9_-]{1,120}");
    public static final Charset b = Charset.forName(C.ASCII_NAME);
    static final Charset c = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static ThreadPoolExecutor f12536d;
    private static final ThreadFactory r;
    private static final OutputStream t;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final File f12537e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final File f12538f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final File f12539g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final File f12540h;
    private long j;
    private Writer m;
    private int p;
    private long l = 0;
    private int n = 1000;
    private final LinkedHashMap<String, c> o = new LinkedHashMap<>(0, 0.75f, true);
    private long q = 0;
    private final Callable<Void> s = new Callable<Void>() { // from class: com.loc.bc.2
        /* JADX INFO: Access modifiers changed from: private */
        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() throws Exception {
            synchronized (bc.this) {
                if (bc.this.m == null) {
                    return null;
                }
                bc.this.l();
                if (bc.this.j()) {
                    bc.this.i();
                    bc.e(bc.this);
                }
                return null;
            }
        }
    };
    private final int i = 1;
    private final int k = 1;

    public final class a {
        private final c b;
        private final boolean[] c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f12544d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f12545e;

        /* JADX INFO: renamed from: com.loc.bc$a$a, reason: collision with other inner class name */
        private class C0246a extends FilterOutputStream {
            private C0246a(OutputStream outputStream) {
                super(outputStream);
            }

            /* synthetic */ C0246a(a aVar, OutputStream outputStream, byte b) {
                this(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
                try {
                    ((FilterOutputStream) this).out.close();
                } catch (IOException unused) {
                    a.c(a.this);
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public final void flush() {
                try {
                    ((FilterOutputStream) this).out.flush();
                } catch (IOException unused) {
                    a.c(a.this);
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public final void write(int i) {
                try {
                    ((FilterOutputStream) this).out.write(i);
                } catch (IOException unused) {
                    a.c(a.this);
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public final void write(byte[] bArr, int i, int i2) {
                try {
                    ((FilterOutputStream) this).out.write(bArr, i, i2);
                } catch (IOException unused) {
                    a.c(a.this);
                }
            }
        }

        private a(c cVar) {
            this.b = cVar;
            this.c = cVar.f12551d ? null : new boolean[bc.this.k];
        }

        /* synthetic */ a(bc bcVar, c cVar, byte b) {
            this(cVar);
        }

        static /* synthetic */ boolean c(a aVar) {
            aVar.f12544d = true;
            return true;
        }

        public final OutputStream a() throws IOException {
            FileOutputStream fileOutputStream;
            C0246a c0246a;
            if (bc.this.k <= 0) {
                throw new IllegalArgumentException("Expected index 0 to be greater than 0 and less than the maximum value count of " + bc.this.k);
            }
            synchronized (bc.this) {
                if (this.b.f12552e != this) {
                    throw new IllegalStateException();
                }
                byte b = 0;
                if (!this.b.f12551d) {
                    this.c[0] = true;
                }
                File fileB = this.b.b(0);
                try {
                    fileOutputStream = new FileOutputStream(fileB);
                } catch (FileNotFoundException unused) {
                    bc.this.f12537e.mkdirs();
                    try {
                        fileOutputStream = new FileOutputStream(fileB);
                    } catch (FileNotFoundException unused2) {
                        return bc.t;
                    }
                }
                c0246a = new C0246a(this, fileOutputStream, b);
            }
            return c0246a;
        }

        public final void b() throws IOException {
            if (this.f12544d) {
                bc.this.a(this, false);
                bc.this.c(this.b.b);
            } else {
                bc.this.a(this, true);
            }
            this.f12545e = true;
        }

        public final void c() throws IOException {
            bc.this.a(this, false);
        }
    }

    public final class b implements Closeable {
        private final String b;
        private final long c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final InputStream[] f12548d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final long[] f12549e;

        private b(String str, long j, InputStream[] inputStreamArr, long[] jArr) {
            this.b = str;
            this.c = j;
            this.f12548d = inputStreamArr;
            this.f12549e = jArr;
        }

        /* synthetic */ b(bc bcVar, String str, long j, InputStream[] inputStreamArr, long[] jArr, byte b) {
            this(str, j, inputStreamArr, jArr);
        }

        public final InputStream a() {
            return this.f12548d[0];
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            for (InputStream inputStream : this.f12548d) {
                bc.a(inputStream);
            }
        }
    }

    private final class c {
        private final String b;
        private final long[] c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f12551d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private a f12552e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f12553f;

        private c(String str) {
            this.b = str;
            this.c = new long[bc.this.k];
        }

        /* synthetic */ c(bc bcVar, String str, byte b) {
            this(str);
        }

        private static IOException a(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        static /* synthetic */ void a(c cVar, String[] strArr) throws IOException {
            if (strArr.length != bc.this.k) {
                throw a(strArr);
            }
            for (int i = 0; i < strArr.length; i++) {
                try {
                    cVar.c[i] = Long.parseLong(strArr[i]);
                } catch (NumberFormatException unused) {
                    throw a(strArr);
                }
            }
        }

        static /* synthetic */ boolean a(c cVar) {
            cVar.f12551d = true;
            return true;
        }

        public final File a(int i) {
            return new File(bc.this.f12537e, this.b + "." + i);
        }

        public final String a() throws IOException {
            StringBuilder sb = new StringBuilder();
            for (long j : this.c) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }

        public final File b(int i) {
            return new File(bc.this.f12537e, this.b + "." + i + ".tmp");
        }
    }

    static {
        ThreadFactory threadFactory = new ThreadFactory() { // from class: com.loc.bc.1

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final AtomicInteger f12541a = new AtomicInteger(1);

            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return new Thread(runnable, "disklrucache#" + this.f12541a.getAndIncrement());
            }
        };
        r = threadFactory;
        f12536d = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory);
        t = new OutputStream() { // from class: com.loc.bc.3
            @Override // java.io.OutputStream
            public final void write(int i) throws IOException {
            }
        };
    }

    private bc(File file, long j) {
        this.f12537e = file;
        this.f12538f = new File(file, "journal");
        this.f12539g = new File(file, "journal.tmp");
        this.f12540h = new File(file, "journal.bkp");
        this.j = j;
    }

    public static bc a(File file, long j) throws IOException {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else {
                a(file2, file3, false);
            }
        }
        bc bcVar = new bc(file, j);
        if (bcVar.f12538f.exists()) {
            try {
                bcVar.g();
                bcVar.h();
                bcVar.m = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(bcVar.f12538f, true), b));
                return bcVar;
            } catch (Throwable unused) {
                bcVar.d();
            }
        }
        file.mkdirs();
        bc bcVar2 = new bc(file, j);
        bcVar2.i();
        return bcVar2;
    }

    public static void a() {
        ThreadPoolExecutor threadPoolExecutor = f12536d;
        if (threadPoolExecutor == null || threadPoolExecutor.isShutdown()) {
            return;
        }
        f12536d.shutdown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(a aVar, boolean z) throws IOException {
        c cVar = aVar.b;
        if (cVar.f12552e != aVar) {
            throw new IllegalStateException();
        }
        if (z && !cVar.f12551d) {
            for (int i = 0; i < this.k; i++) {
                if (!aVar.c[i]) {
                    aVar.c();
                    throw new IllegalStateException("Newly created entry didn't create value for index ".concat(String.valueOf(i)));
                }
                if (!cVar.b(i).exists()) {
                    aVar.c();
                    return;
                }
            }
        }
        for (int i2 = 0; i2 < this.k; i2++) {
            File fileB = cVar.b(i2);
            if (!z) {
                a(fileB);
            } else if (fileB.exists()) {
                File fileA = cVar.a(i2);
                fileB.renameTo(fileA);
                long j = cVar.c[i2];
                long length = fileA.length();
                cVar.c[i2] = length;
                this.l = (this.l - j) + length;
            }
        }
        this.p++;
        cVar.f12552e = null;
        if (cVar.f12551d || z) {
            c.a(cVar);
            this.m.write("CLEAN " + cVar.b + cVar.a() + '\n');
            if (z) {
                long j2 = this.q;
                this.q = 1 + j2;
                cVar.f12553f = j2;
            }
        } else {
            this.o.remove(cVar.b);
            this.m.write("REMOVE " + cVar.b + '\n');
        }
        this.m.flush();
        if (this.l > this.j || j()) {
            f().submit(this.s);
        }
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception unused) {
            }
        }
    }

    private static void a(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    private static void a(File file, File file2, boolean z) throws IOException {
        if (z) {
            a(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    private static void b(File file) throws IOException {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            throw new IOException("not a readable directory: ".concat(String.valueOf(file)));
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory()) {
                b(file2);
            }
            if (!file2.delete()) {
                throw new IOException("failed to delete file: ".concat(String.valueOf(file2)));
            }
        }
    }

    private synchronized a d(String str) throws IOException {
        k();
        e(str);
        c cVar = this.o.get(str);
        byte b2 = 0;
        if (cVar == null) {
            cVar = new c(this, str, b2);
            this.o.put(str, cVar);
        } else if (cVar.f12552e != null) {
            return null;
        }
        a aVar = new a(this, cVar, b2);
        cVar.f12552e = aVar;
        this.m.write("DIRTY " + str + '\n');
        this.m.flush();
        return aVar;
    }

    static /* synthetic */ int e(bc bcVar) {
        bcVar.p = 0;
        return 0;
    }

    private static void e(String str) {
        if (f12535a.matcher(str).matches()) {
            return;
        }
        throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + "\"");
    }

    private static ThreadPoolExecutor f() {
        try {
            ThreadPoolExecutor threadPoolExecutor = f12536d;
            if (threadPoolExecutor == null || threadPoolExecutor.isShutdown()) {
                f12536d = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(256), r);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return f12536d;
    }

    private void g() throws IOException {
        String strSubstring;
        bd bdVar = new bd(new FileInputStream(this.f12538f), b);
        try {
            String strA = bdVar.a();
            String strA2 = bdVar.a();
            String strA3 = bdVar.a();
            String strA4 = bdVar.a();
            String strA5 = bdVar.a();
            if (!"libcore.io.DiskLruCache".equals(strA) || !"1".equals(strA2) || !Integer.toString(this.i).equals(strA3) || !Integer.toString(this.k).equals(strA4) || !"".equals(strA5)) {
                throw new IOException("unexpected journal header: [" + strA + ", " + strA2 + ", " + strA4 + ", " + strA5 + "]");
            }
            byte b2 = 0;
            int i = 0;
            while (true) {
                try {
                    String strA6 = bdVar.a();
                    int iIndexOf = strA6.indexOf(32);
                    if (iIndexOf == -1) {
                        throw new IOException("unexpected journal line: ".concat(String.valueOf(strA6)));
                    }
                    int i2 = iIndexOf + 1;
                    int iIndexOf2 = strA6.indexOf(32, i2);
                    if (iIndexOf2 == -1) {
                        strSubstring = strA6.substring(i2);
                        if (iIndexOf == 6 && strA6.startsWith("REMOVE")) {
                            this.o.remove(strSubstring);
                        }
                        i++;
                    } else {
                        strSubstring = strA6.substring(i2, iIndexOf2);
                    }
                    c cVar = this.o.get(strSubstring);
                    if (cVar == null) {
                        cVar = new c(this, strSubstring, b2);
                        this.o.put(strSubstring, cVar);
                    }
                    if (iIndexOf2 != -1 && iIndexOf == 5 && strA6.startsWith("CLEAN")) {
                        String[] strArrSplit = strA6.substring(iIndexOf2 + 1).split(" ");
                        c.a(cVar);
                        cVar.f12552e = null;
                        c.a(cVar, strArrSplit);
                    } else if (iIndexOf2 == -1 && iIndexOf == 5 && strA6.startsWith("DIRTY")) {
                        cVar.f12552e = new a(this, cVar, b2);
                    } else if (iIndexOf2 != -1 || iIndexOf != 4 || !strA6.startsWith("READ")) {
                        throw new IOException("unexpected journal line: ".concat(String.valueOf(strA6)));
                    }
                    i++;
                } catch (EOFException unused) {
                    this.p = i - this.o.size();
                    a(bdVar);
                    return;
                }
            }
        } catch (Throwable th) {
            a(bdVar);
            throw th;
        }
    }

    private void h() throws IOException {
        a(this.f12539g);
        Iterator<c> it = this.o.values().iterator();
        while (it.hasNext()) {
            c next = it.next();
            int i = 0;
            if (next.f12552e == null) {
                while (i < this.k) {
                    this.l += next.c[i];
                    i++;
                }
            } else {
                next.f12552e = null;
                while (i < this.k) {
                    a(next.a(i));
                    a(next.b(i));
                    i++;
                }
                it.remove();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void i() throws IOException {
        Writer writer = this.m;
        if (writer != null) {
            writer.close();
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f12539g), b));
        try {
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write("\n");
            bufferedWriter.write("1");
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.i));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.k));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (c cVar : this.o.values()) {
                bufferedWriter.write(cVar.f12552e != null ? "DIRTY " + cVar.b + '\n' : "CLEAN " + cVar.b + cVar.a() + '\n');
            }
            bufferedWriter.close();
            if (this.f12538f.exists()) {
                a(this.f12538f, this.f12540h, true);
            }
            a(this.f12539g, this.f12538f, false);
            this.f12540h.delete();
            this.m = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f12538f, true), b));
        } catch (Throwable th) {
            bufferedWriter.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean j() {
        int i = this.p;
        return i >= 2000 && i >= this.o.size();
    }

    private void k() {
        if (this.m == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() throws IOException {
        while (true) {
            if (this.l <= this.j && this.o.size() <= this.n) {
                return;
            } else {
                c(this.o.entrySet().iterator().next().getKey());
            }
        }
    }

    public final synchronized b a(String str) throws IOException {
        k();
        e(str);
        c cVar = this.o.get(str);
        if (cVar == null) {
            return null;
        }
        if (!cVar.f12551d) {
            return null;
        }
        InputStream[] inputStreamArr = new InputStream[this.k];
        for (int i = 0; i < this.k; i++) {
            try {
                inputStreamArr[i] = new FileInputStream(cVar.a(i));
            } catch (FileNotFoundException unused) {
                for (int i2 = 0; i2 < this.k && inputStreamArr[i2] != null; i2++) {
                    a(inputStreamArr[i2]);
                }
                return null;
            }
        }
        this.p++;
        this.m.append((CharSequence) ("READ " + str + '\n'));
        if (j()) {
            f().submit(this.s);
        }
        return new b(this, str, cVar.f12553f, inputStreamArr, cVar.c, (byte) 0);
    }

    public final void a(int i) {
        if (i < 10) {
            i = 10;
        } else if (i > 10000) {
            i = 10000;
        }
        this.n = i;
    }

    public final a b(String str) throws IOException {
        return d(str);
    }

    public final File b() {
        return this.f12537e;
    }

    public final synchronized void c() throws IOException {
        k();
        l();
        this.m.flush();
    }

    public final synchronized boolean c(String str) throws IOException {
        k();
        e(str);
        c cVar = this.o.get(str);
        if (cVar != null && cVar.f12552e == null) {
            for (int i = 0; i < this.k; i++) {
                File fileA = cVar.a(i);
                if (fileA.exists() && !fileA.delete()) {
                    throw new IOException("failed to delete ".concat(String.valueOf(fileA)));
                }
                this.l -= cVar.c[i];
                cVar.c[i] = 0;
            }
            this.p++;
            this.m.append((CharSequence) ("REMOVE " + str + '\n'));
            this.o.remove(str);
            if (j()) {
                f().submit(this.s);
            }
            return true;
        }
        return false;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() throws IOException {
        if (this.m == null) {
            return;
        }
        for (c cVar : new ArrayList(this.o.values())) {
            if (cVar.f12552e != null) {
                cVar.f12552e.c();
            }
        }
        l();
        this.m.close();
        this.m = null;
    }

    public final void d() throws IOException {
        close();
        b(this.f12537e);
    }
}
