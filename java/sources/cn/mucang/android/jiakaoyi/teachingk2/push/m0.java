package cn.mucang.android.jiakaoyi.teachingk2.push;

import cn.mucang.android.jiakaoyi.framework.utils.TrafficHelper;
import org.webrtc.EglBase;
import org.webrtc.EncodedImage;
import org.webrtc.HardwareVideoDecoderFactory;
import org.webrtc.VideoCodecInfo;
import org.webrtc.VideoCodecStatus;
import org.webrtc.VideoDecoder;
import org.webrtc.r0;

/* JADX INFO: loaded from: classes4.dex */
public class m0 extends HardwareVideoDecoderFactory {

    class a implements VideoDecoder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        TrafficHelper.a f7525a = TrafficHelper.g("ai_camera_traffic", "AI视频");
        final /* synthetic */ VideoDecoder b;

        a(m0 m0Var, VideoDecoder videoDecoder) {
            this.b = videoDecoder;
        }

        @Override // org.webrtc.VideoDecoder
        public /* synthetic */ long createNativeVideoDecoder() {
            return r0.$default$createNativeVideoDecoder(this);
        }

        @Override // org.webrtc.VideoDecoder
        public VideoCodecStatus decode(EncodedImage encodedImage, VideoDecoder.DecodeInfo decodeInfo) {
            this.f7525a.c(encodedImage.buffer.remaining());
            return this.b.decode(encodedImage, decodeInfo);
        }

        @Override // org.webrtc.VideoDecoder
        public String getImplementationName() {
            return this.b.getImplementationName();
        }

        @Override // org.webrtc.VideoDecoder
        public boolean getPrefersLateDecoding() {
            return this.b.getPrefersLateDecoding();
        }

        @Override // org.webrtc.VideoDecoder
        public VideoCodecStatus initDecode(VideoDecoder.Settings settings, VideoDecoder.Callback callback) {
            return this.b.initDecode(settings, callback);
        }

        @Override // org.webrtc.VideoDecoder
        public VideoCodecStatus release() {
            return this.b.release();
        }
    }

    public m0(EglBase.Context context) {
        super(context);
    }

    @Override // org.webrtc.HardwareVideoDecoderFactory, org.webrtc.MediaCodecVideoDecoderFactory, org.webrtc.VideoDecoderFactory
    public VideoDecoder createDecoder(VideoCodecInfo videoCodecInfo) {
        VideoDecoder videoDecoderCreateDecoder = super.createDecoder(videoCodecInfo);
        if (videoDecoderCreateDecoder != null) {
            return new a(this, videoDecoderCreateDecoder);
        }
        return null;
    }
}
