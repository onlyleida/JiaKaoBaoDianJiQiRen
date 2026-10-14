package cn.mucang.sundial.android.db.entity;

import cn.mucang.android.core.db.IdEntity;
import cn.mucang.android.core.utils.n0;

/* JADX INFO: loaded from: classes5.dex */
public class CoachInfo extends IdEntity {
    private String avatar;
    private String coachName;
    private String coachNo;
    private String driveType;
    private String idCard;
    private String schoolName;
    private int status;
    private String teachType;
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

    public String getCoachName() {
        return this.coachName;
    }

    public String getCoachNo() {
        return this.coachNo;
    }

    public String getDriveType() {
        return this.driveType;
    }

    public String getIdCard() {
        return this.idCard;
    }

    public String getSchoolName() {
        return this.schoolName;
    }

    public int getStatus() {
        return this.status;
    }

    public String getTeachType() {
        return this.teachType;
    }

    public long getUpdateTime() {
        return this.updateTime;
    }

    public boolean infoValid() {
        return n0.g(this.coachNo) && n0.g(this.idCard);
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setCoachName(String str) {
        this.coachName = str;
    }

    public void setCoachNo(String str) {
        this.coachNo = str;
    }

    public void setDriveType(String str) {
        this.driveType = str;
    }

    public void setIdCard(String str) {
        this.idCard = str;
    }

    public void setSchoolName(String str) {
        this.schoolName = str;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public void setTeachType(String str) {
        this.teachType = str;
    }

    public void setUpdateTime(long j) {
        this.updateTime = j;
    }
}
