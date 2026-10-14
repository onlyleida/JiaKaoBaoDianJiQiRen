package cn.mucang.sundial.android.tcp.message.training.send;

import cn.mucang.sundial.android.tcp.encoder.BytesEncoder;
import cn.mucang.sundial.android.tcp.message.Request;
import cn.mucang.sundial.android.tcp.message.training.ExtendSendMessage;
import cn.mucang.sundial.android.tcp.message.training.a;

/* JADX INFO: loaded from: classes5.dex */
public class UploadPhotoStartRequest implements ExtendSendMessage, Request {
    private int cameraChannel;
    private long classroomId;
    private int eventType;
    private int faceDetection;
    private byte[] gnssData;
    private int imageSize;
    private long photoDataSize;
    private String photoId;
    private int totalCount;
    private int uploadMode;
    private String userCode;

    @Override // cn.mucang.sundial.android.tcp.message.Send
    public byte[] encode() {
        BytesEncoder bytesEncoder = new BytesEncoder();
        bytesEncoder.appendString(this.photoId, 10);
        bytesEncoder.appendString(this.userCode, 16);
        bytesEncoder.appendBYTE(this.uploadMode);
        bytesEncoder.appendBYTE(this.cameraChannel);
        bytesEncoder.appendBYTE(this.imageSize);
        bytesEncoder.appendBYTE(this.eventType);
        bytesEncoder.appendWORD(this.totalCount);
        bytesEncoder.appendDWORD(this.photoDataSize);
        bytesEncoder.appendDWORD(this.classroomId);
        bytesEncoder.appendBytes(this.gnssData);
        bytesEncoder.appendBYTE(this.faceDetection);
        return bytesEncoder.toByteArray();
    }

    public int getCameraChannel() {
        return this.cameraChannel;
    }

    public long getClassroomId() {
        return this.classroomId;
    }

    public int getEventType() {
        return this.eventType;
    }

    public int getFaceDetection() {
        return this.faceDetection;
    }

    public byte[] getGnssData() {
        return this.gnssData;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 773;
    }

    public int getImageSize() {
        return this.imageSize;
    }

    public long getPhotoDataSize() {
        return this.photoDataSize;
    }

    public String getPhotoId() {
        return this.photoId;
    }

    public int getTotalCount() {
        return this.totalCount;
    }

    public int getUploadMode() {
        return this.uploadMode;
    }

    public String getUserCode() {
        return this.userCode;
    }

    @Override // cn.mucang.sundial.android.tcp.message.training.ExtendSendMessage
    public /* synthetic */ boolean isNeedReply() {
        return a.$default$isNeedReply(this);
    }

    @Override // cn.mucang.sundial.android.tcp.message.training.ExtendSendMessage
    public /* synthetic */ boolean isRealtimeMessage() {
        return a.$default$isRealtimeMessage(this);
    }

    public void setCameraChannel(int i) {
        this.cameraChannel = i;
    }

    public void setClassroomId(long j) {
        this.classroomId = j;
    }

    public void setEventType(int i) {
        this.eventType = i;
    }

    public void setFaceDetection(int i) {
        this.faceDetection = i;
    }

    public void setGnssData(byte[] bArr) {
        this.gnssData = bArr;
    }

    public void setImageSize(int i) {
        this.imageSize = i;
    }

    public void setPhotoDataSize(long j) {
        this.photoDataSize = j;
    }

    public void setPhotoId(String str) {
        this.photoId = str;
    }

    public void setTotalCount(int i) {
        this.totalCount = i;
    }

    public void setUploadMode(int i) {
        this.uploadMode = i;
    }

    public void setUserCode(String str) {
        this.userCode = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("UploadPhotoStartRequest{photoId='");
        sb.append(this.photoId);
        sb.append('\'');
        sb.append(", userCode='");
        sb.append(this.userCode);
        sb.append('\'');
        sb.append(", uploadMode=");
        sb.append(this.uploadMode);
        sb.append(", cameraChannel=");
        sb.append(this.cameraChannel);
        sb.append(", imageSize=");
        sb.append(this.imageSize);
        sb.append(", eventType=");
        sb.append(this.eventType);
        sb.append(", totalCount=");
        sb.append(this.totalCount);
        sb.append(", photoDataSize=");
        sb.append(this.photoDataSize);
        sb.append(", classroomId=");
        sb.append(this.classroomId);
        sb.append(", gnssData is null=");
        sb.append(this.gnssData == null);
        sb.append(", faceDetection=");
        sb.append(this.faceDetection);
        sb.append('}');
        return sb.toString();
    }
}
