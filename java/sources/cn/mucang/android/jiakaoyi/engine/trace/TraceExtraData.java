package cn.mucang.android.jiakaoyi.engine.trace;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class TraceExtraData implements Serializable {
    public static final int TYPE_ACCEPTANCE = 7;
    public static final int TYPE_ALL_EXAM = 1;
    public static final int TYPE_ALL_PRACTICE = 5;
    public static final int TYPE_AUTO_TEACH = 6;
    public static final int TYPE_CIRCLE_TRAIN = 27;
    public static final int TYPE_COMPLEX_TRAIN = 28;

    @Deprecated
    public static final int TYPE_EXAM = 3;
    public static final int TYPE_EXERCISE = 0;
    public static final int TYPE_FIRST_PRACTICE = 25;
    public static final int TYPE_HELP_TEACH = 26;

    @Deprecated
    public static final int TYPE_PRACTICE = 4;
    public static final int TYPE_SINGLE_EXAM = 2;
    public String costRecordId;
    public boolean guideMark;
    public String kemu;
    public String orderNo;
    private int passScore;
    public String posMapCode;
    public String studentId;
    public String subCode;
    public String traceId;
    private int type;
    public boolean valid;
    public String xy;
    public String xyToken;

    public int getPassScore() {
        return this.passScore;
    }

    public int getType() {
        return this.type;
    }

    public boolean isCircleTrain() {
        int i = this.type;
        return i == 27 || i == 28;
    }

    public boolean isRobotExam() {
        int i = this.type;
        return i == 1 || i == 2;
    }

    public boolean isRobotExercise() {
        return this.type == 0;
    }

    public void setPassScore(int i) {
        this.passScore = i;
        TraceCacheManager.i(i);
    }

    public void setTraceType(int i) {
        this.type = i;
        TraceCacheManager.k(i);
    }

    public void setType(int i) {
        this.type = i;
    }
}
