package cn.mucang.jiakaoyi.uilib.socket.model;

import cn.mucang.android.jiakaoyi.signal.communicate.receive.l;
import cn.mucang.jiakaoyi.uilib.socket.SocketModel;

/* JADX INFO: loaded from: classes5.dex */
public class CallModel extends SocketModel {
    public final String accessToken;
    public final String channelName;
    public final int voiceType;

    public CallModel(String str, String str2, int i) {
        super(l.Receive_Ai_Hand_Result);
        this.accessToken = str;
        this.channelName = str2;
        this.voiceType = i;
    }
}
