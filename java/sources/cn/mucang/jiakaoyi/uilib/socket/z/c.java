package cn.mucang.jiakaoyi.uilib.socket.z;

import cn.mucang.jiakaoyi.uilib.socket.model.AutoShuttleStartModel;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class c extends t<AutoShuttleStartModel> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.z.t
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public AutoShuttleStartModel a(int i, ByteBuffer byteBuffer) {
        return new AutoShuttleStartModel(byteBuffer.getLong(), byteBuffer.getLong());
    }
}
