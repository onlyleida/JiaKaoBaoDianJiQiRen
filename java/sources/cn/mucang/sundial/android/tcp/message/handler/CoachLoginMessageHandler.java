package cn.mucang.sundial.android.tcp.message.handler;

import android.text.TextUtils;
import cn.mucang.android.core.utils.t;
import cn.mucang.sundial.android.db.entity.CoachInfo;
import cn.mucang.sundial.android.eventbus.LiveBus;
import cn.mucang.sundial.android.eventbus.event.CoachLoginResponseEvent;
import cn.mucang.sundial.android.eventbus.event.TtsEvent;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.TimeoutManager;
import cn.mucang.sundial.android.tcp.data.DataManager;
import cn.mucang.sundial.android.tcp.message.SendMessage;
import cn.mucang.sundial.android.tcp.message.training.receive.CoachLoginResponse;
import cn.mucang.sundial.android.tcp.utils.ProtocolConfig;

/* JADX INFO: loaded from: classes5.dex */
public class CoachLoginMessageHandler extends BaseMessageHandler<CoachLoginResponse> {
    @Override // cn.mucang.sundial.android.tcp.message.handler.MessageHandler
    public SendMessage handleMessage(CoachLoginResponse coachLoginResponse) {
        TimeoutManager.getInstance().onMessageReply(257, true);
        CoachLoginResponse.Result result = coachLoginResponse.getResult();
        t.h(ProtocolConfig.SUNDIAL, "教练员登录应答： " + result);
        SundialLog.com("教练员登录应答： " + result);
        if (result == CoachLoginResponse.Result.SUCCESS) {
            DataManager.getInstance().updateCoachStatus(coachLoginResponse.getCoachNo(), CoachInfo.STATUS.LOGIN);
        }
        String extraInfo = coachLoginResponse.getExtraInfo();
        if (!TextUtils.isEmpty(extraInfo) && (coachLoginResponse.getSpeakExtraInfo() == CoachLoginResponse.SpeakOption.YES || (coachLoginResponse.getSpeakExtraInfo() == CoachLoginResponse.SpeakOption.GLOBAL_CONFIG && DataManager.getInstance().deviceConfigSpeechExtraInfo()))) {
            LiveBus.post(new TtsEvent(extraInfo));
        }
        LiveBus.post(new CoachLoginResponseEvent(extraInfo));
        return null;
    }
}
