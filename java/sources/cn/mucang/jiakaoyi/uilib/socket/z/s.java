package cn.mucang.jiakaoyi.uilib.socket.z;

import cn.mucang.jiakaoyi.uilib.socket.model.LogoutModel;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class s extends t<LogoutModel> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.z.t
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LogoutModel a(int i, ByteBuffer byteBuffer) {
        return new LogoutModel(new String(byteBuffer.array()));
    }
}
