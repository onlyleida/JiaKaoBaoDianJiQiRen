package cn.mucang.sundial.android.tcp.message.handler;

import cn.mucang.android.core.utils.t;
import cn.mucang.sundial.android.db.entity.CoachInfo;
import cn.mucang.sundial.android.eventbus.LiveBus;
import cn.mucang.sundial.android.eventbus.event.CoachLogoutResponseEvent;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.TimeoutManager;
import cn.mucang.sundial.android.tcp.data.DataManager;
import cn.mucang.sundial.android.tcp.message.SendMessage;
import cn.mucang.sundial.android.tcp.message.training.receive.CoachLogoutResponse;
import cn.mucang.sundial.android.tcp.utils.ProtocolConfig;

/* JADX INFO: loaded from: classes5.dex */
public class CoachLogoutMessageHandler extends BaseMessageHandler<CoachLogoutResponse> {
    @Override // cn.mucang.sundial.android.tcp.message.handler.MessageHandler
    public SendMessage handleMessage(CoachLogoutResponse coachLogoutResponse) {
        TimeoutManager.getInstance().onMessageReply(258, true);
        CoachLogoutResponse.Result result = coachLogoutResponse.getResult();
        t.h(ProtocolConfig.SUNDIAL, "教练员登出应答： " + result);
        SundialLog.com("教练员登出应答： " + result);
        if (result == CoachLogoutResponse.Result.SUCCESS) {
            DataManager.getInstance().updateCoachStatus(coachLogoutResponse.getCoachNo(), CoachInfo.STATUS.INIT);
        }
        LiveBus.post(new CoachLogoutResponseEvent());
        return null;
    }
}
