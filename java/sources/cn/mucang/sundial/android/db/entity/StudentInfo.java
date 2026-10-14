package cn.mucang.sundial.android.db.entity;

import cn.mucang.android.core.db.IdEntity;
import cn.mucang.android.core.utils.n0;

/* JADX INFO: loaded from: classes5.dex */
public class StudentInfo extends IdEntity {
    private String avatar;
    private long classroomId;
    private String coachNo;
    private int coachTakePhoto;
    private String courseCode;
    private String driveLicence;
    private int finishedDuration;
    private int finishedMileage;
    private String idCard;
    private int status;
    private String studentName;
    private String studentNo;
    private int totalDuration;
    private int totalMileage;
    private long updateTime;

    public enum STATUS {
        INIT(0),
        LOGIN(1);

        private final int value;

        STATUS(int i) {
            this.value = i;
        }

        static STATUS from(int i) {
            for (STATUS status : values()) {
                if (status.value == i) {
                    return status;
                }
            }
            throw new IllegalArgumentException("非法的结果值:" + i);
        }

        public int getValue() {
            return this.value;
        }
    }

    public String getAvatar() {
        return this.avatar;
    }

    public long getClassroomId() {
        return this.classroomId;
    }

    public String getCoachNo() {
        return this.coachNo;
    }

    public int getCoachTakePhoto() {
        return this.coachTakePhoto;
    }

    public String getCourseCode() {
        return this.courseCode;
    }

    public String getDriveLicence() {
        return this.driveLicence;
    }

    public int getFinishedDuration() {
        return this.finishedDuration;
    }

    public int getFinishedMileage() {
        return this.finishedMileage;
    }

    public String getIdCard() {
        return this.idCard;
    }

    public int getStatus() {
        return this.status;
    }

    public String getStudentName() {
        return this.studentName;
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

    public long getUpdateTime() {
        return this.updateTime;
    }

    public boolean infoValid() {
        return n0.g(this.studentNo) && n0.g(this.idCard);
    }

    public boolean isCoachTakePhoto() {
        return this.coachTakePhoto == 1;
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setClassroomId(long j) {
        this.classroomId = j;
    }

    public void setCoachNo(String str) {
        this.coachNo = str;
    }

    public void setCoachTakePhoto(int i) {
        this.coachTakePhoto = i;
    }

    public void setCourseCode(String str) {
        this.courseCode = str;
    }

    public void setDriveLicence(String str) {
        this.driveLicence = str;
    }

    public void setFinishedDuration(int i) {
        this.finishedDuration = i;
    }

    public void setFinishedMileage(int i) {
        this.finishedMileage = i;
    }

    public void setIdCard(String str) {
        this.idCard = str;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public void setStudentName(String str) {
        this.studentName = str;
    }

    public void setStudentNo(String str) {
        this.studentNo = str;
    }

    public void setTotalDuration(int i) {
        this.totalDuration = i;
    }

    public void setTotalMileage(int i) {
        this.totalMileage = i;
    }

    public void setUpdateTime(long j) {
        this.updateTime = j;
    }
}
