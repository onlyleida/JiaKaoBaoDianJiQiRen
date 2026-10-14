package com.alivc.live.pusher.logreport;

import com.alivc.live.pusher.AlivcLivePushConstants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class PusherSetBGMEvent {
    public static AlivcLivePushConstants.Topic kTopicType = AlivcLivePushConstants.Topic.action;
    public static String kTopicValue = "playBGM";

    public static class Args {
        public boolean isOpen = false;
        public int voice = 0;
        public int music = 0;
    }

    public static Map<String, String> getArgsStr(Args args) {
        HashMap map = new HashMap();
        map.put("isOpen", String.valueOf(args.isOpen));
        map.put("captureVolume", String.valueOf(args.voice));
        map.put("bgmVolume", String.valueOf(args.music));
        return map;
    }
}
