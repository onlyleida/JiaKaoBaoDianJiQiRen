package com.alivc.live.pusher.logreport;

import com.alivc.live.pusher.AlivcLivePushConstants;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class PusherFirstFrameSentEvent {
    public static AlivcLivePushConstants.Topic kTopicType = AlivcLivePushConstants.Topic.event;
    public static String kTopicValue = "FirstFrameSent";

    public static class Args {
        public long autMs = 0;
        public long vutMs = 0;
        public String resolution = null;
        public String st = "dual";
        public boolean ao = false;
        public boolean vo = false;
        public boolean he = false;
        public int wc = 0;
        public boolean pum = false;
        public int fps = 20;
        public int ivb = 0;
        public int mavb = 0;
        public int mivb = 0;
        public int asr = AlivcLivePushConstants.DEFAULT_VALUE_INT_AUDIO_SAMPLE_RATE;
        public int po = 0;
        public int ct = 0;
        public int bcp = 15;
        public int bw = 70;
        public int bbu = 40;
        public int br = 40;
        public int btf = 40;
        public int bsf = 50;
        public int bbe = 30;
        public boolean flash = true;
        public int crmc = 5;
        public int cri = 0;
        public boolean prm = true;
        public int gop = 3;
        public int utm = 5;
    }

    public static Map<String, String> getArgsStr(Args args) {
        HashMap map = new HashMap();
        map.put("aut", String.valueOf(args.autMs));
        map.put("vut", String.valueOf(args.vutMs));
        map.put("resolution", String.valueOf(args.resolution));
        map.put("st", String.valueOf(args.st));
        map.put("ao", String.valueOf(args.ao ? 1 : 0));
        map.put("vo", String.valueOf(args.vo ? 1 : 0));
        map.put("he", String.valueOf(args.he ? 1 : 0));
        map.put("wc", String.valueOf(args.wc));
        map.put("pum", String.valueOf(args.pum ? 1 : 0));
        map.put("fps", String.valueOf(args.fps));
        map.put("ivb", String.valueOf(args.ivb));
        map.put("mavb", String.valueOf(args.mavb));
        map.put("mivb", String.valueOf(args.mivb));
        map.put("asr", String.valueOf(args.asr));
        map.put("po", String.valueOf(args.po));
        map.put("ct", String.valueOf(args.ct));
        map.put("bw", String.valueOf(args.bw));
        map.put("bbu", String.valueOf(args.bbu));
        map.put(TtmlNode.TAG_BR, String.valueOf(args.br));
        map.put("bcp", String.valueOf(args.bcp));
        map.put("btf", String.valueOf(args.btf));
        map.put("bsf", String.valueOf(args.bsf));
        map.put("bbe", String.valueOf(args.bbe));
        map.put("flash", String.valueOf(args.flash ? 1 : 0));
        map.put("crmc", String.valueOf(args.crmc));
        map.put("cri", String.valueOf(args.cri));
        map.put("prm", String.valueOf(args.prm ? 1 : 0));
        map.put("gop", String.valueOf(args.gop));
        map.put("utm", String.valueOf(args.utm));
        return map;
    }
}
