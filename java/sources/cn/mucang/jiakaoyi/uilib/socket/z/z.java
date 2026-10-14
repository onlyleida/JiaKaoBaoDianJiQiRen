package cn.mucang.jiakaoyi.uilib.socket.z;

import cn.mucang.jiakaoyi.uilib.socket.model.ProjectFenceModel;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class z extends t<ProjectFenceModel> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.z.t
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ProjectFenceModel a(int i, ByteBuffer byteBuffer) {
        return new ProjectFenceModel(byteBuffer.getLong(), byteBuffer.get(), byteBuffer.getInt());
    }
}
