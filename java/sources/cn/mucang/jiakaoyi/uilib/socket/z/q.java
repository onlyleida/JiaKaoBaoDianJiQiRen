package cn.mucang.jiakaoyi.uilib.socket.z;

import cn.mucang.jiakaoyi.uilib.socket.model.HeartModel;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class q extends t<HeartModel> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.z.t
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public HeartModel a(int i, ByteBuffer byteBuffer) {
        HeartModel heartModel = new HeartModel(i);
        heartModel.index = byteBuffer.getInt();
        return heartModel;
    }
}
