package com.alivc.live.pusher.logreport;

import com.alivc.live.pusher.AlivcLivePushConstants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class PusherDropFrameEvent {
    public static AlivcLivePushConstants.Topic kTopicType = AlivcLivePushConstants.Topic.event;
    public static String kTopicValue = "dropFrame";

    public static class PusherDropFrameArgs {
        public int vpiubbd = 0;
        public int vpiubad = 0;
        public int apiubbd = 0;
        public int apiubad = 0;
    }

    public static Map<String, String> getArgsStr(PusherDropFrameArgs pusherDropFrameArgs) {
        HashMap map = new HashMap();
        map.put("vpiubbd", String.valueOf(pusherDropFrameArgs.vpiubbd));
        map.put("vpiubad", String.valueOf(pusherDropFrameArgs.vpiubad));
        map.put("apiubbd", String.valueOf(pusherDropFrameArgs.apiubbd));
        map.put("apiubad", String.valueOf(pusherDropFrameArgs.apiubad));
        return map;
    }
}
