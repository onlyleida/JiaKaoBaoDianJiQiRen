package com.felhr.usbserial;

import java.nio.ByteBuffer;
import okio.Buffer;

/* JADX INFO: loaded from: classes5.dex */
public class g {

    private class a {
        a(g gVar) {
            new Buffer();
        }
    }

    public g(boolean z) {
        new a(this);
        if (z) {
            ByteBuffer.allocate(16384);
        }
    }
}
