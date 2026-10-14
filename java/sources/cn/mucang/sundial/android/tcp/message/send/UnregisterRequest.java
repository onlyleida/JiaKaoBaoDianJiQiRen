package cn.mucang.sundial.android.tcp.message.send;

import cn.mucang.sundial.android.tcp.message.Request;
import cn.mucang.sundial.android.tcp.message.SendMessage;

/* JADX INFO: loaded from: classes5.dex */
public class UnregisterRequest implements SendMessage, Request {
    @Override // cn.mucang.sundial.android.tcp.message.Send
    public byte[] encode() {
        return new byte[0];
    }

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 3;
    }
}
