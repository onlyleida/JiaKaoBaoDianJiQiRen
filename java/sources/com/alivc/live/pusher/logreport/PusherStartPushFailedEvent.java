package com.alivc.live.pusher.logreport;

import com.alivc.live.pusher.AlivcLivePushConstants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class PusherStartPushFailedEvent {
    public static AlivcLivePushConstants.Topic kTopicType = AlivcLivePushConstants.Topic.error;
    public static String kTopicValue = "startPushFailed";

    public static class Args {
        public int errCode;
        public String errMsg;
    }

    public static Map<String, String> getArgsStr(Args args) {
        HashMap map = new HashMap();
        map.put("errCode", String.valueOf(args.errCode));
        map.put("errMsg", args.errMsg);
        return map;
    }
}
