package com.tencent.open.utils;

/* JADX INFO: loaded from: classes6.dex */
public final class m implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f14175a;

    public m(long j) {
        this.f14175a = j;
    }

    public byte[] a() {
        long j = this.f14175a;
        return new byte[]{(byte) (255 & j), (byte) ((65280 & j) >> 8), (byte) ((16711680 & j) >> 16), (byte) ((j & 4278190080L) >> 24)};
    }

    public long b() {
        return this.f14175a;
    }

    public boolean equals(Object obj) {
        return obj != null && (obj instanceof m) && this.f14175a == ((m) obj).b();
    }

    public int hashCode() {
        return (int) this.f14175a;
    }
}
