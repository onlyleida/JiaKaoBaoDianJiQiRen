package cn.mucang.sundial.library.entity;

import cn.mucang.sundial.android.db.entity.StudentInfo;
import com.iflytek.cloud.SpeechConstant;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001a\u0010\u001bR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR$\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\"\u0010\u0017\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0004\u001a\u0004\b\u0018\u0010\u0006\"\u0004\b\u0019\u0010\b¨\u0006\u001c"}, d2 = {"Lcn/mucang/sundial/library/entity/TrainingProgress;", "", "", "driveType", "Ljava/lang/String;", "getDriveType", "()Ljava/lang/String;", "setDriveType", "(Ljava/lang/String;)V", "Lcn/mucang/sundial/android/db/entity/StudentInfo;", "studentInfo", "Lcn/mucang/sundial/android/db/entity/StudentInfo;", "getStudentInfo", "()Lcn/mucang/sundial/android/db/entity/StudentInfo;", "setStudentInfo", "(Lcn/mucang/sundial/android/db/entity/StudentInfo;)V", "Lcn/mucang/sundial/library/entity/TrainEntity;", "trainInfo", "Lcn/mucang/sundial/library/entity/TrainEntity;", "getTrainInfo", "()Lcn/mucang/sundial/library/entity/TrainEntity;", "setTrainInfo", "(Lcn/mucang/sundial/library/entity/TrainEntity;)V", SpeechConstant.SUBJECT, "getSubject", "setSubject", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class TrainingProgress {
    private StudentInfo studentInfo;
    private TrainEntity trainInfo;
    private String subject = "";
    private String driveType = "";

    public final String getDriveType() {
        return this.driveType;
    }

    public final StudentInfo getStudentInfo() {
        return this.studentInfo;
    }

    public final String getSubject() {
        return this.subject;
    }

    public final TrainEntity getTrainInfo() {
        return this.trainInfo;
    }

    public final void setDriveType(String str) {
        r.e(str, "<set-?>");
        this.driveType = str;
    }

    public final void setStudentInfo(StudentInfo studentInfo) {
        this.studentInfo = studentInfo;
    }

    public final void setSubject(String str) {
        r.e(str, "<set-?>");
        this.subject = str;
    }

    public final void setTrainInfo(TrainEntity trainEntity) {
        this.trainInfo = trainEntity;
    }
}
