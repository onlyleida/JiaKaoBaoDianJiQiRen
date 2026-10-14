package cn.mucang.android.jiakaoyi.engine.model;

/* JADX INFO: loaded from: classes2.dex */
public enum JudgeType {
    auto(0),
    manual(1),
    both(2),
    none(3);

    public final int judgeType;

    JudgeType(int i) {
        this.judgeType = i;
    }

    public static JudgeType parse(int i) {
        for (JudgeType judgeType : values()) {
            if (i == judgeType.judgeType) {
                return judgeType;
            }
        }
        return none;
    }

    public boolean needAuto() {
        return this == auto || this == both;
    }

    public boolean needManual() {
        return this == manual || this == both;
    }

    public boolean notAuto() {
        return this == manual || this == none;
    }
}
