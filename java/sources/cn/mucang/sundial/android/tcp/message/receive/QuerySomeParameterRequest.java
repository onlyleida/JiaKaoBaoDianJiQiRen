package cn.mucang.sundial.android.tcp.message.receive;

import cn.mucang.sundial.android.tcp.decoder.BytesDecoder;
import cn.mucang.sundial.android.tcp.message.ReceiveMessage;

/* JADX INFO: loaded from: classes5.dex */
public class QuerySomeParameterRequest extends BaseReceiveMessage implements ReceiveMessage {
    private long[] parameterIdList;

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 33030;
    }

    public long[] getParameterIdList() {
        return this.parameterIdList;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Receive
    public void init(byte[] bArr) {
        BytesDecoder bytesDecoder = new BytesDecoder(bArr);
        int i = bytesDecoder.readBYTE();
        this.parameterIdList = new long[i];
        for (int i2 = 0; i2 < i; i2++) {
            this.parameterIdList[i2] = bytesDecoder.readDWORD();
        }
    }
}
