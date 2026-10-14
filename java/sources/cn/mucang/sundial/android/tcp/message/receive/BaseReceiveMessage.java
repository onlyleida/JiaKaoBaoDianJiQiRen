package cn.mucang.sundial.android.tcp.message.receive;

import cn.mucang.sundial.android.tcp.message.RawMessage;
import cn.mucang.sundial.android.tcp.message.RawMessageAware;

/* JADX INFO: loaded from: classes5.dex */
public class BaseReceiveMessage implements RawMessageAware {
    private RawMessage rawMessage;

    public RawMessage getRawMessage() {
        return this.rawMessage;
    }

    @Override // cn.mucang.sundial.android.tcp.message.RawMessageAware
    public void setRawMessage(RawMessage rawMessage) {
        this.rawMessage = rawMessage;
    }
}
