package cn.mucang.android.jiakaoyi.speech.audio;

import android.media.AudioRecord;
import android.os.Process;
import cn.mucang.android.jiakaoyi.speech.callback.IRecordCallback;
import cn.mucang.android.jiakaoyi.speech.utils.SpeechLogUtils;
import cn.mucang.android.voice.interaction.speex.Speex;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.speech.c.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\t\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0015\u001a\u00020\u0016H\u0002J\u0006\u0010\u0017\u001a\u00020\u000eJ\u0006\u0010\u0018\u001a\u00020\u000eJ\u0006\u0010\u0019\u001a\u00020\u0016J\b\u0010\u001a\u001a\u00020\u0016H\u0016J\u0006\u0010\u001b\u001a\u00020\u0016J\u0010\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u000eH\u0002J\b\u0010\u001d\u001a\u00020\u0016H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcn/mucang/android/jiakaoyi/speech/audio/SpeechRecordThread;", "Ljava/lang/Thread;", "recordCallback", "Lcn/mucang/android/jiakaoyi/speech/callback/IRecordCallback;", "(Lcn/mucang/android/jiakaoyi/speech/callback/IRecordCallback;)V", "mAudioFormat", "", "mAudioRecorder", "Landroid/media/AudioRecord;", "mBuffer", "", "mBufferSize", "mChannel", "mIsRecording", "", "mLock", "Ljava/lang/Object;", "mSampleSize", "mSpeex", "Lcn/mucang/android/voice/interaction/speex/Speex;", "mThreadRunning", "createAudioRecordIfNeed", "", "isRecording", "isRunning", "release", "run", "startRecord", "force", "stopRecord", "Companion", "speech_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SpeechRecordThread extends Thread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final IRecordCallback f5843a;
    private int b = 16000;
    private int c = 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f5844d = 16;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f5845e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private byte[] f5846f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private AudioRecord f5847g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f5848h;
    private volatile boolean i;
    private final Object j;
    private final Speex k;

    public SpeechRecordThread(IRecordCallback iRecordCallback) {
        this.f5843a = iRecordCallback;
        int minBufferSize = AudioRecord.getMinBufferSize(16000, 16, 2);
        this.f5845e = minBufferSize;
        this.f5846f = new byte[minBufferSize];
        this.j = new Object();
        Speex speex = new Speex();
        this.k = speex;
        setName("speech_audio_thread");
        a();
        speex.speexInit(this.f5845e / 2, this.b);
    }

    private final void a() {
        if (this.f5847g == null) {
            this.f5847g = new AudioRecord(1, this.b, this.f5844d, this.c, this.f5845e);
        }
    }

    private final synchronized void f(boolean z) {
        SpeechLogUtils.c("SpeechRecordThread", "startRecord");
        try {
            if (this.i && !z) {
                SpeechLogUtils.c("SpeechRecordThread", "already recording...");
                return;
            }
            a();
            AudioRecord audioRecord = this.f5847g;
            r.c(audioRecord);
            if (audioRecord.getState() != 0) {
                this.i = true;
                AudioRecord audioRecord2 = this.f5847g;
                r.c(audioRecord2);
                audioRecord2.startRecording();
                synchronized (this.j) {
                    try {
                        this.j.notifyAll();
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    v vVar = v.f15822a;
                }
                SpeechLogUtils.c("SpeechRecordThread", "startRecord success!!");
            } else {
                AudioRecord audioRecord3 = this.f5847g;
                r.c(audioRecord3);
                SpeechLogUtils.c("SpeechRecordThread", r.m("AudioRecorder state = ", Integer.valueOf(audioRecord3.getState())));
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    private final void g() {
        AudioRecord audioRecord;
        SpeechLogUtils.c("SpeechRecordThread", "stopRecord");
        try {
            if (!this.i || (audioRecord = this.f5847g) == null) {
                return;
            }
            r.c(audioRecord);
            if (audioRecord.getState() != 0) {
                this.i = false;
                AudioRecord audioRecord2 = this.f5847g;
                r.c(audioRecord2);
                audioRecord2.stop();
                SpeechLogUtils.c("SpeechRecordThread", "stopRecord success!!");
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final boolean getI() {
        return this.i;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final boolean getF5848h() {
        return this.f5848h;
    }

    public final synchronized void d() {
        SpeechLogUtils.c("SpeechRecordThread", "release");
        try {
            g();
            AudioRecord audioRecord = this.f5847g;
            if (audioRecord != null) {
                audioRecord.release();
            }
            this.f5847g = null;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void e() {
        f(false);
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        SpeechLogUtils.c("SpeechRecordThread", r.m(getName(), " start run"));
        this.f5848h = true;
        try {
            Process.setThreadPriority(-19);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        while (this.f5848h) {
            if (this.i) {
                AudioRecord audioRecord = this.f5847g;
                if (audioRecord != null) {
                    r.c(audioRecord);
                    if (audioRecord.getState() != 0) {
                        AudioRecord audioRecord2 = this.f5847g;
                        Integer numValueOf = audioRecord2 == null ? null : Integer.valueOf(audioRecord2.read(this.f5846f, 0, this.f5845e));
                        if (numValueOf == null || numValueOf.intValue() <= 0) {
                            SpeechLogUtils.b("SpeechRecordThread", "AudioRecord read count=" + numValueOf + " , release and sleep 5s");
                            try {
                                Result.Companion companion = Result.INSTANCE;
                                Thread.sleep(DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
                                Result.m139constructorimpl(v.f15822a);
                            } catch (Throwable th) {
                                Result.Companion companion2 = Result.INSTANCE;
                                Result.m139constructorimpl(k.a(th));
                            }
                            AudioRecord audioRecord3 = this.f5847g;
                            if (audioRecord3 != null) {
                                audioRecord3.stop();
                            }
                            AudioRecord audioRecord4 = this.f5847g;
                            if (audioRecord4 != null) {
                                audioRecord4.release();
                            }
                            this.f5847g = null;
                            if (getI()) {
                                f(true);
                            }
                        } else {
                            Speex speex = this.k;
                            byte[] bArr = this.f5846f;
                            speex.speexProcess(bArr, 1, bArr.length);
                            IRecordCallback iRecordCallback = this.f5843a;
                            if (iRecordCallback != null) {
                                byte[] bArr2 = this.f5846f;
                                iRecordCallback.a(bArr2, bArr2.length);
                            }
                        }
                    }
                }
            } else {
                synchronized (this.j) {
                    try {
                        this.j.wait(DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                    v vVar = v.f15822a;
                }
            }
        }
        SpeechLogUtils.c("SpeechRecordThread", r.m(getName(), " stop run"));
    }
}
