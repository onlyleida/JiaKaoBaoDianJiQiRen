package cn.mucang.sundial.android.tcp.message.training.send;

import cn.mucang.sundial.android.tcp.data.gnss.GNSSData;
import cn.mucang.sundial.android.tcp.encoder.BytesEncoder;
import cn.mucang.sundial.android.tcp.message.Request;
import cn.mucang.sundial.android.tcp.message.training.ExtendSendMessage;
import cn.mucang.sundial.android.tcp.message.training.a;
import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import java.sql.Timestamp;

/* JADX INFO: loaded from: classes5.dex */
public class StudentForceLogoutRequest implements ExtendSendMessage, Request {
    private long classroomId;
    private int currentDuration;
    private GNSSData gnssData;
    private String studentNo;
    private Timestamp timestamp;

    @Override // cn.mucang.sundial.android.tcp.message.Send
    public byte[] encode() {
        BytesEncoder bytesEncoder = new BytesEncoder();
        bytesEncoder.appendString(this.studentNo, 16);
        bytesEncoder.appendBCD(DeviceUtils.toBCD(this.timestamp), 6);
        bytesEncoder.appendWORD(this.currentDuration);
        bytesEncoder.appendDWORD(this.classroomId);
        bytesEncoder.appendBytes(this.gnssData.encode());
        return bytesEncoder.toByteArray();
    }

    public long getClassroomId() {
        return this.classroomId;
    }

    public int getCurrentDuration() {
        return this.currentDuration;
    }

    public GNSSData getGnssData() {
        return this.gnssData;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 28672;
    }

    public String getStudentNo() {
        return this.studentNo;
    }

    public Timestamp getTimestamp() {
        return this.timestamp;
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

    public void setCurrentDuration(int i) {
        this.currentDuration = i;
    }

    public void setGnssData(GNSSData gNSSData) {
        this.gnssData = gNSSData;
    }

    public void setStudentNo(String str) {
        this.studentNo = str;
    }

    public void setTimestamp(Timestamp timestamp) {
        this.timestamp = timestamp;
    }

    public String toString() {
        return "StudentForceLogoutRequest{studentNo='" + this.studentNo + "', timestamp=" + this.timestamp + ", currentDuration=" + this.currentDuration + ", classroomId=" + this.classroomId + ", gnssData=" + this.gnssData + '}';
    }
}
