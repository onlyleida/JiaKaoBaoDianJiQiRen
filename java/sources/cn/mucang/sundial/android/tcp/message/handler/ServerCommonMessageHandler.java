package cn.mucang.sundial.android.tcp.message.handler;

import cn.mucang.android.core.utils.t;
import cn.mucang.sundial.android.eventbus.LiveBus;
import cn.mucang.sundial.android.eventbus.event.UnRegisterResponseEvent;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.PacketResponseObserver;
import cn.mucang.sundial.android.tcp.TimeoutManager;
import cn.mucang.sundial.android.tcp.data.DataManager;
import cn.mucang.sundial.android.tcp.message.CommonResponse;
import cn.mucang.sundial.android.tcp.message.SendMessage;
import cn.mucang.sundial.android.tcp.message.receive.ServerCommonResponse;
import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import cn.mucang.sundial.android.tcp.utils.ProtocolConfig;
import cn.mucang.sundial.android.timer.alive.HeartBeatManager;
import cn.mucang.sundial.android.timer.location.LocationReportManager;

/* JADX INFO: loaded from: classes5.dex */
public class ServerCommonMessageHandler extends BaseMessageHandler<ServerCommonResponse> {
    @Override // cn.mucang.sundial.android.tcp.message.handler.MessageHandler
    public SendMessage handleMessage(ServerCommonResponse serverCommonResponse) {
        int responseMessageId = serverCommonResponse.getResponseMessageId();
        CommonResponse.Result resultFrom = CommonResponse.Result.from(serverCommonResponse.getResult());
        t.h(ProtocolConfig.SUNDIAL, "收到消息" + DeviceUtils.formatMessageId(responseMessageId) + "的服务端通用应答，应答结果：" + resultFrom);
        SundialLog.com("收到消息" + DeviceUtils.formatMessageId(responseMessageId) + "的服务端通用应答，应答结果：" + resultFrom);
        TimeoutManager.getInstance().onMessageReply(responseMessageId, false);
        PacketResponseObserver.getInstance().onPacketResponse(serverCommonResponse.getResponseSerialNo(), serverCommonResponse.getResult() == 0);
        if (responseMessageId != 3) {
            if (responseMessageId != 258 || resultFrom != CommonResponse.Result.SUCCESS) {
                return null;
            }
            SundialLog.com("鉴权成功后，开始发送心跳包");
            HeartBeatManager.getInstance().start();
            LocationReportManager.getInstance().start();
            return null;
        }
        if (resultFrom != CommonResponse.Result.SUCCESS) {
            return null;
        }
        SundialLog.com("终端登出成功");
        DataManager.getInstance().clearRegisterInfo();
        LiveBus.post(new UnRegisterResponseEvent());
        LocationReportManager.getInstance().stop();
        return null;
    }
}
