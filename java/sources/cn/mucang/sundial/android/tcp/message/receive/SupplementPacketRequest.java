package cn.mucang.sundial.android.tcp.message.receive;

import cn.mucang.sundial.android.tcp.decoder.BytesDecoder;
import cn.mucang.sundial.android.tcp.message.ReceiveMessage;

/* JADX INFO: loaded from: classes5.dex */
public class SupplementPacketRequest extends BaseReceiveMessage implements ReceiveMessage {
    private int originalMessageSerialNo;
    private int[] packetIndex;

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 32771;
    }

    public int getOriginalMessageSerialNo() {
        return this.originalMessageSerialNo;
    }

    public int[] getPacketIndex() {
        return this.packetIndex;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Receive
    public void init(byte[] bArr) {
        BytesDecoder bytesDecoder = new BytesDecoder(bArr);
        this.originalMessageSerialNo = bytesDecoder.readWORD();
        int i = bytesDecoder.readBYTE();
        this.packetIndex = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            this.packetIndex[i2] = bytesDecoder.readWORD();
        }
    }
}
