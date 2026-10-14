package com.alivc.live.pusher.logreport;

import com.alivc.live.pusher.AlivcLivePushConstants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class PusherDelayInfoEvent {
    public static AlivcLivePushConstants.Topic kTopicType = AlivcLivePushConstants.Topic.event;
    public static String kTopicValue = "pushDelayInfo";

    public static class Args {
        public int totalDelay = 0;
        public int captureDelay = 0;
        public int encoderDelay = 0;
        public int sendDelay = 0;
    }

    public static Map<String, String> getArgsStr(Args args) {
        HashMap map = new HashMap();
        map.put("totalDelay", String.valueOf(args.totalDelay));
        map.put("captureDelay", String.valueOf(args.captureDelay));
        map.put("encoderDelay", String.valueOf(args.encoderDelay));
        map.put("sendDelay", String.valueOf(args.sendDelay));
        return map;
    }
}
