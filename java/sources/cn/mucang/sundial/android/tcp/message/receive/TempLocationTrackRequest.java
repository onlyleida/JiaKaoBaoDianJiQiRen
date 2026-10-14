package cn.mucang.sundial.android.tcp.message.receive;

import cn.mucang.sundial.android.tcp.decoder.BytesDecoder;
import cn.mucang.sundial.android.tcp.message.ReceiveMessage;

/* JADX INFO: loaded from: classes5.dex */
public class TempLocationTrackRequest extends BaseReceiveMessage implements ReceiveMessage {
    private long duration;
    private int interval;

    public long getDuration() {
        return this.duration;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 33282;
    }

    public int getInterval() {
        return this.interval;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Receive
    public void init(byte[] bArr) {
        BytesDecoder bytesDecoder = new BytesDecoder(bArr);
        this.interval = bytesDecoder.readWORD();
        this.duration = bytesDecoder.readDWORD();
    }
}
