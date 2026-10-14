package io.agora.rtc.live;

import com.alivc.live.pusher.AlivcLivePushConstants;
import com.google.android.exoplayer2.audio.OpusUtil;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes6.dex */
public class LiveInjectStreamConfig {
    public int width = 0;
    public int height = 0;
    public int videoGop = 30;
    public int videoFramerate = 15;
    public int videoBitrate = Videoio.CAP_PROP_XI_DOWNSAMPLING;
    public AudioSampleRateType audioSampleRate = AudioSampleRateType.TYPE_44100;
    public int audioBitrate = 48;
    public int audioChannels = 1;

    public enum AudioSampleRateType {
        TYPE_32000(AlivcLivePushConstants.DEFAULT_VALUE_INT_AUDIO_SAMPLE_RATE),
        TYPE_44100(44100),
        TYPE_48000(OpusUtil.SAMPLE_RATE);

        private int value;

        AudioSampleRateType(int i) {
            this.value = i;
        }

        public static int getValue(AudioSampleRateType audioSampleRateType) {
            return audioSampleRateType.value;
        }
    }
}
