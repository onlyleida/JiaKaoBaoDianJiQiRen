package cn.mucang.jiakaoyi.uilib.socket.y;

import cn.mucang.jiakaoyi.uilib.socket.model.ReLoginModel;

/* JADX INFO: loaded from: classes5.dex */
public class o extends w<ReLoginModel> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.y.w
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(final ReLoginModel reLoginModel) {
        cn.mucang.android.core.utils.t.h("MCSocketManager", "收到gps服务器重连消息");
        cn.mucang.android.core.utils.u.d(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.socket.y.a
            @Override // java.lang.Runnable
            public final void run() {
                ReLoginModel reLoginModel2 = reLoginModel;
                cn.mucang.jiakaoyi.uilib.socket.t.b().E(reLoginModel2.host, reLoginModel2.port);
            }
        }, 1000L);
        return true;
    }
}
