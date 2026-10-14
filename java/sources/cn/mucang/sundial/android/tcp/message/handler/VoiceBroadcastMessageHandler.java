package cn.mucang.sundial.android.tcp.message.handler;

import cn.mucang.android.core.utils.t;
import cn.mucang.sundial.android.eventbus.LiveBus;
import cn.mucang.sundial.android.eventbus.event.DialogEvent;
import cn.mucang.sundial.android.eventbus.event.TtsEvent;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.message.SendMessage;
import cn.mucang.sundial.android.tcp.message.training.receive.VoiceBroadcastResponse;

/* JADX INFO: loaded from: classes5.dex */
public class VoiceBroadcastMessageHandler extends BaseMessageHandler<VoiceBroadcastResponse> {
    @Override // cn.mucang.sundial.android.tcp.message.handler.MessageHandler
    public SendMessage handleMessage(VoiceBroadcastResponse voiceBroadcastResponse) {
        int result = voiceBroadcastResponse.getResult();
        t.h("Tts", "播报类型： " + result);
        SundialLog.com("播报类型： " + result);
        if (result == VoiceBroadcastResponse.Result.TEXT_BROADCAST.getValue()) {
            LiveBus.post(new TtsEvent(voiceBroadcastResponse.getExtraMessage()));
            return null;
        }
        if (result != VoiceBroadcastResponse.Result.TEXT_DIALOG.getValue()) {
            return null;
        }
        LiveBus.post(new DialogEvent(voiceBroadcastResponse.getExtraMessage()));
        return null;
    }
}
