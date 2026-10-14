package cn.mucang.sundial.android.tcp.message.receive;

import cn.mucang.sundial.android.tcp.decoder.BytesDecoder;
import cn.mucang.sundial.android.tcp.message.CommonResponse;
import cn.mucang.sundial.android.tcp.message.ReceiveMessage;

/* JADX INFO: loaded from: classes5.dex */
public class ServerCommonResponse extends CommonResponse implements ReceiveMessage {
    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 32769;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Receive
    public void init(byte[] bArr) {
        BytesDecoder bytesDecoder = new BytesDecoder(bArr);
        this.responseSerialNo = bytesDecoder.readWORD();
        this.responseMessageId = bytesDecoder.readWORD();
        this.result = bytesDecoder.readBYTE();
    }
}
