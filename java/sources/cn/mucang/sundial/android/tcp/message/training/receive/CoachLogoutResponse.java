package cn.mucang.sundial.android.tcp.message.training.receive;

import cn.mucang.sundial.android.tcp.decoder.BytesDecoder;

/* JADX INFO: loaded from: classes5.dex */
public class CoachLogoutResponse extends BaseExtendReceiveMessage {
    private String coachNo;
    private Result result;

    public enum Result {
        SUCCESS(1),
        FAILURE(2),
        OTHER_ERROR(9);

        private final int value;

        Result(int i) {
            this.value = i;
        }

        static Result from(int i) {
            for (Result result : values()) {
                if (result.value == i) {
                    return result;
                }
            }
            throw new IllegalArgumentException("非法的结果值:" + i);
        }

        public int getValue() {
            return this.value;
        }
    }

    public String getCoachNo() {
        return this.coachNo;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 33026;
    }

    public Result getResult() {
        return this.result;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Receive
    public void init(byte[] bArr) {
        BytesDecoder bytesDecoder = new BytesDecoder(bArr);
        this.result = Result.from(bytesDecoder.readBYTE());
        this.coachNo = bytesDecoder.readString(16);
    }
}
