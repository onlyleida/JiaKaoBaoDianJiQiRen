package cn.mucang.sundial.android.tcp.message.training.send;

import cn.mucang.sundial.android.tcp.encoder.BytesEncoder;
import cn.mucang.sundial.android.tcp.message.training.ExtendSendMessage;
import cn.mucang.sundial.android.tcp.message.training.a;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ReportQueryPhotoResponse implements ExtendSendMessage {
    private boolean finished;
    private List<String> photoList;
    private int totalCount;

    @Override // cn.mucang.sundial.android.tcp.message.Send
    public byte[] encode() {
        BytesEncoder bytesEncoder = new BytesEncoder();
        if (this.finished) {
            bytesEncoder.appendBYTE(1);
        } else {
            bytesEncoder.appendBYTE(0);
        }
        bytesEncoder.appendBYTE(this.totalCount);
        bytesEncoder.appendBYTE(this.photoList.size());
        Iterator<String> it = this.photoList.iterator();
        while (it.hasNext()) {
            bytesEncoder.appendString(it.next(), 10);
        }
        return bytesEncoder.toByteArray();
    }

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 771;
    }

    public List<String> getPhotoList() {
        return this.photoList;
    }

    public int getTotalCount() {
        return this.totalCount;
    }

    public boolean isFinished() {
        return this.finished;
    }

    @Override // cn.mucang.sundial.android.tcp.message.training.ExtendSendMessage
    public /* synthetic */ boolean isNeedReply() {
        return a.$default$isNeedReply(this);
    }

    @Override // cn.mucang.sundial.android.tcp.message.training.ExtendSendMessage
    public /* synthetic */ boolean isRealtimeMessage() {
        return a.$default$isRealtimeMessage(this);
    }

    public void setFinished(boolean z) {
        this.finished = z;
    }

    public void setPhotoList(List<String> list) {
        this.photoList = list;
    }

    public void setTotalCount(int i) {
        this.totalCount = i;
    }
}
