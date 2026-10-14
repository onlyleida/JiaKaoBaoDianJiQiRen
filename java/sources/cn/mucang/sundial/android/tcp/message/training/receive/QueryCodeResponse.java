package cn.mucang.sundial.android.tcp.message.training.receive;

import cn.mucang.sundial.android.tcp.decoder.BytesDecoder;

/* JADX INFO: loaded from: classes5.dex */
public class QueryCodeResponse extends BaseExtendReceiveMessage {
    private String code;
    private int result;
    private int sequence;
    private String teachType;

    public String getCode() {
        return this.code;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 33794;
    }

    public int getResult() {
        return this.result;
    }

    public int getSequence() {
        return this.sequence;
    }

    public String getTeachType() {
        return this.teachType;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Receive
    public void init(byte[] bArr) {
        BytesDecoder bytesDecoder = new BytesDecoder(bArr);
        this.sequence = bytesDecoder.readWORD();
        int i = bytesDecoder.readBYTE();
        this.result = i;
        if (i == 0) {
            this.code = bytesDecoder.readString(16);
            this.teachType = bytesDecoder.readString(2);
        }
    }
}
