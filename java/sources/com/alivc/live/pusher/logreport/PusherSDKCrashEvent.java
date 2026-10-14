package com.alivc.live.pusher.logreport;

import com.alivc.live.pusher.AlivcLivePushConstants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class PusherSDKCrashEvent {
    public static AlivcLivePushConstants.Topic kTopicType = AlivcLivePushConstants.Topic.event;
    public static String kTopicValue = "sdkCrash";

    public static class Args {
    }

    public static Map<String, String> getArgsStr() {
        HashMap map = new HashMap();
        map.put("crashTime", "");
        return map;
    }
}
