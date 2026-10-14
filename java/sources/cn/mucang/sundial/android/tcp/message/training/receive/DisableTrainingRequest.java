package cn.mucang.sundial.android.tcp.message.training.receive;

import cn.mucang.sundial.android.tcp.decoder.BytesDecoder;

/* JADX INFO: loaded from: classes5.dex */
public class DisableTrainingRequest extends BaseExtendReceiveMessage {
    private String message;
    private int status;

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 34050;
    }

    public String getMessage() {
        return this.message;
    }

    public int getStatus() {
        return this.status;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Receive
    public void init(byte[] bArr) {
        BytesDecoder bytesDecoder = new BytesDecoder(bArr);
        this.status = bytesDecoder.readBYTE();
        int i = bytesDecoder.readBYTE();
        if (i > 0) {
            this.message = bytesDecoder.readString(i);
        }
    }
}
