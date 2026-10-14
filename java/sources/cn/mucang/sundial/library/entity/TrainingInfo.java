package cn.mucang.sundial.library.entity;

import cn.mucang.sundial.android.db.entity.CoachInfo;
import cn.mucang.sundial.android.db.entity.StudentInfo;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0006\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b(\u0010)R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR$\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\"\u0010\u0017\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u000b\u001a\u0004\b\u0018\u0010\r\"\u0004\b\u0019\u0010\u000fR\"\u0010\u001b\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R$\u0010\"\u001a\u0004\u0018\u00010!8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'¨\u0006*"}, d2 = {"Lcn/mucang/sundial/library/entity/TrainingInfo;", "", "", "currentTotalDistance", "D", "getCurrentTotalDistance", "()D", "setCurrentTotalDistance", "(D)V", "", "courseTime", "J", "getCourseTime", "()J", "setCourseTime", "(J)V", "Lcn/mucang/sundial/android/db/entity/CoachInfo;", "coachInfo", "Lcn/mucang/sundial/android/db/entity/CoachInfo;", "getCoachInfo", "()Lcn/mucang/sundial/android/db/entity/CoachInfo;", "setCoachInfo", "(Lcn/mucang/sundial/android/db/entity/CoachInfo;)V", "loginTime", "getLoginTime", "setLoginTime", "", "status", "I", "getStatus", "()I", "setStatus", "(I)V", "Lcn/mucang/sundial/android/db/entity/StudentInfo;", "studentInfo", "Lcn/mucang/sundial/android/db/entity/StudentInfo;", "getStudentInfo", "()Lcn/mucang/sundial/android/db/entity/StudentInfo;", "setStudentInfo", "(Lcn/mucang/sundial/android/db/entity/StudentInfo;)V", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class TrainingInfo {
    private CoachInfo coachInfo;
    private long courseTime;
    private double currentTotalDistance;
    private long loginTime;
    private int status = 1;
    private StudentInfo studentInfo;

    public final CoachInfo getCoachInfo() {
        return this.coachInfo;
    }

    public final long getCourseTime() {
        return this.courseTime;
    }

    public final double getCurrentTotalDistance() {
        return this.currentTotalDistance;
    }

    public final long getLoginTime() {
        return this.loginTime;
    }

    public final int getStatus() {
        return this.status;
    }

    public final StudentInfo getStudentInfo() {
        return this.studentInfo;
    }

    public final void setCoachInfo(CoachInfo coachInfo) {
        this.coachInfo = coachInfo;
    }

    public final void setCourseTime(long j) {
        this.courseTime = j;
    }

    public final void setCurrentTotalDistance(double d2) {
        this.currentTotalDistance = d2;
    }

    public final void setLoginTime(long j) {
        this.loginTime = j;
    }

    public final void setStatus(int i) {
        this.status = i;
    }

    public final void setStudentInfo(StudentInfo studentInfo) {
        this.studentInfo = studentInfo;
    }
}
