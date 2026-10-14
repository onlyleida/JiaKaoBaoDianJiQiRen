package com.amap.api.mapcore.util;

import android.text.TextUtils;
import com.iflytek.speech.VoiceWakeuperAidl;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.zip.CRC32;
import java.util.zip.CheckedInputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: classes5.dex */
public class y0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f11353a;

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f11355a = false;
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f11356a;
        private String b;
        private u0 c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private b f11357d = new b();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f11358e;

        public c(v0 v0Var, u0 u0Var) {
            this.c = null;
            this.f11356a = v0Var.j();
            this.b = v0Var.k();
            this.c = u0Var;
        }

        public String a() {
            return this.f11356a;
        }

        public void b(String str) {
            if (str.length() > 1) {
                this.f11358e = str;
            }
        }

        public String c() {
            return this.b;
        }

        public String d() {
            return this.f11358e;
        }

        public u0 e() {
            return this.c;
        }

        public b f() {
            return this.f11357d;
        }

        public void g() {
            this.f11357d.f11355a = true;
        }
    }

    public interface d {
        void a();

        void a(long j);
    }

    public y0(v0 v0Var, u0 u0Var) {
        this.f11353a = new c(v0Var, u0Var);
    }

    private static int a(File file, ZipInputStream zipInputStream, long j, long j2, d dVar, b bVar) throws Exception {
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
        byte[] bArr = new byte[1024];
        int i = 0;
        while (true) {
            int i2 = zipInputStream.read(bArr, 0, 1024);
            if (i2 == -1) {
                bufferedOutputStream.close();
                return i;
            }
            if (bVar != null && bVar.f11355a) {
                bufferedOutputStream.close();
                return i;
            }
            bufferedOutputStream.write(bArr, 0, i2);
            i += i2;
            if (j2 > 0 && dVar != null) {
                long j3 = ((((long) i) + j) * 100) / j2;
                if (bVar == null || !bVar.f11355a) {
                    dVar.a(j3);
                }
            }
        }
    }

    private static void c(c cVar) {
        if (cVar == null) {
            return;
        }
        u0 u0VarE = cVar.e();
        if (u0VarE != null) {
            u0VarE.f();
        }
        String strA = cVar.a();
        String strC = cVar.c();
        if (TextUtils.isEmpty(strA) || TextUtils.isEmpty(strC)) {
            if (cVar.f().f11355a) {
                if (u0VarE != null) {
                    u0VarE.h();
                    return;
                }
                return;
            } else {
                if (u0VarE != null) {
                    u0VarE.g();
                    return;
                }
                return;
            }
        }
        File file = new File(strA);
        if (!file.exists()) {
            if (cVar.f().f11355a) {
                if (u0VarE != null) {
                    u0VarE.h();
                    return;
                }
                return;
            } else {
                if (u0VarE != null) {
                    u0VarE.g();
                    return;
                }
                return;
            }
        }
        File file2 = new File(strC);
        if (!file2.exists()) {
            file2.mkdirs();
        }
        a aVar = new a(u0VarE);
        try {
            if (cVar.f().f11355a && u0VarE != null) {
                u0VarE.h();
            }
            e(file, file2, aVar, cVar);
            if (cVar.f().f11355a) {
                if (u0VarE != null) {
                    u0VarE.h();
                }
            } else if (u0VarE != null) {
                u0VarE.b(cVar.d());
            }
        } catch (Throwable unused) {
            if (cVar.f().f11355a) {
                if (u0VarE != null) {
                    u0VarE.h();
                }
            } else if (u0VarE != null) {
                u0VarE.g();
            }
        }
    }

    private static void d(File file) {
        File parentFile = file.getParentFile();
        if (parentFile.exists()) {
            return;
        }
        d(parentFile);
        parentFile.mkdir();
    }

    private static void e(File file, File file2, d dVar, c cVar) throws Exception {
        StringBuffer stringBuffer = new StringBuffer();
        b bVarF = cVar.f();
        long size = 0;
        if (dVar != null) {
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                CheckedInputStream checkedInputStream = new CheckedInputStream(fileInputStream, new CRC32());
                ZipInputStream zipInputStream = new ZipInputStream(checkedInputStream);
                while (true) {
                    ZipEntry nextEntry = zipInputStream.getNextEntry();
                    if (nextEntry != null) {
                        if (bVarF != null && bVarF.f11355a) {
                            zipInputStream.closeEntry();
                            zipInputStream.close();
                            checkedInputStream.close();
                            fileInputStream.close();
                            break;
                        }
                        if (!nextEntry.isDirectory()) {
                            if (!g(nextEntry.getName())) {
                                dVar.a();
                                break;
                            } else {
                                stringBuffer.append(nextEntry.getName());
                                stringBuffer.append(VoiceWakeuperAidl.PARAMS_SEPARATE);
                            }
                        }
                        size += nextEntry.getSize();
                        zipInputStream.closeEntry();
                    } else {
                        break;
                    }
                }
                cVar.b(stringBuffer.toString());
                zipInputStream.close();
                checkedInputStream.close();
                fileInputStream.close();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        FileInputStream fileInputStream2 = new FileInputStream(file);
        CheckedInputStream checkedInputStream2 = new CheckedInputStream(fileInputStream2, new CRC32());
        ZipInputStream zipInputStream2 = new ZipInputStream(checkedInputStream2);
        f(file2, zipInputStream2, size, dVar, bVarF);
        zipInputStream2.close();
        checkedInputStream2.close();
        fileInputStream2.close();
    }

    private static void f(File file, ZipInputStream zipInputStream, long j, d dVar, b bVar) throws Exception {
        int iA = 0;
        while (true) {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            if (nextEntry == null) {
                return;
            }
            if (bVar != null && bVar.f11355a) {
                zipInputStream.closeEntry();
                return;
            }
            String str = file.getPath() + File.separator + nextEntry.getName();
            if (!g(nextEntry.getName())) {
                if (dVar != null) {
                    dVar.a();
                    return;
                }
                return;
            } else {
                File file2 = new File(str);
                d(file2);
                if (nextEntry.isDirectory()) {
                    file2.mkdirs();
                } else {
                    iA += a(file2, zipInputStream, iA, j, dVar, bVar);
                }
                zipInputStream.closeEntry();
            }
        }
    }

    private static boolean g(String str) {
        return (str.contains("..") || str.contains("/") || str.contains("\\") || str.contains("%")) ? false : true;
    }

    public void b() {
        c cVar = this.f11353a;
        if (cVar != null) {
            cVar.g();
        }
    }

    public void h() {
        c cVar = this.f11353a;
        if (cVar != null) {
            c(cVar);
        }
    }

    static class a implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ u0 f11354a;

        a(u0 u0Var) {
            this.f11354a = u0Var;
        }

        @Override // com.amap.api.mapcore.util.y0.d
        public void a(long j) {
            try {
                u0 u0Var = this.f11354a;
                if (u0Var != null) {
                    u0Var.a(j);
                }
            } catch (Exception unused) {
            }
        }

        @Override // com.amap.api.mapcore.util.y0.d
        public void a() {
            u0 u0Var = this.f11354a;
            if (u0Var != null) {
                u0Var.g();
            }
        }
    }
}
