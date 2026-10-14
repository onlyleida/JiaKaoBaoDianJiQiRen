package com.iflytek.cloud.record;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

/* JADX INFO: loaded from: classes4.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private RandomAccessFile f12410a;
    private short b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private short f12411d;

    public d(File file, int i) throws IOException {
        a(file, (short) 1, i, (short) 16);
    }

    private boolean a(File file, short s, int i, short s2) throws IOException {
        if (file == null) {
            return false;
        }
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        this.f12410a = randomAccessFile;
        this.b = s;
        this.c = i;
        this.f12411d = s2;
        randomAccessFile.write(new byte[44]);
        return true;
    }

    public int b() throws IOException {
        return (int) (this.f12410a.length() - 44);
    }

    public void c() throws IOException {
        this.f12410a.seek(0L);
        a("RIFF");
        a(b() + 36);
        a("WAVE");
        a("fmt ");
        a(16);
        a((short) 1);
        a(this.b);
        a(this.c);
        a(((this.b * this.c) * this.f12411d) / 8);
        a((short) ((this.b * this.f12411d) / 8));
        a(this.f12411d);
        a("data");
        a(b());
    }

    public void a(String str) throws IOException {
        for (int i = 0; i < str.length(); i++) {
            this.f12410a.write(str.charAt(i));
        }
    }

    public void a(int i) throws IOException {
        this.f12410a.write(i >> 0);
        this.f12410a.write(i >> 8);
        this.f12410a.write(i >> 16);
        this.f12410a.write(i >> 24);
    }

    public void a(short s) throws IOException {
        this.f12410a.write(s >> 0);
        this.f12410a.write(s >> 8);
    }

    public void a() throws IOException {
        RandomAccessFile randomAccessFile = this.f12410a;
        if (randomAccessFile != null) {
            randomAccessFile.close();
            this.f12410a = null;
        }
    }
}
