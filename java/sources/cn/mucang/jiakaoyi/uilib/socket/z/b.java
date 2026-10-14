package cn.mucang.jiakaoyi.uilib.socket.z;

import cn.mucang.jiakaoyi.uilib.socket.model.AutoShuttleGetDisModel;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class b extends t<AutoShuttleGetDisModel> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.z.t
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public AutoShuttleGetDisModel a(int i, ByteBuffer byteBuffer) {
        return new AutoShuttleGetDisModel(byteBuffer.getLong());
    }
}
