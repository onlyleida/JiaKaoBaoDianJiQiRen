package com.alivc.live.pusher.logreport;

import com.alivc.live.pusher.AlivcLivePushConstants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class PusherAdjustBitrateEvent {
    public static AlivcLivePushConstants.Topic kTopicType = AlivcLivePushConstants.Topic.event;
    public static String kTopicValue = "adjustBitrate";

    public static class Args {
        public int oeb = 0;
        public int neb = 0;
        public int ceb = 0;
        public int cub = 0;
    }

    public static Map<String, String> getArgsStr(Args args) {
        HashMap map = new HashMap();
        map.put("oldEncodeBitrate", String.valueOf(args.oeb));
        map.put("newEncodeBitrate", String.valueOf(args.neb));
        map.put("currentEncodeBitrate", String.valueOf(args.ceb));
        map.put("currentUploadBitrate", String.valueOf(args.cub));
        return map;
    }
}
