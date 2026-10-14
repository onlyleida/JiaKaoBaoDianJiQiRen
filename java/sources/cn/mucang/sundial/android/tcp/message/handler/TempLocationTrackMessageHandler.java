package cn.mucang.sundial.android.tcp.message.handler;

import cn.mucang.android.core.utils.t;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.message.SendMessage;
import cn.mucang.sundial.android.tcp.message.receive.TempLocationTrackRequest;
import cn.mucang.sundial.android.tcp.utils.ProtocolConfig;
import cn.mucang.sundial.android.timer.location.LocationReportManager;

/* JADX INFO: loaded from: classes5.dex */
public class TempLocationTrackMessageHandler extends BaseMessageHandler<TempLocationTrackRequest> {
    @Override // cn.mucang.sundial.android.tcp.message.handler.MessageHandler
    public SendMessage handleMessage(TempLocationTrackRequest tempLocationTrackRequest) {
        t.h(ProtocolConfig.SUNDIAL, "收到临时位置跟踪的消息,跟踪周期(秒)：" + tempLocationTrackRequest.getInterval() + " 跟踪时长(秒)：" + tempLocationTrackRequest.getDuration());
        SundialLog.com("收到临时位置跟踪的消息,跟踪周期(秒)：" + tempLocationTrackRequest.getInterval() + " 跟踪时长(秒)：" + tempLocationTrackRequest.getDuration());
        LocationReportManager.getInstance().configTempTrack(tempLocationTrackRequest.getInterval(), tempLocationTrackRequest.getDuration());
        return null;
    }
}
