package cn.mucang.sundial.android.tcp.message.training.receive;

import cn.mucang.sundial.android.tcp.decoder.BytesDecoder;

/* JADX INFO: loaded from: classes5.dex */
public class UploadPhotoResultResponse extends BaseExtendReceiveMessage {
    private String extraMessage;
    private int result;

    public enum Result {
        SUCCESS(1),
        FACE_ERROR(2),
        LIVE_ERROR(3),
        UNKNOWN_ERROR(9);

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
        return 36864;
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
