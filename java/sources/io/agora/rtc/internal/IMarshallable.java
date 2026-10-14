package io.agora.rtc.internal;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
interface IMarshallable {
    void marshall(ByteBuffer byteBuffer);

    byte[] marshall();

    void unmarshall(ByteBuffer byteBuffer);

    void unmarshall(byte[] bArr);
}
