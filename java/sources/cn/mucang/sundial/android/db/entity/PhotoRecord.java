package cn.mucang.sundial.android.db.entity;

import cn.mucang.android.core.db.IdEntity;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public class PhotoRecord extends IdEntity {
    private long classroomId;
    private int eventType;
    private String gnssData;
    private long recordTime;
    private int uploadMode;
    private int uploadStatus;
    private String photoId = "";
    private String userCode = "";
    private String path = "";

    @Override // cn.mucang.android.core.db.IdEntity
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass() && super.equals(obj)) {
            return Objects.equals(this.photoId, ((PhotoRecord) obj).photoId);
        }
        return false;
    }

    public long getClassroomId() {
        return this.classroomId;
    }

    public int getEventType() {
        return this.eventType;
    }

    public String getGnssData() {
        return this.gnssData;
    }

    public String getPath() {
        return this.path;
    }

    public String getPhotoId() {
        return this.photoId;
    }

    public long getRecordTime() {
        return this.recordTime;
    }

    public int getUploadMode() {
        return this.uploadMode;
    }

    public int getUploadStatus() {
        return this.uploadStatus;
    }

    public String getUserCode() {
        return this.userCode;
    }

    @Override // cn.mucang.android.core.db.IdEntity
    public int hashCode() {
        int iHashCode = super.hashCode() * 31;
        String str = this.photoId;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public void setClassroomId(long j) {
        this.classroomId = j;
    }

    public void setEventType(int i) {
        this.eventType = i;
    }

    public void setGnssData(String str) {
        this.gnssData = str;
    }

    public void setPath(String str) {
        this.path = str;
    }

    public void setPhotoId(String str) {
        this.photoId = str;
    }

    public void setRecordTime(long j) {
        this.recordTime = j;
    }

    public void setUploadMode(int i) {
        this.uploadMode = i;
    }

    public void setUploadStatus(int i) {
        this.uploadStatus = i;
    }

    public void setUserCode(String str) {
        this.userCode = str;
    }

    public String toString() {
        return "PhotoRecord{photoId='" + this.photoId + "', userCode='" + this.userCode + "', classroomId=" + this.classroomId + ", uploadMode=" + this.uploadMode + ", eventType=" + this.eventType + ", path='" + this.path + "', recordTime=" + this.recordTime + ", uploadStatus=" + this.uploadStatus + ", gnssData='" + this.gnssData + "'}";
    }
}
