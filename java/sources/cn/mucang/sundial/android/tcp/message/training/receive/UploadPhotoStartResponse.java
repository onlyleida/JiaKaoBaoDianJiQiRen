package cn.mucang.sundial.android.tcp.message.training.receive;

/* JADX INFO: loaded from: classes5.dex */
public class UploadPhotoStartResponse extends BaseExtendReceiveMessage {
    private int result;

    public enum Result {
        SUCCESS(0),
        PHOTO_ID_ERROR(1),
        UNKNOWN_ERROR(9),
        REJECT(255);

        private final int value;

        Result(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 33541;
    }

    public int getResult() {
        return this.result;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Receive
    public void init(byte[] bArr) {
        this.result = bArr[0];
    }
}
