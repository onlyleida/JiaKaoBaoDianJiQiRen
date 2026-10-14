package cn.mucang.jiakaoyi.uilib.socket.z;

import cn.mucang.jiakaoyi.uilib.socket.model.LogUploadRequest;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class x extends t<LogUploadRequest> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.z.t
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LogUploadRequest a(int i, ByteBuffer byteBuffer) {
        LogUploadRequest logUploadRequest = new LogUploadRequest();
        logUploadRequest.startTime = byteBuffer.getLong();
        logUploadRequest.endTime = byteBuffer.getLong();
        logUploadRequest.cmdType = byteBuffer.get();
        return logUploadRequest;
    }
}
