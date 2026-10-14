package cn.mucang.sundial.android.tcp.message.training.receive;

import cn.mucang.sundial.android.tcp.decoder.BytesDecoder;

/* JADX INFO: loaded from: classes5.dex */
public class StudentLoginResponse extends BaseExtendReceiveMessage {
    private String extraInfo;
    private int finishedDuration;
    private int finishedMileage;
    private Result result;
    private SpeakOption speakExtraInfo = SpeakOption.YES;
    private String studentNo;
    private int totalDuration;
    private int totalMileage;

    public enum Result {
        SUCCESS(1),
        STUDENT_CODE_NOT_VALID(2),
        STUDENT_LOGIN_FORBIDDEN(3),
        AREA_OUTSIDE(4),
        TEACH_TYPE_NOT_MATCHED(5),
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
        NO(0),
        YES(1);

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

    public String getExtraInfo() {
        return this.extraInfo;
    }

    public int getFinishedDuration() {
        return this.finishedDuration;
    }

    public int getFinishedMileage() {
        return this.finishedMileage;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 33281;
    }

    public Result getResult() {
        return this.result;
    }

    public SpeakOption getSpeakExtraInfo() {
        return this.speakExtraInfo;
    }

    public String getStudentNo() {
        return this.studentNo;
    }

    public int getTotalDuration() {
        return this.totalDuration;
    }

    public int getTotalMileage() {
        return this.totalMileage;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Receive
    public void init(byte[] bArr) {
        BytesDecoder bytesDecoder = new BytesDecoder(bArr);
        this.result = Result.from(bytesDecoder.readBYTE());
        this.studentNo = bytesDecoder.readString(16);
        this.totalDuration = bytesDecoder.readWORD();
        this.finishedDuration = bytesDecoder.readWORD();
        this.totalMileage = bytesDecoder.readWORD();
        this.finishedMileage = bytesDecoder.readWORD();
        this.speakExtraInfo = SpeakOption.from(bytesDecoder.readBYTE());
        int i = bytesDecoder.readBYTE();
        if (i > 0) {
            this.extraInfo = bytesDecoder.readString(i);
        }
    }
}
