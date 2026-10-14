package com.alivc.live.pusher.logreport;

import com.alivc.live.pusher.AlivcLivePushConstants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class PusherHeartBeatEvent {
    public static AlivcLivePushConstants.Topic kTopicType = AlivcLivePushConstants.Topic.event;
    public static String kTopicValue = "mediaInfo";

    public static class Args {
        public String mediaInfo;
    }

    public static Map<String, String> getArgsStr(Args args) {
        HashMap map = new HashMap();
        map.put("mediaInfo", args.mediaInfo);
        return map;
    }
}
