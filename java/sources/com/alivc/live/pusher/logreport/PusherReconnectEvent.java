package com.alivc.live.pusher.logreport;

import com.alivc.live.pusher.AlivcLivePushConstants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class PusherReconnectEvent {
    public static AlivcLivePushConstants.Topic kTopicType = AlivcLivePushConstants.Topic.action;
    public static String kTopicValue = "reconnect";

    public static class Args {
        public long autMs = 0;
        public long vutMs = 0;
    }

    public static Map<String, String> getArgsStr(Args args) {
        HashMap map = new HashMap();
        map.put("audioUploadTime", String.valueOf(args.autMs));
        map.put("videoUploadTime", String.valueOf(args.vutMs));
        return map;
    }
}
