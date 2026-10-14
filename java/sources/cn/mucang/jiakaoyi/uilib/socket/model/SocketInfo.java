package cn.mucang.jiakaoyi.uilib.socket.model;

import cn.mucang.android.jiakaoyi.signal.com.heartbeat.HeartBeatPolicy;
import com.mobile.auth.BuildConfig;
import com.tencent.connect.common.Constants;
import io.agora.rtc.internal.RtcEngineEvent;
import java.io.Serializable;
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes5.dex */
public class SocketInfo implements Serializable {
    public String deviceNum;
    public HeartBeatPolicy heartBeatPolicy;
    public String ip;
    public int port;
    public RetryPolicy retryPolicy;
    public String token;

    private String info() {
        return "ip=" + ipWrap() + ", port=" + (this.port ^ RtcEngineEvent.EvtType.EVT_UNPUBLISH_URL);
    }

    private String ipWrap() {
        String str = this.ip;
        return str == null ? BuildConfig.COMMON_MODULE_COMMIT_ID : str.replaceAll("1", Marker.ANY_MARKER).replaceAll(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO, "1").replaceAll("\\.", Constants.VIA_SHARE_TYPE_PUBLISHVIDEO);
    }

    public String toString() {
        return "SocketInfo{" + info() + "', heartBeatPolicy=(" + this.heartBeatPolicy.intervalSeconds + "," + this.heartBeatPolicy.stopBeatDiff + "), retryPolicy=(" + this.retryPolicy.maxTimes + "," + this.retryPolicy.sleepMsBetweenRetries + "), token='" + this.token + "', deviceNum='" + this.deviceNum + "'}";
    }
}
