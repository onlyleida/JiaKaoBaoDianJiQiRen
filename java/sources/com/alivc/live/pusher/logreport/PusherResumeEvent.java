package com.alivc.live.pusher.logreport;

import com.alivc.live.pusher.AlivcLivePushConstants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class PusherResumeEvent {
    public static AlivcLivePushConstants.Topic kTopicType = AlivcLivePushConstants.Topic.action;
    public static String kTopicValue = "resume";

    public static class Args {
        public boolean sync = false;
        public boolean isResumeScreen = false;
        public long totalUploadSize = 0;
        public long totalTime = 0;
        public long cost = 0;
    }

    public static Map<String, String> getArgsStr(Args args) {
        HashMap map = new HashMap();
        map.put("sync", String.valueOf(args.sync));
        map.put("isResumeScreen", String.valueOf(args.isResumeScreen));
        map.put("totalUploadSize", String.valueOf(args.totalUploadSize));
        map.put("totalTime", String.valueOf(args.totalTime));
        map.put("costTime", String.valueOf(args.cost));
        return map;
    }
}
