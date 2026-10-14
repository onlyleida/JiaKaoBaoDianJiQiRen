package com.hw.videoprocessor.g;

import android.media.AudioRecord;
import com.google.common.base.Ascii;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f12098a;
    private int b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f12099d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f12100e;

    public f(int i, int i2, int i3, int i4) {
        this.b = 8000;
        this.c = 12;
        this.f12099d = 2;
        this.f12100e = 2;
        this.b = i;
        this.c = i2;
        this.f12099d = i3;
        this.f12100e = i4;
        this.f12098a = AudioRecord.getMinBufferSize(i, i2, i4);
    }

    private void b(FileOutputStream fileOutputStream, long j, long j2, long j3, int i, long j4) throws IOException {
        fileOutputStream.write(new byte[]{82, 73, 70, 70, (byte) (j2 & 255), (byte) ((j2 >> 8) & 255), (byte) ((j2 >> 16) & 255), (byte) ((j2 >> 24) & 255), 87, 65, 86, 69, 102, 109, 116, 32, Ascii.DLE, 0, 0, 0, 1, 0, (byte) i, 0, (byte) (j3 & 255), (byte) ((j3 >> 8) & 255), (byte) ((j3 >> 16) & 255), (byte) ((j3 >> 24) & 255), (byte) (j4 & 255), (byte) ((j4 >> 8) & 255), (byte) ((j4 >> 16) & 255), (byte) ((j4 >> 24) & 255), 4, 0, Ascii.DLE, 0, 100, 97, 116, 97, (byte) (j & 255), (byte) ((j >> 8) & 255), (byte) ((j >> 16) & 255), (byte) ((j >> 24) & 255)}, 0, 44);
    }

    public void a(String str, String str2) {
        int i = this.b;
        long j = i;
        int i2 = this.f12099d;
        long j2 = ((i * 16) * i2) / 8;
        byte[] bArr = new byte[this.f12098a];
        try {
            FileInputStream fileInputStream = new FileInputStream(str);
            FileOutputStream fileOutputStream = new FileOutputStream(str2);
            long size = fileInputStream.getChannel().size();
            b(fileOutputStream, size, size + 36, j, i2, j2);
            while (fileInputStream.read(bArr) != -1) {
                fileOutputStream.write(bArr);
            }
            fileInputStream.close();
            fileOutputStream.close();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }
}
