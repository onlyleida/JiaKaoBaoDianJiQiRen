package cn.mucang.sundial.android.log.write;

/* JADX INFO: loaded from: classes5.dex */
public interface LogWriter {
    long entityId();

    void stop();

    void write(Object obj, long j) throws Throwable;

    void write(byte[] bArr, String str, long j) throws Throwable;
}
