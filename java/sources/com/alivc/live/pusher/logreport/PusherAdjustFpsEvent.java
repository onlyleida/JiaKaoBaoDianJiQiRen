package com.alivc.live.pusher.logreport;

import com.alivc.live.pusher.AlivcLivePushConstants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class PusherAdjustFpsEvent {
    public static AlivcLivePushConstants.Topic kTopicType = AlivcLivePushConstants.Topic.event;
    public static String kTopicValue = "adjustFps";

    public static class Args {
        public int oldFps = 0;
        public int newFps = 0;
    }

    public static Map<String, String> getArgsStr(Args args) {
        HashMap map = new HashMap();
        map.put("oldFps", String.valueOf(args.oldFps));
        map.put("newFps", String.valueOf(args.newFps));
        return map;
    }
}
