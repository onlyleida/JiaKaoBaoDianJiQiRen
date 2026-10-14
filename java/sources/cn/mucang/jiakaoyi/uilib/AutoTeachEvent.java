package cn.mucang.jiakaoyi.uilib;

import com.tencent.open.SocialConstants;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\u0006\"\u0004\b\t\u0010\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011¨\u0006\u0012"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;", "", SocialConstants.PARAM_APP_DESC, "", "(Ljava/lang/String;ILjava/lang/String;)V", "getDesc", "()Ljava/lang/String;", "extraTitle", "getExtraTitle", "setExtraTitle", "(Ljava/lang/String;)V", "CarBrake", "P0Error", "NetError", "GpsError", "ServerError", "TraceTeach", "OpenAutoTeach", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public enum AutoTeachEvent {
    CarBrake("刹车"),
    P0Error("P0故障"),
    NetError("网络异常"),
    GpsError("GPS无信号"),
    ServerError("服务器连接异常"),
    TraceTeach("轨迹教学"),
    OpenAutoTeach("开启自动示教");

    private final String desc;
    private String extraTitle;

    AutoTeachEvent(String str) {
        this.desc = str;
    }

    public final String getDesc() {
        return this.desc;
    }

    public final String getExtraTitle() {
        return this.extraTitle;
    }

    public final void setExtraTitle(String str) {
        this.extraTitle = str;
    }
}
