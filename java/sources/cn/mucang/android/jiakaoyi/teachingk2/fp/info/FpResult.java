package cn.mucang.android.jiakaoyi.teachingk2.fp.info;

import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.firstpractice.FirstPracticeStep;
import cn.mucang.android.jiakaoyi.teachingk2.level.TutorialLevel;
import cn.mucang.android.jiakaoyi.teachingk2.level.UserLevelData;
import com.alibaba.fastjson.JSON;
import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public class FpResult implements Serializable {
    public int bodyErrorCount;
    public final int errorRound;
    public int speedErrorCount;
    public final long startTime;
    public final FirstPracticeStep step;
    public int stopErrorCount;
    public final int totalRound;
    public int wheelErrorCount;

    public FpResult(FirstPracticeStep firstPracticeStep, int i, int i2, long j) {
        this.step = firstPracticeStep;
        this.totalRound = i;
        this.errorRound = i2;
        this.startTime = j;
    }

    public String createFailedDesc() {
        int i = 0;
        StringBuilder sb = new StringBuilder(String.format(k0.a(R.string.teachbase_remain_problems), this.step.desc));
        if (this.stopErrorCount > 0) {
            sb.append(1);
            sb.append(k0.a(R.string.teachbase_car_stop_wrong));
            sb.append(this.stopErrorCount);
            sb.append(k0.a(R.string.teachbase_counts));
            i = 1;
        }
        if (this.bodyErrorCount > 0) {
            i++;
            sb.append(i);
            sb.append(k0.a(R.string.teachbase_car_body_touch_line));
            sb.append(this.bodyErrorCount);
            sb.append(k0.a(R.string.teachbase_counts));
        }
        if (this.wheelErrorCount > 0) {
            i++;
            sb.append(i);
            sb.append(k0.a(R.string.teachbase_car_wheel_touch_line));
            sb.append(this.wheelErrorCount);
            sb.append(k0.a(R.string.teachbase_counts));
        }
        if (this.speedErrorCount > 0) {
            sb.append(i + 1);
            sb.append(k0.a(R.string.teachbase_speed_over_5));
            sb.append(this.speedErrorCount);
            sb.append(k0.a(R.string.teachbase_counts));
            sb.append("\n");
        }
        sb.append(k0.a(R.string.teachbase_fp_fail_tip));
        return sb.toString();
    }

    public boolean isFinish() {
        if (!isPass()) {
            int i = this.totalRound;
            FirstPracticeStep firstPracticeStep = this.step;
            int i2 = firstPracticeStep.totalCount;
            if (i < i2 && this.errorRound <= i2 - firstPracticeStep.passCount) {
                return false;
            }
        }
        return true;
    }

    public boolean isPass() {
        int i = this.totalRound;
        FirstPracticeStep firstPracticeStep = this.step;
        return i <= firstPracticeStep.totalCount && i - this.errorRound >= firstPracticeStep.passCount;
    }

    public UserLevelData mapToServerData() {
        UserLevelData userLevelData = new UserLevelData(TutorialLevel.FirstPractice.getServerCode(), this.step.subCode);
        userLevelData.setPass(isPass());
        userLevelData.getData().setCourseTotalCount(this.totalRound);
        userLevelData.getData().setCoursePassCount(this.totalRound - this.errorRound);
        userLevelData.getData().setCostTime((System.currentTimeMillis() - this.startTime) / 1000.0f);
        userLevelData.getData().setExtraData(JSON.toJSONString(this));
        return userLevelData;
    }

    public FpResult setCount(int i, int i2, int i3, int i4) {
        this.stopErrorCount = i;
        this.bodyErrorCount = i2;
        this.wheelErrorCount = i3;
        this.speedErrorCount = i4;
        return this;
    }
}
