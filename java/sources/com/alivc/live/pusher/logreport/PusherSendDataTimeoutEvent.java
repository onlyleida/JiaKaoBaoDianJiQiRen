package com.alivc.live.pusher.logreport;

import com.alivc.live.pusher.AlivcLivePushConstants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class PusherSendDataTimeoutEvent {
    public static AlivcLivePushConstants.Topic kTopicType = AlivcLivePushConstants.Topic.error;
    public static String kTopicValue = "sendDataTimeout";

    public static class Args {
    }

    public static Map<String, String> getArgsStr(Args args) {
        return new HashMap();
    }
}
