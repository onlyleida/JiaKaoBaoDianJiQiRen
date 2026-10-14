package com.alivc.live.pusher.logreport;

import com.alivc.live.pusher.AlivcLivePushConstants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class PusherStartPushSuccessEvent {
    public static AlivcLivePushConstants.Topic kTopicType = AlivcLivePushConstants.Topic.event;
    public static String kTopicValue = "startPushSuccess";

    public static class Args {
        public String url;
    }

    public static Map<String, String> getArgsStr(Args args) {
        HashMap map = new HashMap();
        map.put("url", args.url);
        return map;
    }
}
