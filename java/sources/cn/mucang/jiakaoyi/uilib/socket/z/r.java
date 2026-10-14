package cn.mucang.jiakaoyi.uilib.socket.z;

import cn.mucang.jiakaoyi.uilib.socket.model.LoginRespModel;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class r extends t<LoginRespModel> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.z.t
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LoginRespModel a(int i, ByteBuffer byteBuffer) {
        return new LoginRespModel(byteBuffer.getInt());
    }
}
