package cn.mucang.sundial.android.tcp.message.training.receive;

import cn.mucang.sundial.android.tcp.decoder.BytesDecoder;

/* JADX INFO: loaded from: classes5.dex */
public class VoiceBroadcastResponse extends BaseExtendReceiveMessage {
    private String extraMessage;
    private int result;

    public enum Result {
        TEXT_BROADCAST(1),
        TEXT_DIALOG(2);

        private final int value;

        Result(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public String getExtraMessage() {
        return this.extraMessage;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 32768;
    }

    public int getResult() {
        return this.result;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Receive
    public void init(byte[] bArr) {
        BytesDecoder bytesDecoder = new BytesDecoder(bArr);
        this.result = bytesDecoder.readBYTE();
        int i = bytesDecoder.readBYTE();
        if (i > 0) {
            this.extraMessage = bytesDecoder.readString(i);
        }
    }
}
