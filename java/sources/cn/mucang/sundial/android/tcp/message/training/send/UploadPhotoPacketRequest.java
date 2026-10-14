package cn.mucang.sundial.android.tcp.message.training.send;

import cn.mucang.sundial.android.tcp.PacketResultConcern;
import cn.mucang.sundial.android.tcp.encoder.BytesEncoder;
import cn.mucang.sundial.android.tcp.message.training.ExtendSendMessage;
import cn.mucang.sundial.android.tcp.message.training.a;

/* JADX INFO: loaded from: classes5.dex */
public class UploadPhotoPacketRequest implements ExtendSendMessage, PacketResultConcern {
    private byte[] photoData;
    private String photoId;

    @Override // cn.mucang.sundial.android.tcp.message.Send
    public byte[] encode() {
        BytesEncoder bytesEncoder = new BytesEncoder();
        bytesEncoder.appendString(this.photoId, 10);
        bytesEncoder.appendBytes(this.photoData);
        return bytesEncoder.toByteArray();
    }

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 774;
    }

    public byte[] getPhotoData() {
        return this.photoData;
    }

    public String getPhotoId() {
        return this.photoId;
    }

    @Override // cn.mucang.sundial.android.tcp.message.training.ExtendSendMessage
    public /* synthetic */ boolean isNeedReply() {
        return a.$default$isNeedReply(this);
    }

    @Override // cn.mucang.sundial.android.tcp.message.training.ExtendSendMessage
    public /* synthetic */ boolean isRealtimeMessage() {
        return a.$default$isRealtimeMessage(this);
    }

    public void setPhotoData(byte[] bArr) {
        this.photoData = bArr;
    }

    public void setPhotoId(String str) {
        this.photoId = str;
    }
}
