package com.alivc.live.pusher.logreport;

import com.alivc.live.pusher.AlivcLivePushConstants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class PusherSetBGMEarsBackEvent {
    public static AlivcLivePushConstants.Topic kTopicType = AlivcLivePushConstants.Topic.action;
    public static String kTopicValue = "setBGMEarsBack";

    public static class Args {
        public boolean value = false;
        public int eh = 0;
        public int bh = 0;
    }

    public static Map<String, String> getArgsStr(Args args) {
        HashMap map = new HashMap();
        map.put("value", args.value ? "on" : "off");
        map.put("eh", String.valueOf(args.eh));
        map.put("bh", String.valueOf(args.bh));
        return map;
    }
}
