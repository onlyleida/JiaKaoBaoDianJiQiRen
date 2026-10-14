package cn.mucang.sundial.android.db.entity;

import android.text.TextUtils;
import cn.mucang.android.core.db.IdEntity;
import cn.mucang.sundial.android.SundialManager;
import com.alibaba.fastjson.JSON;
import com.mobile.auth.gatewayauth.utils.EncryptUtils;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

/* JADX INFO: loaded from: classes5.dex */
public class CourseRecord extends IdEntity {
    private long classroomId;
    private String coachNo;
    private String courseCode;
    private String gnssData;
    private String maxSpeed;
    private String mileage;
    private String recordNo;
    private int recordStatus;
    private long recordTime;
    private String studentNo;
    private int uploadStatus;

    public static String createRecordNo(long j, int i) {
        RegisterInfo registerInfo = SundialManager.getInstance().getRegisterInfo();
        StringBuilder sb = new StringBuilder();
        if (registerInfo == null || TextUtils.isEmpty(registerInfo.getDeviceCode())) {
            sb.append(EncryptUtils.IV_PARAMETER_SPEC);
        } else {
            sb.append(registerInfo.getDeviceCode());
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyMMdd");
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        sb.append(simpleDateFormat.format(calendar.getTime()));
        sb.append(new DecimalFormat("0000").format(i));
        return sb.toString();
    }

    public long getClassroomId() {
        return this.classroomId;
    }

    public String getCoachNo() {
        return this.coachNo;
    }

    public String getCourseCode() {
        return this.courseCode;
    }

    public String getGnssData() {
        return this.gnssData;
    }

    public BigDecimal getMaxSpeed() {
        return new BigDecimal(this.maxSpeed);
    }

    public BigDecimal getMileage() {
        return new BigDecimal(this.mileage);
    }

    public String getRecordNo() {
        return this.recordNo;
    }

    public int getRecordStatus() {
        return this.recordStatus;
    }

    public long getRecordTime() {
        return this.recordTime;
    }

    public String getStudentNo() {
        return this.studentNo;
    }

    public int getUploadStatus() {
        return this.uploadStatus;
    }

    public void setClassroomId(long j) {
        this.classroomId = j;
    }

    public void setCoachNo(String str) {
        this.coachNo = str;
    }

    public void setCourseCode(String str) {
        this.courseCode = str;
    }

    public void setGnssData(String str) {
        this.gnssData = str;
    }

    public void setMaxSpeed(BigDecimal bigDecimal) {
        if (bigDecimal != null) {
            this.maxSpeed = bigDecimal.toString();
        } else {
            this.maxSpeed = BigDecimal.ZERO.toString();
        }
    }

    public void setMileage(BigDecimal bigDecimal) {
        if (bigDecimal != null) {
            this.mileage = bigDecimal.toString();
        } else {
            this.mileage = BigDecimal.ZERO.toString();
        }
    }

    public void setRecordNo(String str) {
        this.recordNo = str;
    }

    public void setRecordStatus(int i) {
        this.recordStatus = i;
    }

    public void setRecordTime(long j) {
        this.recordTime = j;
    }

    public void setStudentNo(String str) {
        this.studentNo = str;
    }

    public void setUploadStatus(int i) {
        this.uploadStatus = i;
    }

    public String toString() {
        return JSON.toJSONString(this);
    }
}
