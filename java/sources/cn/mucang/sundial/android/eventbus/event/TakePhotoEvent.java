package cn.mucang.sundial.android.eventbus.event;

import cn.mucang.sundial.android.db.entity.CoachInfo;
import cn.mucang.sundial.android.db.entity.StudentInfo;

/* JADX INFO: loaded from: classes5.dex */
public class TakePhotoEvent {
    public final CoachInfo coach;
    public final int eventType;
    public final int personMode;
    public final StudentInfo student;
    public final int uploadMode;

    public TakePhotoEvent(int i, int i2, int i3, CoachInfo coachInfo, StudentInfo studentInfo) {
        this.personMode = i;
        this.uploadMode = i2;
        this.eventType = i3;
        this.coach = coachInfo;
        this.student = studentInfo;
    }
}
