package cn.mucang.sundial.android.tcp.message.training.send;

import cn.mucang.android.core.encode.a;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.entity.CourseRecord;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.PacketResultConcern;
import cn.mucang.sundial.android.tcp.data.gnss.GNSSData;
import cn.mucang.sundial.android.tcp.encoder.BytesEncoder;
import cn.mucang.sundial.android.tcp.message.training.ExtendSendMessage;
import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import java.math.BigDecimal;
import java.util.Date;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes5.dex */
public class ReportCourseRecordRequest implements ExtendSendMessage, PacketResultConcern {
    private long classroomId;
    private String coachNo;
    private String courseCode;
    private byte[] gnssData;
    private BigDecimal maxSpeed;
    private BigDecimal mileage;
    private boolean realtimeMessage;
    private String recordNo;
    private int recordStatus;
    private String recordTime;
    private int reportType;
    private String studentNo;

    public static ReportCourseRecordRequest from(CourseRecord courseRecord, int i, boolean z) {
        ReportCourseRecordRequest reportCourseRecordRequest = new ReportCourseRecordRequest();
        reportCourseRecordRequest.realtimeMessage = z;
        reportCourseRecordRequest.setRecordNo(courseRecord.getRecordNo());
        reportCourseRecordRequest.setReportType(i);
        reportCourseRecordRequest.setStudentNo(courseRecord.getStudentNo());
        reportCourseRecordRequest.setCoachNo(courseRecord.getCoachNo());
        reportCourseRecordRequest.setCourseCode(courseRecord.getCourseCode());
        reportCourseRecordRequest.setClassroomId(courseRecord.getClassroomId());
        reportCourseRecordRequest.setRecordStatus(courseRecord.getRecordStatus());
        reportCourseRecordRequest.setMaxSpeed(courseRecord.getMaxSpeed());
        reportCourseRecordRequest.setMileage(courseRecord.getMileage());
        reportCourseRecordRequest.setRecordTime(DeviceUtils.toBCD3(new Date(courseRecord.getRecordTime())));
        reportCourseRecordRequest.setGnssData(GNSSData.toBytes(courseRecord.getGnssData()));
        return reportCourseRecordRequest;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Send
    public byte[] encode() {
        BytesEncoder bytesEncoder = new BytesEncoder();
        bytesEncoder.appendString(this.recordNo, 26);
        bytesEncoder.appendBYTE(this.reportType);
        bytesEncoder.appendString(this.studentNo, 16);
        bytesEncoder.appendString(this.coachNo, 16);
        bytesEncoder.appendDWORD(this.classroomId);
        bytesEncoder.appendBCD(this.recordTime, 3);
        bytesEncoder.appendBCD(this.courseCode, 5);
        bytesEncoder.appendBYTE(this.recordStatus);
        bytesEncoder.appendWORD((int) (this.maxSpeed.doubleValue() * ((double) SundialManager.getInstance().getAccuracyMultiplier())));
        bytesEncoder.appendWORD((int) (this.mileage.doubleValue() * ((double) SundialManager.getInstance().getAccuracyMultiplier())));
        bytesEncoder.appendBytes(this.gnssData);
        SundialLog.com("分钟学时数据: " + a.e(bytesEncoder.toByteArray()));
        return bytesEncoder.toByteArray();
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

    public byte[] getGnssData() {
        return this.gnssData;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return Videoio.CAP_PROP_XI_LENS_FOCUS_DISTANCE;
    }

    public BigDecimal getMaxSpeed() {
        return this.maxSpeed;
    }

    public BigDecimal getMileage() {
        return this.mileage;
    }

    public String getRecordNo() {
        return this.recordNo;
    }

    public int getRecordStatus() {
        return this.recordStatus;
    }

    public String getRecordTime() {
        return this.recordTime;
    }

    public int getReportType() {
        return this.reportType;
    }

    public String getStudentNo() {
        return this.studentNo;
    }

    @Override // cn.mucang.sundial.android.tcp.message.training.ExtendSendMessage
    public /* synthetic */ boolean isNeedReply() {
        return cn.mucang.sundial.android.tcp.message.training.a.$default$isNeedReply(this);
    }

    @Override // cn.mucang.sundial.android.tcp.message.training.ExtendSendMessage
    public boolean isRealtimeMessage() {
        return this.realtimeMessage;
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

    public void setGnssData(byte[] bArr) {
        this.gnssData = bArr;
    }

    public void setMaxSpeed(BigDecimal bigDecimal) {
        this.maxSpeed = bigDecimal;
    }

    public void setMileage(BigDecimal bigDecimal) {
        this.mileage = bigDecimal;
    }

    public void setRealtimeMessage(boolean z) {
        this.realtimeMessage = z;
    }

    public void setRecordNo(String str) {
        this.recordNo = str;
    }

    public void setRecordStatus(int i) {
        this.recordStatus = i;
    }

    public void setRecordTime(String str) {
        this.recordTime = str;
    }

    public void setReportType(int i) {
        this.reportType = i;
    }

    public void setStudentNo(String str) {
        this.studentNo = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{realtimeMessage=");
        sb.append(this.realtimeMessage);
        sb.append(", recordNo='");
        sb.append(this.recordNo);
        sb.append('\'');
        sb.append(", reportType=");
        sb.append(this.reportType);
        sb.append(", studentNo='");
        sb.append(this.studentNo);
        sb.append('\'');
        sb.append(", coachNo='");
        sb.append(this.coachNo);
        sb.append('\'');
        sb.append(", classroomId=");
        sb.append(this.classroomId);
        sb.append(", recordTime='");
        sb.append(this.recordTime);
        sb.append('\'');
        sb.append(", courseCode='");
        sb.append(this.courseCode);
        sb.append('\'');
        sb.append(", recordStatus=");
        sb.append(this.recordStatus);
        sb.append(", maxSpeed=");
        sb.append(this.maxSpeed);
        sb.append(", mileage=");
        sb.append(this.mileage);
        sb.append(", gnssData is null =");
        sb.append(this.gnssData == null);
        sb.append('}');
        return sb.toString();
    }
}
