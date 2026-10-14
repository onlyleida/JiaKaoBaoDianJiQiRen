package cn.mucang.jiakaoyi.uilib.socket.z;

import cn.mucang.jiakaoyi.uilib.socket.model.SwitchSafeModel;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class c0 extends t<SwitchSafeModel> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.z.t
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public SwitchSafeModel a(int i, ByteBuffer byteBuffer) {
        return new SwitchSafeModel(byteBuffer.get() == 1, byteBuffer.getInt());
    }
}
