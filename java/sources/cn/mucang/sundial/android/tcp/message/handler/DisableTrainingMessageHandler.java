package cn.mucang.sundial.android.tcp.message.handler;

import cn.mucang.android.core.utils.t;
import cn.mucang.sundial.android.eventbus.LiveBus;
import cn.mucang.sundial.android.eventbus.event.DisableTrainingEvent;
import cn.mucang.sundial.android.eventbus.event.TtsEvent;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.data.DataManager;
import cn.mucang.sundial.android.tcp.message.SendMessage;
import cn.mucang.sundial.android.tcp.message.training.receive.DisableTrainingRequest;
import cn.mucang.sundial.android.tcp.message.training.send.DisableTrainingResponse;
import cn.mucang.sundial.android.tcp.utils.ProtocolConfig;

/* JADX INFO: loaded from: classes5.dex */
public class DisableTrainingMessageHandler extends BaseMessageHandler<DisableTrainingRequest> {
    @Override // cn.mucang.sundial.android.tcp.message.handler.MessageHandler
    public SendMessage handleMessage(DisableTrainingRequest disableTrainingRequest) {
        t.h(ProtocolConfig.SUNDIAL, "收到禁训的消息。。。");
        SundialLog.com("收到禁训的消息。。。");
        DisableTrainingResponse disableTrainingResponse = new DisableTrainingResponse();
        disableTrainingResponse.setResult(1);
        int status = disableTrainingRequest.getStatus();
        DataManager.getInstance().setTrainingDisable(status == 2);
        disableTrainingResponse.setStatus(status);
        String message = disableTrainingRequest.getMessage();
        disableTrainingResponse.setMessage(message);
        LiveBus.post(new DisableTrainingEvent(status));
        LiveBus.post(new TtsEvent(message));
        return disableTrainingResponse;
    }
}
