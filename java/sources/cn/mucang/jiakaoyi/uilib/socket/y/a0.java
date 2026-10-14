package cn.mucang.jiakaoyi.uilib.socket.y;

import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.jiakaoyi.uilib.socket.model.ProjectFenceModel;

/* JADX INFO: loaded from: classes5.dex */
public class a0 extends w<ProjectFenceModel> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.y.w
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(ProjectFenceModel projectFenceModel) {
        cn.mucang.android.jiakaoyi.framework.log.f.o("收到项目围栏:" + projectFenceModel.toString());
        LiveBus.c(projectFenceModel);
        return true;
    }
}
