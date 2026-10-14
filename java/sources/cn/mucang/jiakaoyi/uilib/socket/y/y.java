package cn.mucang.jiakaoyi.uilib.socket.y;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.jiakaoyi.uilib.socket.model.LoginStudent;

/* JADX INFO: loaded from: classes5.dex */
public class y extends w<LoginStudent> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.y.w
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(LoginStudent loginStudent) {
        cn.mucang.android.core.utils.t.d("MCMessageHandler", "收到学员登录消息：" + loginStudent.studentId);
        cn.mucang.android.jiakaoyi.framework.log.f.o("收到学员登录消息：" + loginStudent.studentId);
        if (MucangConfig.v()) {
            cn.mucang.android.core.utils.u.h("收到学员登录消息：" + loginStudent.studentId);
        }
        LiveBus.d(LoginStudent.class).l(loginStudent);
        return true;
    }
}
