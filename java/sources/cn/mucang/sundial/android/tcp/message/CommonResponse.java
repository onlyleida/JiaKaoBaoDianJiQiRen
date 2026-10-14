package cn.mucang.sundial.android.tcp.message;

/* JADX INFO: loaded from: classes5.dex */
public abstract class CommonResponse implements Message {
    protected int responseMessageId;
    protected int responseSerialNo;
    protected int result;

    public enum Result {
        SUCCESS(0),
        FAILURE(1),
        MESSAGE_ERROR(2),
        NOT_SUPPORTED(3);

        public final int value;

        Result(int i) {
            this.value = i;
        }

        public static Result from(int i) {
            for (Result result : values()) {
                if (result.value == i) {
                    return result;
                }
            }
            throw new IllegalArgumentException("非法的Result值：" + i);
        }
    }

    public int getResponseMessageId() {
        return this.responseMessageId;
    }

    public int getResponseSerialNo() {
        return this.responseSerialNo;
    }

    public int getResult() {
        return this.result;
    }

    public Result getResultEnum() {
        return Result.from(this.result);
    }
}
