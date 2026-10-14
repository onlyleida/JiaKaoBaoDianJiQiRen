package cn.mucang.sundial.android.tcp.message.receive;

import cn.mucang.sundial.android.tcp.message.ReceiveMessage;

/* JADX INFO: loaded from: classes5.dex */
public class QueryAllParameterRequest extends BaseReceiveMessage implements ReceiveMessage {
    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 33028;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Receive
    public void init(byte[] bArr) {
    }
}
