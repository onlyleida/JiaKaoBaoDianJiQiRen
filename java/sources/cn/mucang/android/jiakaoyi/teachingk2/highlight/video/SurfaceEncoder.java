package cn.mucang.android.jiakaoyi.teachingk2.highlight.video;

import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.util.Log;
import android.view.Surface;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.log.f;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.highlight.u.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u001f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\b\u0010\b\u001a\u00020\tH\u0016J\b\u0010\n\u001a\u00020\tH\u0014R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/highlight/video/SurfaceEncoder;", "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/video/Encoder;", "filePath", "", "width", "", "height", "(Ljava/lang/String;II)V", "prepare", "", "release", "Companion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SurfaceEncoder extends c {
    private static final boolean p = MucangConfig.v();
    private final int n;
    private final int o;

    public SurfaceEncoder(String str, int i, int i2) {
        this.n = i;
        this.o = i2;
        k(str);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.highlight.video.c
    public void g() throws Exception {
        Object objM139constructorimpl;
        Integer numValueOf;
        boolean z = p;
        if (z) {
            Log.i("SurfaceEncoder", "prepare:");
        }
        this.f7176g = -1;
        this.f7175f = false;
        this.b = true;
        this.f7174e = false;
        MediaCodecInfo mediaCodecInfoI = c.i("video/avc");
        if (mediaCodecInfoI == null) {
            f.o("Unable to find an appropriate codec for video/avc");
            return;
        }
        if (z) {
            Log.i("SurfaceEncoder", r.m("selected codec: ", mediaCodecInfoI.getName()));
        }
        this.j = new MediaCodec.BufferInfo();
        MediaFormat mediaFormatCreateVideoFormat = MediaFormat.createVideoFormat("video/avc", this.n, this.o);
        r.d(mediaFormatCreateVideoFormat, "createVideoFormat(MIME_TYPE, width, height)");
        try {
            Result.Companion companion = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(mediaCodecInfoI.getCapabilitiesForType("video/avc").colorFormats);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(k.a(th));
        }
        if (Result.m145isFailureimpl(objM139constructorimpl)) {
            objM139constructorimpl = null;
        }
        int[] iArr = (int[]) objM139constructorimpl;
        if (iArr == null) {
            numValueOf = null;
            break;
        }
        int length = iArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                numValueOf = null;
                break;
            }
            int i2 = iArr[i];
            if (i2 == 21) {
                numValueOf = Integer.valueOf(i2);
                break;
            }
            i++;
        }
        if (numValueOf == null) {
            if (iArr == null) {
                numValueOf = null;
                break;
            }
            int length2 = iArr.length;
            int i3 = 0;
            while (true) {
                if (i3 >= length2) {
                    numValueOf = null;
                    break;
                }
                int i4 = iArr[i3];
                if (i4 == 2135033992) {
                    numValueOf = Integer.valueOf(i4);
                    break;
                }
                i3++;
            }
        }
        if (numValueOf == null) {
            f.o(r.m("找不到支持的colorFormats，", iArr != null ? ArraysKt___ArraysKt.M(iArr, "，", null, null, 0, null, null, 62, null) : null));
            return;
        }
        mediaFormatCreateVideoFormat.setInteger("color-format", numValueOf.intValue());
        mediaFormatCreateVideoFormat.setInteger("bitrate-mode", 2);
        mediaFormatCreateVideoFormat.setInteger("bitrate", 500000);
        mediaFormatCreateVideoFormat.setInteger("frame-rate", 10);
        mediaFormatCreateVideoFormat.setInteger("i-frame-interval", 1);
        boolean z2 = p;
        if (z2) {
            Log.i("SurfaceEncoder", r.m("format: ", mediaFormatCreateVideoFormat));
        }
        this.f7177h = MediaCodec.createEncoderByType("video/avc");
        this.f7177h.configure(mediaFormatCreateVideoFormat, (Surface) null, (MediaCrypto) null, 1);
        this.f7177h.start();
        if (z2) {
            Log.i("SurfaceEncoder", r.m("output will go to ", this.k));
        }
        this.l = new MediaMuxer(this.k, 0);
        c.a aVar = this.i;
        if (aVar != null) {
            try {
                aVar.b(this);
            } catch (Exception e2) {
                Log.w("SurfaceEncoder", e2);
            }
        }
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.highlight.video.c
    protected void h() {
        if (p) {
            Log.i("SurfaceEncoder", "release:");
        }
        Object mSync = this.f7172a;
        r.d(mSync, "mSync");
        synchronized (mSync) {
            super.h();
            v vVar = v.f15822a;
        }
    }
}
