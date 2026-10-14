package cn.mucang.sundial.android.tcp.message.handler;

import cn.mucang.sundial.android.tcp.TimeoutManager;
import cn.mucang.sundial.android.tcp.message.SendMessage;
import cn.mucang.sundial.android.tcp.message.training.receive.ReportVehicleBindResponse;

/* JADX INFO: loaded from: classes5.dex */
public class ReportVehicleBindMessageHandler extends BaseMessageHandler<ReportVehicleBindResponse> {
    @Override // cn.mucang.sundial.android.tcp.message.handler.MessageHandler
    public SendMessage handleMessage(ReportVehicleBindResponse reportVehicleBindResponse) {
        TimeoutManager.getInstance().onMessageReply(1027, true);
        return null;
    }
}
