package com.alivc.live.pusher.logreport;

import com.alivc.live.pusher.AlivcLivePushConstants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class PusherMuteOnEvent {
    public static AlivcLivePushConstants.Topic kTopicType = AlivcLivePushConstants.Topic.action;
    public static String kTopicValue = "mute";

    public static class Args {
    }

    public static Map<String, String> getArgsStr(Args args) {
        return new HashMap();
    }
}
