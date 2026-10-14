package org.extra.relinker;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import com.google.common.primitives.UnsignedBytes;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes6.dex */
public class a implements org.extra.relinker.c.a {

    /* JADX INFO: renamed from: org.extra.relinker.a$a, reason: collision with other inner class name */
    private static class C0372a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ZipFile f16206a;
        public ZipEntry b;

        public C0372a(ZipFile zipFile, ZipEntry zipEntry) {
            this.f16206a = zipFile;
            this.b = zipEntry;
        }
    }

    public class b extends d {
        public b(j jVar, e eVar, long j, int i) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
            byteBufferAllocate.order(eVar.f16208a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
            long j2 = j + ((long) (i * 8));
            this.f16207a = jVar.j(byteBufferAllocate, j2);
            this.b = jVar.j(byteBufferAllocate, j2 + 4);
        }
    }

    public class c extends d {
        public c(j jVar, e eVar, long j, int i) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
            byteBufferAllocate.order(eVar.f16208a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
            long j2 = j + ((long) (i * 16));
            this.f16207a = jVar.h(byteBufferAllocate, j2);
            this.b = jVar.h(byteBufferAllocate, j2 + 8);
        }
    }

    public abstract class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f16207a;
        public long b;
    }

    public abstract class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f16208a;
        public long b;
        public long c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f16209d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f16210e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f16211f;

        public abstract d a(long j, int i);

        public abstract f b(long j);

        public abstract g c(int i);
    }

    public abstract class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f16212a;
        public long b;
        public long c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public long f16213d;
    }

    public abstract class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f16214a;
    }

    public class h extends e {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final j f16215g;

        public h(boolean z, j jVar) throws IOException {
            this.f16208a = z;
            this.f16215g = jVar;
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
            byteBufferAllocate.order(z ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
            jVar.e(byteBufferAllocate, 16L);
            this.b = jVar.j(byteBufferAllocate, 28L);
            this.c = jVar.j(byteBufferAllocate, 32L);
            this.f16209d = jVar.e(byteBufferAllocate, 42L);
            this.f16210e = jVar.e(byteBufferAllocate, 44L);
            this.f16211f = jVar.e(byteBufferAllocate, 46L);
            jVar.e(byteBufferAllocate, 48L);
            jVar.e(byteBufferAllocate, 50L);
        }

        @Override // org.extra.relinker.a.e
        public d a(long j, int i) {
            return new b(this.f16215g, this, j, i);
        }

        @Override // org.extra.relinker.a.e
        public f b(long j) {
            return new k(this.f16215g, this, j);
        }

        @Override // org.extra.relinker.a.e
        public g c(int i) {
            return new m(this.f16215g, this, i);
        }
    }

    public class i extends e {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final j f16216g;

        public i(boolean z, j jVar) throws IOException {
            this.f16208a = z;
            this.f16216g = jVar;
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
            byteBufferAllocate.order(z ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
            jVar.e(byteBufferAllocate, 16L);
            this.b = jVar.h(byteBufferAllocate, 32L);
            this.c = jVar.h(byteBufferAllocate, 40L);
            this.f16209d = jVar.e(byteBufferAllocate, 54L);
            this.f16210e = jVar.e(byteBufferAllocate, 56L);
            this.f16211f = jVar.e(byteBufferAllocate, 58L);
            jVar.e(byteBufferAllocate, 60L);
            jVar.e(byteBufferAllocate, 62L);
        }

        @Override // org.extra.relinker.a.e
        public d a(long j, int i) {
            return new c(this.f16216g, this, j, i);
        }

        @Override // org.extra.relinker.a.e
        public f b(long j) {
            return new l(this.f16216g, this, j);
        }

        @Override // org.extra.relinker.a.e
        public g c(int i) {
            return new n(this.f16216g, this, i);
        }
    }

    public class j implements Closeable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final FileChannel f16217a;

        public j(File file) {
            if (file == null || !file.exists()) {
                throw new IllegalArgumentException("File is null or does not exist");
            }
            this.f16217a = new FileInputStream(file).getChannel();
        }

        private long a(e eVar, long j, long j2) {
            for (long j3 = 0; j3 < j; j3++) {
                f fVarB = eVar.b(j3);
                if (fVarB.f16212a == 1) {
                    long j4 = fVarB.c;
                    if (j4 <= j2 && j2 <= fVarB.f16213d + j4) {
                        return (j2 - j4) + fVarB.b;
                    }
                }
            }
            throw new IllegalStateException("Could not map vma to file offset!");
        }

        public e b() throws IOException {
            this.f16217a.position(0L);
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
            byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
            if (j(byteBufferAllocate, 0L) != 1179403647) {
                throw new IllegalArgumentException("Invalid ELF Magic!");
            }
            short sC = c(byteBufferAllocate, 4L);
            boolean z = c(byteBufferAllocate, 5L) == 2;
            if (sC == 1) {
                return new h(z, this);
            }
            if (sC == 2) {
                return new i(z, this);
            }
            throw new IllegalStateException("Invalid class type!");
        }

        protected short c(ByteBuffer byteBuffer, long j) throws IOException {
            d(byteBuffer, j, 1);
            return (short) (byteBuffer.get() & UnsignedBytes.MAX_VALUE);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f16217a.close();
        }

        protected void d(ByteBuffer byteBuffer, long j, int i) throws IOException {
            byteBuffer.position(0);
            byteBuffer.limit(i);
            long j2 = 0;
            while (j2 < i) {
                int i2 = this.f16217a.read(byteBuffer, j + j2);
                if (i2 == -1) {
                    throw new EOFException();
                }
                j2 += (long) i2;
            }
            byteBuffer.position(0);
        }

        protected int e(ByteBuffer byteBuffer, long j) throws IOException {
            d(byteBuffer, j, 2);
            return byteBuffer.getShort() & 65535;
        }

        public List<String> g() throws IOException {
            long j;
            this.f16217a.position(0L);
            ArrayList arrayList = new ArrayList();
            e eVarB = b();
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
            byteBufferAllocate.order(eVarB.f16208a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
            long j2 = eVarB.f16210e;
            int i = 0;
            if (j2 == 65535) {
                j2 = eVarB.c(0).f16214a;
            }
            long j3 = 0;
            while (true) {
                if (j3 >= j2) {
                    j = 0;
                    break;
                }
                f fVarB = eVarB.b(j3);
                if (fVarB.f16212a == 2) {
                    j = fVarB.b;
                    break;
                }
                j3++;
            }
            if (j == 0) {
                return Collections.unmodifiableList(arrayList);
            }
            ArrayList arrayList2 = new ArrayList();
            long j4 = 0;
            while (true) {
                d dVarA = eVarB.a(j, i);
                long j5 = j;
                long j6 = dVarA.f16207a;
                if (j6 == 1) {
                    arrayList2.add(Long.valueOf(dVarA.b));
                } else if (j6 == 5) {
                    j4 = dVarA.b;
                }
                i++;
                if (dVarA.f16207a == 0) {
                    break;
                }
                j = j5;
            }
            if (j4 == 0) {
                throw new IllegalStateException("String table offset not found!");
            }
            long jA = a(eVarB, j2, j4);
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                arrayList.add(i(byteBufferAllocate, ((Long) it.next()).longValue() + jA));
            }
            return arrayList;
        }

        protected long h(ByteBuffer byteBuffer, long j) throws IOException {
            d(byteBuffer, j, 8);
            return byteBuffer.getLong();
        }

        protected String i(ByteBuffer byteBuffer, long j) throws IOException {
            StringBuilder sb = new StringBuilder();
            while (true) {
                long j2 = 1 + j;
                short sC = c(byteBuffer, j);
                if (sC == 0) {
                    return sb.toString();
                }
                sb.append((char) sC);
                j = j2;
            }
        }

        protected long j(ByteBuffer byteBuffer, long j) throws IOException {
            d(byteBuffer, j, 4);
            return ((long) byteBuffer.getInt()) & 4294967295L;
        }
    }

    public class k extends f {
        public k(j jVar, e eVar, long j) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
            byteBufferAllocate.order(eVar.f16208a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
            long j2 = eVar.b + (j * ((long) eVar.f16209d));
            this.f16212a = jVar.j(byteBufferAllocate, j2);
            this.b = jVar.j(byteBufferAllocate, 4 + j2);
            this.c = jVar.j(byteBufferAllocate, 8 + j2);
            this.f16213d = jVar.j(byteBufferAllocate, j2 + 20);
        }
    }

    public class l extends f {
        public l(j jVar, e eVar, long j) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
            byteBufferAllocate.order(eVar.f16208a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
            long j2 = eVar.b + (j * ((long) eVar.f16209d));
            this.f16212a = jVar.j(byteBufferAllocate, j2);
            this.b = jVar.h(byteBufferAllocate, 8 + j2);
            this.c = jVar.h(byteBufferAllocate, 16 + j2);
            this.f16213d = jVar.h(byteBufferAllocate, j2 + 40);
        }
    }

    public class m extends g {
        public m(j jVar, e eVar, int i) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
            byteBufferAllocate.order(eVar.f16208a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
            this.f16214a = jVar.j(byteBufferAllocate, eVar.c + ((long) (i * eVar.f16211f)) + 28);
        }
    }

    public class n extends g {
        public n(j jVar, e eVar, int i) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
            byteBufferAllocate.order(eVar.f16208a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
            this.f16214a = jVar.j(byteBufferAllocate, eVar.c + ((long) (i * eVar.f16211f)) + 44);
        }
    }

    private long b(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[4096];
        long j2 = 0;
        while (true) {
            int i2 = inputStream.read(bArr);
            if (i2 == -1) {
                outputStream.flush();
                return j2;
            }
            outputStream.write(bArr, 0, i2);
            j2 += (long) i2;
        }
    }

    private C0372a c(Context context, String[] strArr, String str, org.extra.relinker.d dVar) {
        int i2;
        String[] strArrE = e(context);
        int length = strArrE.length;
        char c2 = 0;
        ZipFile zipFile = null;
        int i3 = 0;
        while (i3 < length) {
            String str2 = strArrE[i3];
            int i4 = 0;
            while (true) {
                int i5 = i4 + 1;
                i2 = 5;
                if (i4 >= 5) {
                    break;
                }
                try {
                    zipFile = new ZipFile(new File(str2), 1);
                    break;
                } catch (IOException unused) {
                    i4 = i5;
                }
            }
            if (zipFile != null) {
                int i6 = 0;
                while (true) {
                    int i7 = i6 + 1;
                    if (i6 >= i2) {
                        try {
                            zipFile.close();
                            break;
                        } catch (IOException unused2) {
                            break;
                        }
                    }
                    int length2 = strArr.length;
                    int i8 = 0;
                    while (i8 < length2) {
                        String str3 = "lib" + File.separatorChar + strArr[i8] + File.separatorChar + str;
                        Object[] objArr = new Object[2];
                        objArr[c2] = str3;
                        objArr[1] = str2;
                        dVar.f("Looking for %s in APK %s...", objArr);
                        ZipEntry entry = zipFile.getEntry(str3);
                        if (entry != null) {
                            return new C0372a(zipFile, entry);
                        }
                        i8++;
                        c2 = 0;
                    }
                    i6 = i7;
                    i2 = 5;
                }
            }
            i3++;
            c2 = 0;
        }
        return null;
    }

    private void d(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    private String[] e(Context context) {
        String[] strArr;
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (Build.VERSION.SDK_INT < 21 || (strArr = applicationInfo.splitSourceDirs) == null || strArr.length == 0) {
            return new String[]{applicationInfo.sourceDir};
        }
        String[] strArr2 = new String[strArr.length + 1];
        strArr2[0] = applicationInfo.sourceDir;
        System.arraycopy(strArr, 0, strArr2, 1, strArr.length);
        return strArr2;
    }

    @Override // org.extra.relinker.c.a
    public void a(Context context, String[] strArr, String str, File file, org.extra.relinker.d dVar) throws Throwable {
        InputStream inputStream;
        FileOutputStream fileOutputStream;
        C0372a c0372a = null;
        closeable = null;
        Closeable closeable = null;
        try {
            C0372a c0372aC = c(context, strArr, str, dVar);
            try {
                if (c0372aC == null) {
                    throw new org.extra.relinker.b(str);
                }
                int i2 = 0;
                while (true) {
                    int i3 = i2 + 1;
                    if (i2 >= 5) {
                        dVar.e("FATAL! Couldn't extract the library from the APK!");
                        if (c0372aC != null) {
                            try {
                                ZipFile zipFile = c0372aC.f16206a;
                                if (zipFile != null) {
                                    zipFile.close();
                                    return;
                                }
                                return;
                            } catch (IOException unused) {
                                return;
                            }
                        }
                        return;
                    }
                    dVar.f("Found %s! Extracting...", str);
                    try {
                        if (file.exists() || file.createNewFile()) {
                            try {
                                inputStream = c0372aC.f16206a.getInputStream(c0372aC.b);
                                try {
                                    fileOutputStream = new FileOutputStream(file);
                                    try {
                                        long jB = b(inputStream, fileOutputStream);
                                        fileOutputStream.getFD().sync();
                                        if (jB == file.length()) {
                                            d(inputStream);
                                            d(fileOutputStream);
                                            file.setReadable(true, false);
                                            file.setExecutable(true, false);
                                            file.setWritable(true);
                                            if (c0372aC != null) {
                                                try {
                                                    ZipFile zipFile2 = c0372aC.f16206a;
                                                    if (zipFile2 != null) {
                                                        zipFile2.close();
                                                        return;
                                                    }
                                                    return;
                                                } catch (IOException unused2) {
                                                    return;
                                                }
                                            }
                                            return;
                                        }
                                        d(inputStream);
                                        d(fileOutputStream);
                                    } catch (FileNotFoundException | IOException unused3) {
                                        d(inputStream);
                                    } catch (Throwable th) {
                                        th = th;
                                        closeable = fileOutputStream;
                                        d(inputStream);
                                        d(closeable);
                                        throw th;
                                    }
                                } catch (FileNotFoundException unused4) {
                                    fileOutputStream = null;
                                } catch (IOException unused5) {
                                    fileOutputStream = null;
                                } catch (Throwable th2) {
                                    th = th2;
                                }
                            } catch (FileNotFoundException unused6) {
                                inputStream = null;
                                fileOutputStream = null;
                            } catch (IOException unused7) {
                                inputStream = null;
                                fileOutputStream = null;
                            } catch (Throwable th3) {
                                th = th3;
                                inputStream = null;
                            }
                        }
                    } catch (IOException unused8) {
                    }
                    i2 = i3;
                }
            } catch (Throwable th4) {
                th = th4;
                c0372a = c0372aC;
                if (c0372a != null) {
                    try {
                        ZipFile zipFile3 = c0372a.f16206a;
                        if (zipFile3 != null) {
                            zipFile3.close();
                        }
                    } catch (IOException unused9) {
                    }
                }
                throw th;
            }
        } catch (Throwable th5) {
            th = th5;
        }
    }
}
