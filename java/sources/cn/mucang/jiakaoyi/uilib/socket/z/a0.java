package cn.mucang.jiakaoyi.uilib.socket.z;

import cn.mucang.jiakaoyi.uilib.socket.model.PushSwitchModel;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class a0 extends t<PushSwitchModel> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.z.t
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public PushSwitchModel a(int i, ByteBuffer byteBuffer) {
        return new PushSwitchModel(byteBuffer.get() == 1);
    }
}
