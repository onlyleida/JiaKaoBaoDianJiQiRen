package com.alivc.live.pusher.logreport;

import com.alivc.live.pusher.AlivcLivePushConstants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class PusherPauseEvent {
    public static AlivcLivePushConstants.Topic kTopicType = AlivcLivePushConstants.Topic.action;
    public static String kTopicValue = "pause";
    public static long mLastPauseTime;

    public static class Args {
        public boolean isPauseScreen = false;
        public long totalUploadSize = 0;
        public long totalTime = 0;
    }

    public static Map<String, String> getArgsStr(Args args) {
        HashMap map = new HashMap();
        map.put("isPauseScreen", String.valueOf(args.isPauseScreen));
        map.put("totalUploadSize", String.valueOf(args.totalUploadSize));
        map.put("totalTime", String.valueOf(args.totalTime));
        return map;
    }
}
