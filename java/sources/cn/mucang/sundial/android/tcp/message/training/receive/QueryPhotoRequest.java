package cn.mucang.sundial.android.tcp.message.training.receive;

import cn.mucang.sundial.android.tcp.decoder.BytesDecoder;

/* JADX INFO: loaded from: classes5.dex */
public class QueryPhotoRequest extends BaseExtendReceiveMessage {
    private String endTime;
    private int queryType = 1;
    private String startTime;

    public String getEndTime() {
        return this.endTime;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 33538;
    }

    public int getQueryType() {
        return this.queryType;
    }

    public String getStartTime() {
        return this.startTime;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Receive
    public void init(byte[] bArr) {
        BytesDecoder bytesDecoder = new BytesDecoder(bArr);
        this.queryType = bytesDecoder.readBYTE();
        this.startTime = bytesDecoder.readBCD(6);
        this.endTime = bytesDecoder.readBCD(6);
    }
}
