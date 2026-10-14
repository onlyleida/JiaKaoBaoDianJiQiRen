package cn.mucang.sundial.android.tcp.message.training;

import cn.mucang.sundial.android.tcp.message.Message;
import cn.mucang.sundial.android.tcp.message.Receive;

/* JADX INFO: loaded from: classes5.dex */
public interface ExtendReceiveMessage extends Receive, Message {
    void setTrainingMessage(ReceiveTrainingMessage receiveTrainingMessage);
}
