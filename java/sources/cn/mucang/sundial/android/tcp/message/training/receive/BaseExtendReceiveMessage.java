package cn.mucang.sundial.android.tcp.message.training.receive;

import cn.mucang.sundial.android.tcp.message.receive.BaseReceiveMessage;
import cn.mucang.sundial.android.tcp.message.training.ExtendReceiveMessage;
import cn.mucang.sundial.android.tcp.message.training.ReceiveTrainingMessage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BaseExtendReceiveMessage extends BaseReceiveMessage implements ExtendReceiveMessage {
    private ReceiveTrainingMessage trainingMessage;

    public ReceiveTrainingMessage getTrainingMessage() {
        return this.trainingMessage;
    }

    @Override // cn.mucang.sundial.android.tcp.message.training.ExtendReceiveMessage
    public void setTrainingMessage(ReceiveTrainingMessage receiveTrainingMessage) {
        this.trainingMessage = receiveTrainingMessage;
    }
}
