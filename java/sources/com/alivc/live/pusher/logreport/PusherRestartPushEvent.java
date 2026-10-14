package com.alivc.live.pusher.logreport;

import com.alivc.live.pusher.AlivcLivePushConstants;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class PusherRestartPushEvent {
    public static AlivcLivePushConstants.Topic kTopicType = AlivcLivePushConstants.Topic.action;
    public static String kTopicValue = "restartPush";

    public static Map<String, String> getArgsStr(PusherStartPushEvent.Args args) {
        return PusherStartPushEvent.getArgsStr(args);
    }
}
