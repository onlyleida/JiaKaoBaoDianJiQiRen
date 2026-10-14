package cn.mucang.sundial.android.tcp.message.training.send;

import cn.mucang.sundial.android.tcp.data.gnss.GNSSData;
import cn.mucang.sundial.android.tcp.encoder.BytesEncoder;
import cn.mucang.sundial.android.tcp.message.Request;
import cn.mucang.sundial.android.tcp.message.training.ExtendSendMessage;
import cn.mucang.sundial.android.tcp.message.training.a;

/* JADX INFO: loaded from: classes5.dex */
public class StudentLoginRequest implements ExtendSendMessage, Request {
    private long classroomId;
    private String coachNo;
    private String courseCode;
    private GNSSData gnssData;
    private String studentNo;

    @Override // cn.mucang.sundial.android.tcp.message.Send
    public byte[] encode() {
        BytesEncoder bytesEncoder = new BytesEncoder();
        bytesEncoder.appendString(this.studentNo, 16);
        bytesEncoder.appendString(this.coachNo, 16);
        bytesEncoder.appendBCD(this.courseCode, 5);
        bytesEncoder.appendDWORD(this.classroomId);
        bytesEncoder.appendBytes(this.gnssData.encode());
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

    public GNSSData getGnssData() {
        return this.gnssData;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 513;
    }

    public String getStudentNo() {
        return this.studentNo;
    }

    @Override // cn.mucang.sundial.android.tcp.message.training.ExtendSendMessage
    public boolean isNeedReply() {
        return true;
    }

    @Override // cn.mucang.sundial.android.tcp.message.training.ExtendSendMessage
    public /* synthetic */ boolean isRealtimeMessage() {
        return a.$default$isRealtimeMessage(this);
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

    public void setGnssData(GNSSData gNSSData) {
        this.gnssData = gNSSData;
    }

    public void setStudentNo(String str) {
        this.studentNo = str;
    }

    public String toString() {
        return "StudentLoginRequest{studentNo='" + this.studentNo + "', coachNo='" + this.coachNo + "', courseCode='" + this.courseCode + "', classroomId=" + this.classroomId + ", gnssData=" + this.gnssData + '}';
    }
}
