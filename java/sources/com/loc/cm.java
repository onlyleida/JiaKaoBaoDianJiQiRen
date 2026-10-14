package com.loc;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes4.dex */
public abstract class cm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    co f12684a;
    private ByteBuffer b;

    cm(int i) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i);
        this.b = byteBufferAllocate;
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        this.f12684a = new co(this.b);
    }

    public final cm a() {
        this.f12684a.a(this.b);
        return this;
    }
}
