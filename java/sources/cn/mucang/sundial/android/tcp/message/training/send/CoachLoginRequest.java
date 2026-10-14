package cn.mucang.sundial.android.tcp.message.training.send;

import cn.mucang.sundial.android.tcp.data.gnss.GNSSData;
import cn.mucang.sundial.android.tcp.encoder.BytesEncoder;
import cn.mucang.sundial.android.tcp.message.Request;
import cn.mucang.sundial.android.tcp.message.training.ExtendSendMessage;
import cn.mucang.sundial.android.tcp.message.training.a;

/* JADX INFO: loaded from: classes5.dex */
public class CoachLoginRequest implements ExtendSendMessage, Request {
    private String coachNo;
    private GNSSData gnssData;
    private String idCard;
    private String teachType;

    @Override // cn.mucang.sundial.android.tcp.message.Send
    public byte[] encode() {
        BytesEncoder bytesEncoder = new BytesEncoder();
        bytesEncoder.appendString(this.coachNo, 16);
        bytesEncoder.appendString(this.idCard, 18);
        bytesEncoder.appendString(this.teachType, 2);
        bytesEncoder.appendBytes(this.gnssData.encode());
        return bytesEncoder.toByteArray();
    }

    public String getCoachNo() {
        return this.coachNo;
    }

    public GNSSData getGnssData() {
        return this.gnssData;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 257;
    }

    public String getIdCard() {
        return this.idCard;
    }

    public String getTeachType() {
        return this.teachType;
    }

    @Override // cn.mucang.sundial.android.tcp.message.training.ExtendSendMessage
    public boolean isNeedReply() {
        return true;
    }

    @Override // cn.mucang.sundial.android.tcp.message.training.ExtendSendMessage
    public /* synthetic */ boolean isRealtimeMessage() {
        return a.$default$isRealtimeMessage(this);
    }

    public void setCoachNo(String str) {
        this.coachNo = str;
    }

    public void setGnssData(GNSSData gNSSData) {
        this.gnssData = gNSSData;
    }

    public void setIdCard(String str) {
        this.idCard = str;
    }

    public void setTeachType(String str) {
        this.teachType = str;
    }

    public String toString() {
        return "CoachLoginRequest{coachNo='" + this.coachNo + "', idCard='" + this.idCard + "', teachType='" + this.teachType + "', gnssData=" + this.gnssData + '}';
    }
}
