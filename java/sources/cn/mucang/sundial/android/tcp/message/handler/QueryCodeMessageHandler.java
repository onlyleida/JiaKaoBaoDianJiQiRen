package cn.mucang.sundial.android.tcp.message.handler;

import cn.mucang.android.core.utils.t;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.TimeoutManager;
import cn.mucang.sundial.android.tcp.message.SendMessage;
import cn.mucang.sundial.android.tcp.message.training.receive.QueryCodeResponse;
import cn.mucang.sundial.android.tcp.utils.ProtocolConfig;

/* JADX INFO: loaded from: classes5.dex */
public class QueryCodeMessageHandler extends BaseMessageHandler<QueryCodeResponse> {
    @Override // cn.mucang.sundial.android.tcp.message.handler.MessageHandler
    public SendMessage handleMessage(QueryCodeResponse queryCodeResponse) {
        TimeoutManager.getInstance().onMessageReply(1026, true);
        t.h(ProtocolConfig.SUNDIAL, "收到请求统一编码消息，请求序号: " + queryCodeResponse.getSequence() + ", 请求结果：" + queryCodeResponse.getResult() + ", 统一编号： " + queryCodeResponse.getCode());
        SundialLog.com("收到请求统一编码消息，请求序号: " + queryCodeResponse.getSequence() + ", 请求结果：" + queryCodeResponse.getResult() + ", 统一编号： " + queryCodeResponse.getCode());
        return null;
    }
}
