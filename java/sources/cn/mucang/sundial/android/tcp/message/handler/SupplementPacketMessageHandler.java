package cn.mucang.sundial.android.tcp.message.handler;

import cn.mucang.android.core.utils.t;
import cn.mucang.android.ui.framework.fetcher.ThreadPool;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.tcp.message.SendMessage;
import cn.mucang.sundial.android.tcp.message.receive.SupplementPacketRequest;
import cn.mucang.sundial.android.tcp.message.send.ClientCommonResponse;
import cn.mucang.sundial.android.tcp.utils.ProtocolConfig;

/* JADX INFO: loaded from: classes5.dex */
public class SupplementPacketMessageHandler extends BaseMessageHandler<SupplementPacketRequest> {
    @Override // cn.mucang.sundial.android.tcp.message.handler.MessageHandler
    public SendMessage handleMessage(final SupplementPacketRequest supplementPacketRequest) {
        final int[] packetIndex = supplementPacketRequest.getPacketIndex();
        StringBuilder sb = new StringBuilder("收到补传分包请求，初始包流水号：");
        sb.append(supplementPacketRequest.getOriginalMessageSerialNo());
        if (packetIndex == null || packetIndex.length <= 0) {
            sb.append("，无分包ID");
        } else {
            sb.append("，分包ID为：");
            for (int i : packetIndex) {
                sb.append(i);
                sb.append(", ");
            }
            ThreadPool.a(new Runnable() { // from class: cn.mucang.sundial.android.tcp.message.handler.b
                @Override // java.lang.Runnable
                public final void run() {
                    SundialManager.getInstance().resendPacket(supplementPacketRequest.getOriginalMessageSerialNo(), packetIndex);
                }
            });
        }
        t.h(ProtocolConfig.SUNDIAL, sb.toString());
        return ClientCommonResponse.createSuccess(supplementPacketRequest.getRawMessage());
    }
}
