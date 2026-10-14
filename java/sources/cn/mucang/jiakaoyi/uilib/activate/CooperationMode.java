package cn.mucang.jiakaoyi.uilib.activate;

import com.tencent.open.SocialConstants;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;", "", "type", "", SocialConstants.PARAM_APP_DESC, "", "(Ljava/lang/String;IILjava/lang/String;)V", "getDesc", "()Ljava/lang/String;", "getType", "()I", "Share", "Lease", "BuyOut", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public enum CooperationMode {
    Share(1, "共享"),
    Lease(2, "租赁"),
    BuyOut(3, "买断");

    private final String desc;
    private final int type;

    CooperationMode(int i, String str) {
        this.type = i;
        this.desc = str;
    }

    public final String getDesc() {
        return this.desc;
    }

    public final int getType() {
        return this.type;
    }
}
