package cn.mucang.jiakaoyi.uilib.socket.z;

import cn.mucang.jiakaoyi.uilib.socket.model.SafeModeModel;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class b0 extends t<SafeModeModel> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.z.t
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public SafeModeModel a(int i, ByteBuffer byteBuffer) {
        return new SafeModeModel(byteBuffer.get());
    }
}
