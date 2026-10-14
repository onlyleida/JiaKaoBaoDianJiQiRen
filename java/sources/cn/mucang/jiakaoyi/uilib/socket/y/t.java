package cn.mucang.jiakaoyi.uilib.socket.y;

import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.jiakaoyi.uilib.socket.model.LogUploadRequest;

/* JADX INFO: loaded from: classes5.dex */
public class t extends w<LogUploadRequest> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.y.w
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(LogUploadRequest logUploadRequest) {
        cn.mucang.android.jiakaoyi.framework.log.f.o("收到服务器上传日志需求,时间 startTime : " + logUploadRequest.startTime + " ; endTime " + logUploadRequest.endTime);
        cn.mucang.android.jiakaoyi.framework.log.f.u(logUploadRequest.startTime, logUploadRequest.endTime);
        LiveBus.c(logUploadRequest);
        return true;
    }
}
