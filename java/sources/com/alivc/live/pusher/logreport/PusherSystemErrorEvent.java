package com.alivc.live.pusher.logreport;

import com.alivc.live.pusher.AlivcLivePushConstants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class PusherSystemErrorEvent {
    public static AlivcLivePushConstants.Topic kTopicType = AlivcLivePushConstants.Topic.error;
    public static String kTopicValue = "systemError";

    public static class Args {
        public long error_code = 0;
        public String error_msg = "";
        public long totalUploadSize = 0;
        public long totalTime = 0;
    }

    public static Map<String, String> getArgsStr(Args args) {
        HashMap map = new HashMap();
        map.put("error_code", String.valueOf(args.error_code));
        map.put("error_msg", String.valueOf(args.error_msg));
        map.put("totalUploadSize", String.valueOf(args.totalUploadSize));
        map.put("totalTime", String.valueOf(args.totalTime));
        return map;
    }
}
