package cn.mucang.jiakaoyi.uilib.socket.y;

import cn.mucang.jiakaoyi.uilib.socket.model.LoginRespModel;

/* JADX INFO: loaded from: classes5.dex */
public class u extends w<LoginRespModel> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.y.w
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(LoginRespModel loginRespModel) {
        cn.mucang.android.core.utils.t.d("MCLoginRespMsgHandler", "收到登陆标记：" + loginRespModel.isSuccess());
        return true;
    }
}
