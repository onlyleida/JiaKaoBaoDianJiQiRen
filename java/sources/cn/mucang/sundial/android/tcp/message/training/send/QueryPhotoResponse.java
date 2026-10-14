package cn.mucang.sundial.android.tcp.message.training.send;

import cn.mucang.sundial.android.tcp.message.training.ExtendSendMessage;
import cn.mucang.sundial.android.tcp.message.training.a;

/* JADX INFO: loaded from: classes5.dex */
public class QueryPhotoResponse implements ExtendSendMessage {
    private int result;

    @Override // cn.mucang.sundial.android.tcp.message.Send
    public byte[] encode() {
        return new byte[]{(byte) this.result};
    }

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 770;
    }

    public int getResult() {
        return this.result;
    }

    @Override // cn.mucang.sundial.android.tcp.message.training.ExtendSendMessage
    public /* synthetic */ boolean isNeedReply() {
        return a.$default$isNeedReply(this);
    }

    @Override // cn.mucang.sundial.android.tcp.message.training.ExtendSendMessage
    public /* synthetic */ boolean isRealtimeMessage() {
        return a.$default$isRealtimeMessage(this);
    }

    public void setResult(int i) {
        this.result = i;
    }
}
