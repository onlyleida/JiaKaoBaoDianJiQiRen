package cn.mucang.jiakaoyi.uilib.socket.z;

import cn.mucang.jiakaoyi.uilib.socket.model.AutoShuttleCancelModel;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class a extends t<AutoShuttleCancelModel> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.z.t
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public AutoShuttleCancelModel a(int i, ByteBuffer byteBuffer) {
        return new AutoShuttleCancelModel(byteBuffer.getLong());
    }
}
