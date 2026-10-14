package cn.mucang.sundial.android.tcp.message.handler;

import cn.mucang.android.core.utils.t;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.message.SendMessage;
import cn.mucang.sundial.android.tcp.message.training.receive.ReportQueryPhotoResponseResponse;
import cn.mucang.sundial.android.tcp.utils.ProtocolConfig;

/* JADX INFO: loaded from: classes5.dex */
public class ReportQueryPhotoResponseMessageHandler extends BaseMessageHandler<ReportQueryPhotoResponseResponse> {
    @Override // cn.mucang.sundial.android.tcp.message.handler.MessageHandler
    public SendMessage handleMessage(ReportQueryPhotoResponseResponse reportQueryPhotoResponseResponse) {
        if (reportQueryPhotoResponseResponse.getResponseCode() == 1) {
            t.h(ProtocolConfig.SUNDIAL, "上报照片查询结果应答,停止上报...");
            SundialLog.com("上报照片查询结果应答,停止上报...");
            return null;
        }
        t.h(ProtocolConfig.SUNDIAL, "上报照片查询结果应答,可以上报,等待后续指令...");
        SundialLog.com("上报照片查询结果应答,可以上报,等待后续指令...");
        return null;
    }
}
