package cn.mucang.jiakaoyi.uilib.socket.z;

import cn.mucang.jiakaoyi.uilib.socket.model.RemoteBrakeModel;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class h extends t<RemoteBrakeModel> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.z.t
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public RemoteBrakeModel a(int i, ByteBuffer byteBuffer) {
        return new RemoteBrakeModel(byteBuffer.get());
    }
}
