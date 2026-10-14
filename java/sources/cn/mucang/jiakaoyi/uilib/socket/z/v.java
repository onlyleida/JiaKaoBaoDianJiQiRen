package cn.mucang.jiakaoyi.uilib.socket.z;

import cn.mucang.jiakaoyi.uilib.socket.model.SafeModel;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class v extends t<SafeModel> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.z.t
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public SafeModel a(int i, ByteBuffer byteBuffer) {
        return new SafeModel(byteBuffer.get(), byteBuffer.get());
    }
}
