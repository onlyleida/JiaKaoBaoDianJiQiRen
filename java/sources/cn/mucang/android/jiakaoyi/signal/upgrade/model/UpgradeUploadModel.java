package cn.mucang.android.jiakaoyi.signal.upgrade.model;

import com.tencent.open.SocialConstants;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;", "Ljava/io/Serializable;", "()V", SocialConstants.PARAM_SEND_MSG, "", "getMsg", "()Ljava/lang/String;", "setMsg", "(Ljava/lang/String;)V", "type", "", "getType", "()I", "setType", "(I)V", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class UpgradeUploadModel implements Serializable {
    private String msg;
    private int type;

    public final String getMsg() {
        return this.msg;
    }

    public final int getType() {
        return this.type;
    }

    public final void setMsg(String str) {
        this.msg = str;
    }

    public final void setType(int i) {
        this.type = i;
    }
}
