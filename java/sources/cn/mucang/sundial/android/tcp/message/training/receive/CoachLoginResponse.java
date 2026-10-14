package cn.mucang.sundial.android.tcp.message.training.receive;

import cn.mucang.sundial.android.tcp.decoder.BytesDecoder;

/* JADX INFO: loaded from: classes5.dex */
public class CoachLoginResponse extends BaseExtendReceiveMessage {
    private String coachNo;
    private String extraInfo;
    private Result result;
    private SpeakOption speakExtraInfo = SpeakOption.GLOBAL_CONFIG;

    public enum Result {
        SUCCESS(1),
        COACH_CODE_NOT_VALID(2),
        TEACH_TYPE_NOT_MATCHED(3),
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

    public enum SpeakOption {
        GLOBAL_CONFIG(0),
        YES(1),
        NO(2);

        private final int value;

        SpeakOption(int i) {
            this.value = i;
        }

        static SpeakOption from(int i) {
            for (SpeakOption speakOption : values()) {
                if (speakOption.value == i) {
                    return speakOption;
                }
            }
            throw new IllegalArgumentException("非法的SpeakOption.value值：" + i);
        }

        public int getValue() {
            return this.value;
        }
    }

    public String getCoachNo() {
        return this.coachNo;
    }

    public String getExtraInfo() {
        return this.extraInfo;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 33025;
    }

    public Result getResult() {
        return this.result;
    }

    public SpeakOption getSpeakExtraInfo() {
        return this.speakExtraInfo;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Receive
    public void init(byte[] bArr) {
        BytesDecoder bytesDecoder = new BytesDecoder(bArr);
        this.result = Result.from(bytesDecoder.readBYTE());
        this.coachNo = bytesDecoder.readString(16);
        this.speakExtraInfo = SpeakOption.from(bytesDecoder.readBYTE());
        int i = bytesDecoder.readBYTE();
        if (i > 0) {
            this.extraInfo = bytesDecoder.readString(i);
        }
    }
}
