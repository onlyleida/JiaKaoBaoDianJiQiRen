package cn.mucang.jiakaoyi.uilib.socket.z;

import cn.mucang.jiakaoyi.uilib.socket.model.LoginStudent;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class w extends t<LoginStudent> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.z.t
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LoginStudent a(int i, ByteBuffer byteBuffer) {
        return new LoginStudent(new String(byteBuffer.array()), System.currentTimeMillis());
    }
}
