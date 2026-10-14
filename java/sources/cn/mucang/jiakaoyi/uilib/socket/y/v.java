package cn.mucang.jiakaoyi.uilib.socket.y;

import cn.mucang.jiakaoyi.uilib.socket.model.LogoutModel;

/* JADX INFO: loaded from: classes5.dex */
public class v extends w<LogoutModel> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.y.w
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(LogoutModel logoutModel) {
        cn.mucang.jiakaoyi.uilib.socket.t.a().i("收到服务器下线通知:" + logoutModel.reason);
        cn.mucang.android.core.utils.u.h("收到下线通知:" + logoutModel.reason);
        return true;
    }
}
