package com.amap.api.mapcore.util;

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

/* JADX INFO: loaded from: classes5.dex */
public final class z6 implements Closeable {
    static final Pattern p = Pattern.compile("[a-z0-9_-]{1,120}");
    private static final ThreadFactory q;
    static ThreadPoolExecutor r;
    private static final OutputStream s;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final File f11441a;
    private final File b;
    private final File c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final File f11442d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f11443e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f11444f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f11445g;
    private Writer i;
    private int l;
    private a7 m;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f11446h = 0;
    private int j = 1000;
    private final LinkedHashMap<String, f> k = new LinkedHashMap<>(0, 0.75f, true);
    private long n = 0;
    private final Callable<Void> o = new b();

    static class a implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AtomicInteger f11447a = new AtomicInteger(1);

        a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "disklrucache#" + this.f11447a.getAndIncrement());
        }
    }

    class b implements Callable<Void> {
        b() {
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() throws Exception {
            synchronized (z6.this) {
                if (z6.this.i == null) {
                    return null;
                }
                z6.this.M();
                if (z6.this.K()) {
                    z6.this.J();
                    z6.this.l = 0;
                }
                return null;
            }
        }
    }

    static class c extends OutputStream {
        c() {
        }

        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
        }
    }

    public final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final f f11449a;
        private final boolean[] b;
        private boolean c;

        private class a extends FilterOutputStream {
            /* synthetic */ a(d dVar, OutputStream outputStream, a aVar) {
                this(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                try {
                    ((FilterOutputStream) this).out.close();
                } catch (IOException unused) {
                    d.this.c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public void flush() {
                try {
                    ((FilterOutputStream) this).out.flush();
                } catch (IOException unused) {
                    d.this.c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(int i) {
                try {
                    ((FilterOutputStream) this).out.write(i);
                } catch (IOException unused) {
                    d.this.c = true;
                }
            }

            private a(OutputStream outputStream) {
                super(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) {
                try {
                    ((FilterOutputStream) this).out.write(bArr, i, i2);
                } catch (IOException unused) {
                    d.this.c = true;
                }
            }
        }

        /* synthetic */ d(z6 z6Var, f fVar, a aVar) {
            this(fVar);
        }

        public OutputStream b(int i) throws IOException {
            FileOutputStream fileOutputStream;
            a aVar;
            if (i < 0 || i >= z6.this.f11445g) {
                throw new IllegalArgumentException("Expected index " + i + " to be greater than 0 and less than the maximum value count of " + z6.this.f11445g);
            }
            synchronized (z6.this) {
                if (this.f11449a.f11454d != this) {
                    throw new IllegalStateException();
                }
                if (!this.f11449a.c) {
                    this.b[i] = true;
                }
                File fileI = this.f11449a.i(i);
                try {
                    fileOutputStream = new FileOutputStream(fileI);
                } catch (FileNotFoundException unused) {
                    z6.this.f11441a.mkdirs();
                    try {
                        fileOutputStream = new FileOutputStream(fileI);
                    } catch (FileNotFoundException unused2) {
                        return z6.s;
                    }
                }
                aVar = new a(this, fileOutputStream, null);
            }
            return aVar;
        }

        public void c() throws IOException {
            if (!this.c) {
                z6.this.i(this, true);
            } else {
                z6.this.i(this, false);
                z6.this.x(this.f11449a.f11453a);
            }
        }

        public void e() throws IOException {
            z6.this.i(this, false);
        }

        private d(f fVar) {
            this.f11449a = fVar;
            this.b = fVar.c ? null : new boolean[z6.this.f11445g];
        }
    }

    public final class e implements Closeable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final InputStream[] f11452a;

        /* synthetic */ e(z6 z6Var, String str, long j, InputStream[] inputStreamArr, long[] jArr, a aVar) {
            this(z6Var, str, j, inputStreamArr, jArr);
        }

        public InputStream a(int i) {
            return this.f11452a[i];
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (InputStream inputStream : this.f11452a) {
                d7.a(inputStream);
            }
        }

        private e(z6 z6Var, String str, long j, InputStream[] inputStreamArr, long[] jArr) {
            this.f11452a = inputStreamArr;
        }
    }

    private final class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f11453a;
        private final long[] b;
        private boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private d f11454d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f11455e;

        /* synthetic */ f(z6 z6Var, String str, a aVar) {
            this(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void g(String[] strArr) throws IOException {
            if (strArr.length != z6.this.f11445g) {
                j(strArr);
                throw null;
            }
            for (int i = 0; i < strArr.length; i++) {
                try {
                    this.b[i] = Long.parseLong(strArr[i]);
                } catch (NumberFormatException unused) {
                    j(strArr);
                    throw null;
                }
            }
        }

        private IOException j(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public File d(int i) {
            return new File(z6.this.f11441a, this.f11453a + "." + i);
        }

        public String e() throws IOException {
            StringBuilder sb = new StringBuilder();
            for (long j : this.b) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }

        public File i(int i) {
            return new File(z6.this.f11441a, this.f11453a + "." + i + ".tmp");
        }

        private f(String str) {
            this.f11453a = str;
            this.b = new long[z6.this.f11445g];
        }
    }

    static {
        a aVar = new a();
        q = aVar;
        r = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), aVar);
        s = new c();
    }

    private z6(File file, int i, int i2, long j) {
        this.f11441a = file;
        this.f11443e = i;
        this.b = new File(file, "journal");
        this.c = new File(file, "journal.tmp");
        this.f11442d = new File(file, "journal.bkp");
        this.f11445g = i2;
        this.f11444f = j;
    }

    private void D(String str) {
        if (p.matcher(str).matches()) {
            return;
        }
        throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + "\"");
    }

    private void H() throws IOException {
        c7 c7Var = new c7(new FileInputStream(this.b), d7.f10684a);
        try {
            String strA = c7Var.a();
            String strA2 = c7Var.a();
            String strA3 = c7Var.a();
            String strA4 = c7Var.a();
            String strA5 = c7Var.a();
            if (!"libcore.io.DiskLruCache".equals(strA) || !"1".equals(strA2) || !Integer.toString(this.f11443e).equals(strA3) || !Integer.toString(this.f11445g).equals(strA4) || !"".equals(strA5)) {
                throw new IOException("unexpected journal header: [" + strA + ", " + strA2 + ", " + strA4 + ", " + strA5 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    z(c7Var.a());
                    i++;
                } catch (EOFException unused) {
                    this.l = i - this.k.size();
                    d7.a(c7Var);
                    return;
                }
            }
        } catch (Throwable th) {
            d7.a(c7Var);
            throw th;
        }
    }

    private void I() throws IOException {
        k(this.c);
        Iterator<f> it = this.k.values().iterator();
        while (it.hasNext()) {
            f next = it.next();
            int i = 0;
            if (next.f11454d == null) {
                while (i < this.f11445g) {
                    this.f11446h += next.b[i];
                    i++;
                }
            } else {
                next.f11454d = null;
                while (i < this.f11445g) {
                    k(next.d(i));
                    k(next.i(i));
                    i++;
                }
                it.remove();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void J() throws IOException {
        try {
            Writer writer = this.i;
            if (writer != null) {
                writer.close();
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.c), d7.f10684a));
            try {
                bufferedWriter.write("libcore.io.DiskLruCache");
                bufferedWriter.write("\n");
                bufferedWriter.write("1");
                bufferedWriter.write("\n");
                bufferedWriter.write(Integer.toString(this.f11443e));
                bufferedWriter.write("\n");
                bufferedWriter.write(Integer.toString(this.f11445g));
                bufferedWriter.write("\n");
                bufferedWriter.write("\n");
                for (f fVar : this.k.values()) {
                    if (fVar.f11454d != null) {
                        bufferedWriter.write("DIRTY " + fVar.f11453a + '\n');
                    } else {
                        bufferedWriter.write("CLEAN " + fVar.f11453a + fVar.e() + '\n');
                    }
                }
                bufferedWriter.close();
                if (this.b.exists()) {
                    l(this.b, this.f11442d, true);
                }
                l(this.c, this.b, false);
                this.f11442d.delete();
                this.i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.b, true), d7.f10684a));
            } catch (Throwable th) {
                bufferedWriter.close();
                throw th;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean K() {
        int i = this.l;
        return i >= 2000 && i >= this.k.size();
    }

    private void L() {
        if (this.i == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M() throws IOException {
        while (true) {
            if (this.f11446h <= this.f11444f && this.k.size() <= this.j) {
                return;
            }
            String key = this.k.entrySet().iterator().next().getKey();
            x(key);
            a7 a7Var = this.m;
            if (a7Var != null) {
                a7Var.a(key);
            }
        }
    }

    private synchronized d b(String str, long j) throws IOException {
        L();
        D(str);
        f fVar = this.k.get(str);
        a aVar = null;
        if (j != -1 && (fVar == null || fVar.f11455e != j)) {
            return null;
        }
        if (fVar == null) {
            fVar = new f(this, str, aVar);
            this.k.put(str, fVar);
        } else if (fVar.f11454d != null) {
            return null;
        }
        d dVar = new d(this, fVar, aVar);
        fVar.f11454d = dVar;
        this.i.write("DIRTY " + str + '\n');
        this.i.flush();
        return dVar;
    }

    public static z6 d(File file, int i, int i2, long j) throws IOException {
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
                l(file2, file3, false);
            }
        }
        z6 z6Var = new z6(file, i, i2, j);
        if (z6Var.b.exists()) {
            try {
                z6Var.H();
                z6Var.I();
                z6Var.i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(z6Var.b, true), d7.f10684a));
                return z6Var;
            } catch (Throwable unused) {
                z6Var.F();
            }
        }
        file.mkdirs();
        z6 z6Var2 = new z6(file, i, i2, j);
        z6Var2.J();
        return z6Var2;
    }

    public static void g() {
        ThreadPoolExecutor threadPoolExecutor = r;
        if (threadPoolExecutor == null || threadPoolExecutor.isShutdown()) {
            return;
        }
        r.shutdown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void i(d dVar, boolean z) throws IOException {
        f fVar = dVar.f11449a;
        if (fVar.f11454d != dVar) {
            throw new IllegalStateException();
        }
        if (z && !fVar.c) {
            for (int i = 0; i < this.f11445g; i++) {
                if (!dVar.b[i]) {
                    dVar.e();
                    throw new IllegalStateException("Newly created entry didn't create value for index " + i);
                }
                if (!fVar.i(i).exists()) {
                    dVar.e();
                    return;
                }
            }
        }
        for (int i2 = 0; i2 < this.f11445g; i2++) {
            File fileI = fVar.i(i2);
            if (!z) {
                k(fileI);
            } else if (fileI.exists()) {
                File fileD = fVar.d(i2);
                fileI.renameTo(fileD);
                long j = fVar.b[i2];
                long length = fileD.length();
                fVar.b[i2] = length;
                this.f11446h = (this.f11446h - j) + length;
            }
        }
        this.l++;
        fVar.f11454d = null;
        if (fVar.c || z) {
            fVar.c = true;
            this.i.write("CLEAN " + fVar.f11453a + fVar.e() + '\n');
            if (z) {
                long j2 = this.n;
                this.n = 1 + j2;
                fVar.f11455e = j2;
            }
        } else {
            this.k.remove(fVar.f11453a);
            this.i.write("REMOVE " + fVar.f11453a + '\n');
        }
        this.i.flush();
        if (this.f11446h > this.f11444f || K()) {
            p().submit(this.o);
        }
    }

    private static void k(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    private static void l(File file, File file2, boolean z) throws IOException {
        if (z) {
            k(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    public static ThreadPoolExecutor p() {
        try {
            ThreadPoolExecutor threadPoolExecutor = r;
            if (threadPoolExecutor == null || threadPoolExecutor.isShutdown()) {
                r = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(256), q);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return r;
    }

    private void z(String str) throws IOException {
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
                this.k.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i, iIndexOf2);
        }
        f fVar = this.k.get(strSubstring);
        a aVar = null;
        if (fVar == null) {
            fVar = new f(this, strSubstring, aVar);
            this.k.put(strSubstring, fVar);
        }
        if (iIndexOf2 != -1 && iIndexOf == 5 && str.startsWith("CLEAN")) {
            String[] strArrSplit = str.substring(iIndexOf2 + 1).split(" ");
            fVar.c = true;
            fVar.f11454d = null;
            fVar.g(strArrSplit);
            return;
        }
        if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith("DIRTY")) {
            fVar.f11454d = new d(this, fVar, aVar);
            return;
        }
        if (iIndexOf2 == -1 && iIndexOf == 4 && str.startsWith("READ")) {
            return;
        }
        throw new IOException("unexpected journal line: " + str);
    }

    public synchronized boolean A() {
        return this.i == null;
    }

    public synchronized void C() throws IOException {
        L();
        M();
        this.i.flush();
    }

    public void F() throws IOException {
        close();
        d7.b(this.f11441a);
    }

    public synchronized e c(String str) throws IOException {
        L();
        D(str);
        f fVar = this.k.get(str);
        if (fVar == null) {
            return null;
        }
        if (!fVar.c) {
            return null;
        }
        InputStream[] inputStreamArr = new InputStream[this.f11445g];
        for (int i = 0; i < this.f11445g; i++) {
            try {
                inputStreamArr[i] = new FileInputStream(fVar.d(i));
            } catch (FileNotFoundException unused) {
                for (int i2 = 0; i2 < this.f11445g && inputStreamArr[i2] != null; i2++) {
                    d7.a(inputStreamArr[i2]);
                }
                return null;
            }
        }
        this.l++;
        this.i.append((CharSequence) ("READ " + str + '\n'));
        if (K()) {
            p().submit(this.o);
        }
        return new e(this, str, fVar.f11455e, inputStreamArr, fVar.b, null);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        if (this.i == null) {
            return;
        }
        for (f fVar : new ArrayList(this.k.values())) {
            if (fVar.f11454d != null) {
                fVar.f11454d.e();
            }
        }
        M();
        this.i.close();
        this.i = null;
    }

    public void h(int i) {
        if (i < 10) {
            i = 10;
        } else if (i > 10000) {
            i = 10000;
        }
        this.j = i;
    }

    public d n(String str) throws IOException {
        return b(str, -1L);
    }

    public File s() {
        return this.f11441a;
    }

    public synchronized boolean x(String str) throws IOException {
        L();
        D(str);
        f fVar = this.k.get(str);
        if (fVar != null && fVar.f11454d == null) {
            for (int i = 0; i < this.f11445g; i++) {
                File fileD = fVar.d(i);
                if (fileD.exists() && !fileD.delete()) {
                    throw new IOException("failed to delete " + fileD);
                }
                this.f11446h -= fVar.b[i];
                fVar.b[i] = 0;
            }
            this.l++;
            this.i.append((CharSequence) ("REMOVE " + str + '\n'));
            this.k.remove(str);
            if (K()) {
                p().submit(this.o);
            }
            return true;
        }
        return false;
    }
}
