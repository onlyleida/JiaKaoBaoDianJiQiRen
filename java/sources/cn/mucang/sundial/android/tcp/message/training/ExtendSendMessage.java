package cn.mucang.sundial.android.tcp.message.training;

import cn.mucang.sundial.android.tcp.message.SendMessage;

/* JADX INFO: loaded from: classes5.dex */
public interface ExtendSendMessage extends SendMessage {
    boolean isNeedReply();

    boolean isRealtimeMessage();
}
