package com.amap.api.mapcore.util;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

/* JADX INFO: loaded from: classes5.dex */
class s0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    RandomAccessFile f11158a;

    public s0(String str, long j) throws IOException {
        File file = new File(str);
        if (!file.exists()) {
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            try {
                if (!file.exists()) {
                    file.createNewFile();
                }
            } catch (IOException e2) {
                e6.r(e2, "FileAccessI", "create");
                e2.printStackTrace();
            }
        }
        RandomAccessFile randomAccessFile = new RandomAccessFile(str, "rw");
        this.f11158a = randomAccessFile;
        randomAccessFile.seek(j);
    }

    public synchronized int a(byte[] bArr) throws IOException {
        this.f11158a.write(bArr);
        return bArr.length;
    }

    public void b() {
        RandomAccessFile randomAccessFile = this.f11158a;
        if (randomAccessFile != null) {
            try {
                randomAccessFile.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            this.f11158a = null;
        }
    }
}
