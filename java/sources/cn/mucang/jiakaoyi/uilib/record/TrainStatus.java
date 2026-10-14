package cn.mucang.jiakaoyi.uilib.record;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;", "", "type", "", "statusName", "", "(Ljava/lang/String;IILjava/lang/String;)V", "getStatusName", "()Ljava/lang/String;", "getType", "()I", TtmlNode.START, "going", "finish", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public enum TrainStatus {
    start(1, TtmlNode.START),
    going(2, "going"),
    finish(3, "finish");

    private final String statusName;
    private final int type;

    TrainStatus(int i, String str) {
        this.type = i;
        this.statusName = str;
    }

    public final String getStatusName() {
        return this.statusName;
    }

    public final int getType() {
        return this.type;
    }
}
