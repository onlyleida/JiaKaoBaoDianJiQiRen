package cn.mucang.jiakaoyi.uilib.socket.z;

import cn.mucang.jiakaoyi.uilib.socket.model.LogDebugRequest;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class l extends t<LogDebugRequest> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.z.t
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LogDebugRequest a(int i, ByteBuffer byteBuffer) {
        LogDebugRequest logDebugRequest = new LogDebugRequest();
        logDebugRequest.cmd = byteBuffer.get();
        return logDebugRequest;
    }
}
