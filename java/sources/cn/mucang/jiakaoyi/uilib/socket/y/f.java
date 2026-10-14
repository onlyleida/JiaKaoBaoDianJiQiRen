package cn.mucang.jiakaoyi.uilib.socket.y;

import cn.mucang.jiakaoyi.uilib.socket.model.CmdModel;

/* JADX INFO: loaded from: classes5.dex */
public class f extends w<CmdModel> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.y.w
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(CmdModel cmdModel) {
        cn.mucang.android.jiakaoyi.framework.log.f.f("收到cmd:" + cmdModel.cmd + ",type=" + ((int) cmdModel.cmdType) + ",id=" + cmdModel.id);
        cn.mucang.jiakaoyi.uilib.socket.w.b.c(cmdModel);
        return true;
    }
}
