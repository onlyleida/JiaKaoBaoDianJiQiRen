package cn.mucang.android.jiakaoyi.teachingk2.model;

import cn.mucang.jiakaoyi.uilib.record.DeductRecordModel;
import com.alibaba.fastjson.annotation.JSONField;
import com.mobile.auth.gatewayauth.Constant;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 82\u00020\u0001:\u00018B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u00107\u001a\u00020#R\"\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0013\"\u0004\b\u001e\u0010\u0015R\u001a\u0010\u001f\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0013\"\u0004\b!\u0010\u0015R\u001e\u0010\"\u001a\u00020#8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010$\"\u0004\b%\u0010&R\u001a\u0010'\u001a\u00020\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0019\"\u0004\b)\u0010\u001bR\u001a\u0010*\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u0013\"\u0004\b,\u0010\u0015R\u001a\u0010-\u001a\u00020\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u0019\"\u0004\b/\u0010\u001bR\"\u00100\u001a\n\u0012\u0004\u0012\u000201\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010\u0007\"\u0004\b3\u0010\tR\u001a\u00104\u001a\u00020\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010\u0019\"\u0004\b6\u0010\u001b¨\u00069"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/model/ExamRecordModel;", "Ljava/io/Serializable;", "()V", "deductDetails", "", "Lcn/mucang/jiakaoyi/uilib/record/DeductRecordModel;", "getDeductDetails", "()Ljava/util/List;", "setDeductDetails", "(Ljava/util/List;)V", "distance", "", "getDistance", "()F", "setDistance", "(F)V", "endTime", "", "getEndTime", "()J", "setEndTime", "(J)V", "examId", "", "getExamId", "()I", "setExamId", "(I)V", "examSiteId", "getExamSiteId", "setExamSiteId", "examTime", "getExamTime", "setExamTime", "isPass", "", "()Z", "setPass", "(Z)V", "score", "getScore", "setScore", Constant.START_TIME, "getStartTime", "setStartTime", "step", "getStep", "setStep", "stepDetails", "Lcn/mucang/android/jiakaoyi/teachingk2/model/StepRecordModel;", "getStepDetails", "setStepDetails", "type", "getType", "setType", "isSingle", "Companion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ExamRecordModel implements Serializable {
    public static final int TYPE_ALL = 1;
    public static final int TYPE_SINGLE = 2;
    private List<DeductRecordModel> deductDetails;
    private float distance;
    private long endTime;
    private int examId;
    private long examSiteId;
    private long examTime;

    @JSONField(name = "isPass")
    private boolean isPass;
    private int score;
    private long startTime;
    private int step;
    private List<StepRecordModel> stepDetails;
    private int type;

    public final List<DeductRecordModel> getDeductDetails() {
        return this.deductDetails;
    }

    public final float getDistance() {
        return this.distance;
    }

    public final long getEndTime() {
        return this.endTime;
    }

    public final int getExamId() {
        return this.examId;
    }

    public final long getExamSiteId() {
        return this.examSiteId;
    }

    public final long getExamTime() {
        return this.examTime;
    }

    public final int getScore() {
        return this.score;
    }

    public final long getStartTime() {
        return this.startTime;
    }

    public final int getStep() {
        return this.step;
    }

    public final List<StepRecordModel> getStepDetails() {
        return this.stepDetails;
    }

    public final int getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: isPass, reason: from getter */
    public final boolean getIsPass() {
        return this.isPass;
    }

    public final boolean isSingle() {
        return this.type == 2;
    }

    public final void setDeductDetails(List<DeductRecordModel> list) {
        this.deductDetails = list;
    }

    public final void setDistance(float f2) {
        this.distance = f2;
    }

    public final void setEndTime(long j) {
        this.endTime = j;
    }

    public final void setExamId(int i) {
        this.examId = i;
    }

    public final void setExamSiteId(long j) {
        this.examSiteId = j;
    }

    public final void setExamTime(long j) {
        this.examTime = j;
    }

    public final void setPass(boolean z) {
        this.isPass = z;
    }

    public final void setScore(int i) {
        this.score = i;
    }

    public final void setStartTime(long j) {
        this.startTime = j;
    }

    public final void setStep(int i) {
        this.step = i;
    }

    public final void setStepDetails(List<StepRecordModel> list) {
        this.stepDetails = list;
    }

    public final void setType(int i) {
        this.type = i;
    }
}
