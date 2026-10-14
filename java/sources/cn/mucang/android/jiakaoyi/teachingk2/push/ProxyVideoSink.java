package cn.mucang.android.jiakaoyi.teachingk2.push;

import cn.mucang.android.jiakaoyi.framework.camera.YuvFrameCallback;
import com.iflytek.cloud.SpeechEvent;
import java.nio.ByteBuffer;
import java.util.HashSet;
import kotlin.Metadata;
import kotlin.Result;
import org.webrtc.Logging;
import org.webrtc.VideoFrame;
import org.webrtc.VideoSink;
import org.webrtc.YuvHelper;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.push.n0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\nJ\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0011\u001a\u00020\nJ\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001J\u0006\u0010\u0015\u001a\u00020\u0013J\u0010\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J \u0010\u0019\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0006\u0010\u001f\u001a\u00020\u0010J\u000e\u0010 \u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\nJ\u0010\u0010!\u001a\u00020\u00102\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/push/ProxyVideoSink;", "Lorg/webrtc/VideoSink;", "()V", "byteArray", "", "i420BufferHeight", "", "i420BufferWidth", "i420CallbackList", "Ljava/util/HashSet;", "Lcn/mucang/android/jiakaoyi/framework/camera/YuvFrameCallback;", "Lkotlin/collections/HashSet;", "mI420ByteBuffer", "Ljava/nio/ByteBuffer;", "target", "addI420Callback", "", "callback", "containI420Callback", "", "getTarget", "hasObserver", "onFrame", "frame", "Lorg/webrtc/VideoFrame;", "pushI420", SpeechEvent.KEY_EVENT_TTS_BUFFER, "Lorg/webrtc/VideoFrame$I420Buffer;", "rotation", "timeUs", "", "removeAllI420", "removeI420Callback", "setTarget", "Companion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ProxyVideoSink implements VideoSink {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private VideoSink f7527a;
    private int b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ByteBuffer f7528d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private byte[] f7529e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private HashSet<YuvFrameCallback> f7530f = new HashSet<>();

    private final void e(VideoFrame.I420Buffer i420Buffer, int i, long j) {
        if (this.f7528d == null || i420Buffer.getWidth() != this.b || i420Buffer.getHeight() != this.c) {
            this.b = i420Buffer.getWidth();
            int height = i420Buffer.getHeight();
            this.c = height;
            int i2 = this.b;
            int i3 = (i2 * height) + (((i2 + 1) / 2) * ((height + 1) / 2) * 2);
            this.f7528d = ByteBuffer.allocateDirect(i3);
            this.f7529e = new byte[i3];
        }
        YuvHelper.I420Copy(i420Buffer.getDataY(), i420Buffer.getStrideY(), i420Buffer.getDataU(), i420Buffer.getStrideU(), i420Buffer.getDataV(), i420Buffer.getStrideV(), this.f7528d, this.b, this.c);
        ByteBuffer byteBuffer = this.f7528d;
        if (byteBuffer != null) {
            byteBuffer.rewind();
        }
        ByteBuffer byteBuffer2 = this.f7528d;
        if (byteBuffer2 != null) {
            byteBuffer2.get(this.f7529e);
        }
        synchronized (this) {
            for (YuvFrameCallback yuvFrameCallback : this.f7530f) {
                byte[] bArr = this.f7529e;
                kotlin.jvm.internal.r.c(bArr);
                int i4 = this.b;
                int height2 = i420Buffer.getHeight();
                int i5 = this.b;
                byte[] bArr2 = this.f7529e;
                kotlin.jvm.internal.r.c(bArr2);
                yuvFrameCallback.a(bArr, i4, height2, i5, bArr2.length, j, i);
            }
            kotlin.v vVar = kotlin.v.f15822a;
        }
        i420Buffer.release();
    }

    public final synchronized void a(YuvFrameCallback callback) {
        kotlin.jvm.internal.r.e(callback, "callback");
        this.f7530f.add(callback);
    }

    public final synchronized boolean b(YuvFrameCallback callback) {
        kotlin.jvm.internal.r.e(callback, "callback");
        return this.f7530f.contains(callback);
    }

    public final synchronized VideoSink c() {
        return this.f7527a;
    }

    public final synchronized boolean d() {
        boolean z;
        z = true;
        if (this.f7527a == null && !(!this.f7530f.isEmpty())) {
            z = false;
        }
        return z;
    }

    public final synchronized void f() {
        this.f7530f.clear();
    }

    public final synchronized void g(YuvFrameCallback callback) {
        kotlin.jvm.internal.r.e(callback, "callback");
        this.f7530f.remove(callback);
    }

    public final synchronized void h(VideoSink videoSink) {
        this.f7527a = videoSink;
    }

    @Override // org.webrtc.VideoSink
    public synchronized void onFrame(VideoFrame frame) {
        kotlin.v vVar;
        kotlin.jvm.internal.r.e(frame, "frame");
        try {
            Result.Companion companion = Result.INSTANCE;
            VideoFrame.I420Buffer i420 = frame.getBuffer().toI420();
            kotlin.jvm.internal.r.d(i420, "frame.buffer.toI420()");
            e(i420, frame.getRotation(), frame.getTimestampNs() / ((long) 1000));
            VideoSink videoSink = this.f7527a;
            if (videoSink == null) {
                Logging.d("dds_ProxyVideoSink", "Dropping frame in proxy because target is null.");
                return;
            }
            if (videoSink == null) {
                vVar = null;
            } else {
                videoSink.onFrame(frame);
                vVar = kotlin.v.f15822a;
            }
            Result.m139constructorimpl(vVar);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(kotlin.k.a(th));
        }
    }
}
