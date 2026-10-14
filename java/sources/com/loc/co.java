package com.loc;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes4.dex */
public final class co extends fr {
    co(ByteBuffer byteBuffer) {
        super(byteBuffer);
    }

    @Override // com.loc.fr
    public final int a(CharSequence charSequence) {
        try {
            return super.a(charSequence);
        } catch (Throwable th) {
            ea.a(th);
            return super.a("");
        }
    }
}
