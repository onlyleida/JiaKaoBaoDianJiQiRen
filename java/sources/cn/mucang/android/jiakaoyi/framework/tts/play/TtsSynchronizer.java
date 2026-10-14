package cn.mucang.android.jiakaoyi.framework.tts.play;

import android.app.Application;
import android.os.Bundle;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.framework.tts.Synthesizer;
import cn.mucang.android.jiakaoyi.framework.tts.TtsConfig;
import cn.mucang.android.jiakaoyi.framework.tts.TtsSpeaker;
import cn.mucang.android.jiakaoyi.framework.tts.models.SynthEntity;
import cn.mucang.android.jiakaoyi.framework.tts.models.SynthResultModel;
import cn.mucang.android.jiakaoyi.framework.tts.voice.o;
import cn.mucang.android.jiakaoyi.framework.utils.q;
import cn.mucang.android.jiakaoyi.framework.utils.q0;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.SynthesizerListener;
import com.tencent.connect.common.Constants;
import java.io.File;
import java.util.LinkedList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.g;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.k1;
import kotlinx.coroutines.p2;
import kotlinx.coroutines.w;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\"B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J0\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u0006H\u0002J\u0010\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u0006H\u0002J\u0016\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u001fJ\u000e\u0010 \u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u0017J\u0010\u0010!\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n \r*\u0004\u0018\u00010\f0\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;", "", "()V", "TAG", "", "currentTask", "Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$TaskWrapper;", Constants.PARAM_SCOPE, "Lkotlinx/coroutines/CoroutineScope;", "taskList", "Ljava/util/LinkedList;", "uploadThread", "Ljava/util/concurrent/ExecutorService;", "kotlin.jvm.PlatformType", "encodeAndUpload", "", "synthFile", "Ljava/io/File;", "betterKey", "code", "", "text", "task", "Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoiceTask;", "onFinish", "preWrapper", "speak", "wrapper", TtmlNode.START, "voiceTask", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcn/mucang/android/jiakaoyi/framework/tts/play/PlayerListener;", "stop", "synthesizeToUri", "TaskWrapper", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TtsSynchronizer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TtsSynchronizer f3521a = new TtsSynchronizer();
    private static final LinkedList<a> b = new LinkedList<>();
    private static final ExecutorService c = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final i0 f3522d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static a f3523e;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\b\"\u0004\b\u0013\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$TaskWrapper;", "", "voiceTask", "Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoiceTask;", "(Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoiceTask;)V", "finished", "", "getFinished", "()Z", "setFinished", "(Z)V", "notify", "Lcn/mucang/android/jiakaoyi/framework/tts/play/PlayerListener;", "getNotify", "()Lcn/mucang/android/jiakaoyi/framework/tts/play/PlayerListener;", "setNotify", "(Lcn/mucang/android/jiakaoyi/framework/tts/play/PlayerListener;)V", "uploaded", "getUploaded", "setUploaded", "getVoiceTask", "()Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoiceTask;", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final o f3524a;
        private e b;
        private boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f3525d;

        public a(o voiceTask) {
            r.e(voiceTask, "voiceTask");
            this.f3524a = voiceTask;
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final boolean getC() {
            return this.c;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final e getB() {
            return this.b;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final boolean getF3525d() {
            return this.f3525d;
        }

        /* JADX INFO: renamed from: d, reason: from getter */
        public final o getF3524a() {
            return this.f3524a;
        }

        public final void e(boolean z) {
            this.c = z;
        }

        public final void f(e eVar) {
            this.b = eVar;
        }

        public final void g(boolean z) {
            this.f3525d = z;
        }
    }

    @Metadata(d1 = {"\u00001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J*\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016J\u0012\u0010\n\u001a\u00020\u00032\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J*\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0003H\u0016J\b\u0010\u0012\u001a\u00020\u0003H\u0016J \u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0016J\b\u0010\u0015\u001a\u00020\u0003H\u0016¨\u0006\u0016"}, d2 = {"cn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$speak$1", "Lcom/iflytek/cloud/SynthesizerListener;", "onBufferProgress", "", "i", "", "i1", "i2", "s", "", "onCompleted", "speechError", "Lcom/iflytek/cloud/SpeechError;", "onEvent", "eventType", "bundle", "Landroid/os/Bundle;", "onSpeakBegin", "onSpeakPaused", "onSpeakProgress", "progress", "onSpeakResumed", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements SynthesizerListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ a f3526a;
        final /* synthetic */ o b;
        final /* synthetic */ File c;

        b(a aVar, o oVar, File file) {
            this.f3526a = aVar;
            this.b = oVar;
            this.c = file;
        }

        @Override // com.iflytek.cloud.SynthesizerListener
        public void onBufferProgress(int i, int i1, int i2, String s) {
        }

        @Override // com.iflytek.cloud.SynthesizerListener
        public void onCompleted(SpeechError speechError) {
            t.h("TtsSynchronizer", "播放onCompleted");
            if (speechError != null) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("tts播放失败 " + ((Object) this.b.c()) + " ; " + ((Object) t.g(speechError)));
            }
            TtsSynchronizer.f3521a.k(this.f3526a);
        }

        @Override // com.iflytek.cloud.SynthesizerListener
        public void onEvent(int eventType, int i1, int i2, Bundle bundle) {
            if (21002 == eventType) {
                t.h("TtsSynchronizer", "播放EVENT_TTS_CANCEL");
                if (!this.f3526a.getF3525d() && this.c.exists()) {
                    this.c.delete();
                }
                TtsSynchronizer.f3521a.k(this.f3526a);
            }
        }

        @Override // com.iflytek.cloud.SynthesizerListener
        public void onSpeakBegin() {
            e b = this.f3526a.getB();
            if (b == null) {
                return;
            }
            b.d(this.b);
        }

        @Override // com.iflytek.cloud.SynthesizerListener
        public void onSpeakPaused() {
            e b = this.f3526a.getB();
            if (b == null) {
                return;
            }
            b.b(this.b);
        }

        @Override // com.iflytek.cloud.SynthesizerListener
        public void onSpeakProgress(int progress, int i1, int i2) {
            if (progress <= 0 || this.f3526a.getF3525d() || this.c.length() <= 0) {
                return;
            }
            this.f3526a.g(true);
            String strA = this.b.a();
            r.d(strA, "task.betterKey()");
            File pcmFile = cn.mucang.android.jiakaoyi.framework.tts.i.b.f(strA);
            if (this.c.renameTo(pcmFile)) {
                TtsSynchronizer ttsSynchronizer = TtsSynchronizer.f3521a;
                r.d(pcmFile, "pcmFile");
                o oVar = this.b;
                int i = oVar.f3580a;
                String str = oVar.c;
                r.d(str, "task.text");
                ttsSynchronizer.h(pcmFile, strA, i, str, this.b);
            }
        }

        @Override // com.iflytek.cloud.SynthesizerListener
        public void onSpeakResumed() {
            e b = this.f3526a.getB();
            if (b == null) {
                return;
            }
            b.c(this.b);
        }
    }

    @Metadata(d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016¨\u0006\r"}, d2 = {"cn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$synthesizeToUri$1", "Lcn/mucang/android/jiakaoyi/framework/tts/SimpleSynthesizerListener;", "onCompleted", "", "speechError", "Lcom/iflytek/cloud/SpeechError;", "onEvent", "eventType", "", "i1", "i2", "bundle", "Landroid/os/Bundle;", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c extends cn.mucang.android.jiakaoyi.framework.tts.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ a f3527a;
        final /* synthetic */ File b;
        final /* synthetic */ File c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f3528d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ o f3529e;

        c(a aVar, File file, File file2, String str, o oVar) {
            this.f3527a = aVar;
            this.b = file;
            this.c = file2;
            this.f3528d = str;
            this.f3529e = oVar;
        }

        @Override // com.iflytek.cloud.SynthesizerListener
        public void onCompleted(SpeechError speechError) {
            t.h("TtsSynchronizer", "合成onCompleted");
            TtsSynchronizer ttsSynchronizer = TtsSynchronizer.f3521a;
            ttsSynchronizer.k(this.f3527a);
            if (speechError == null && this.b.renameTo(this.c)) {
                this.f3527a.g(true);
                File pcmFile = this.c;
                r.d(pcmFile, "pcmFile");
                String betterKey = this.f3528d;
                r.d(betterKey, "betterKey");
                o oVar = this.f3529e;
                int i = oVar.f3580a;
                String str = oVar.c;
                r.d(str, "voiceTask.text");
                ttsSynchronizer.h(pcmFile, betterKey, i, str, this.f3529e);
            }
        }

        @Override // com.iflytek.cloud.SynthesizerListener
        public void onEvent(int eventType, int i1, int i2, Bundle bundle) {
            if (21002 == eventType) {
                t.h("TtsSynchronizer", "合成EVENT_TTS_CANCEL");
                if (!this.f3527a.getF3525d() && this.b.exists()) {
                    this.b.delete();
                }
                TtsSynchronizer.f3521a.k(this.f3527a);
            }
        }
    }

    static {
        w wVarB = p2.b(null, 1, null);
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        r.d(executorServiceNewSingleThreadExecutor, "newSingleThreadExecutor()");
        f3522d = j0.a(wVarB.plus(k1.a(executorServiceNewSingleThreadExecutor)));
    }

    private TtsSynchronizer() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h(final File file, final String str, final int i, final String str2, final o oVar) {
        if (file.length() <= 0) {
            return;
        }
        c.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.tts.play.b
            @Override // java.lang.Runnable
            public final void run() {
                TtsSynchronizer.i(str, file, i, str2, oVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(String betterKey, File synthFile, int i, String text, o task) {
        r.e(betterKey, "$betterKey");
        r.e(synthFile, "$synthFile");
        r.e(text, "$text");
        r.e(task, "$task");
        File file = new File(cn.mucang.android.jiakaoyi.framework.tts.i.b.m() + betterKey + ".mp3");
        try {
            cn.mucang.android.jiakaoyi.framework.tts.j.a.a(synthFile, file);
            if (file.exists()) {
                try {
                    SynthEntity synthEntity = new SynthEntity(i, text, file, betterKey);
                    SynthResultModel synthResultModelN = new cn.mucang.android.jiakaoyi.framework.tts.h.a().n(file, synthEntity, task);
                    if (synthResultModelN != null) {
                        synthEntity.url = synthResultModelN.voiceUrl;
                    }
                } catch (Throwable th) {
                    cn.mucang.android.jiakaoyi.framework.log.f.o("上传文件失败:" + file.getAbsoluteFile() + ",key=" + betterKey + ",text=" + text + ",code=" + i + ",error=" + ((Object) q0.d(th)));
                }
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k(a aVar) {
        g.b(f3522d, null, null, new TtsSynchronizer$onFinish$1(aVar, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l(a aVar) {
        t.h("TtsSynchronizer", "speak");
        o f3524a = aVar.getF3524a();
        File file = new File(cn.mucang.android.jiakaoyi.framework.tts.i.b.m() + "pcm/" + ((Object) f3524a.a()) + ".pcm.t");
        Synthesizer synthesizer = Synthesizer.f3515a;
        String absolutePath = file.getAbsolutePath();
        r.d(absolutePath, "pcmFileTmp.absolutePath");
        synthesizer.e(absolutePath);
        Application context = MucangConfig.getContext();
        r.d(context, "getContext()");
        TtsSpeaker ttsSpeaker = f3524a.m;
        r.d(ttsSpeaker, "task.speaker");
        TtsConfig.a(context, ttsSpeaker);
        String strC = f3524a.c();
        r.d(strC, "task.finalPlayText");
        synthesizer.f(strC, new b(aVar, f3524a, file));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o(a aVar) {
        t.h("TtsSynchronizer", "synthesizeToUri");
        o f3524a = aVar.getF3524a();
        String strA = f3524a.a();
        File fileF = cn.mucang.android.jiakaoyi.framework.tts.i.b.f(strA);
        if (fileF.exists()) {
            return;
        }
        if (q.b && cn.mucang.android.jiakaoyi.framework.tts.i.b.f(strA).exists()) {
            return;
        }
        File file = new File(cn.mucang.android.jiakaoyi.framework.tts.i.b.m() + "pcm/" + ((Object) strA) + ".pcm.t");
        Application context = MucangConfig.getContext();
        r.d(context, "getContext()");
        TtsSpeaker ttsSpeaker = f3524a.m;
        r.d(ttsSpeaker, "voiceTask.speaker");
        TtsConfig.a(context, ttsSpeaker);
        Synthesizer synthesizer = Synthesizer.f3515a;
        String strC = f3524a.c();
        r.d(strC, "voiceTask.finalPlayText");
        String absolutePath = file.getAbsolutePath();
        r.d(absolutePath, "pcmFileTmp.absolutePath");
        synthesizer.h(strC, absolutePath, new c(aVar, file, fileF, strA, f3524a));
    }

    public final void m(o voiceTask, e listener) {
        r.e(voiceTask, "voiceTask");
        r.e(listener, "listener");
        t.h("TtsSynchronizer", r.m("TtsSynchronizer开始:", Integer.valueOf(voiceTask.j)));
        a aVar = new a(voiceTask);
        aVar.f(listener);
        g.b(f3522d, null, null, new TtsSynchronizer$start$1(aVar, null), 3, null);
    }

    public final void n(o voiceTask) {
        r.e(voiceTask, "voiceTask");
        t.h("TtsSynchronizer", r.m("TtsSynchronizer停止:", Integer.valueOf(voiceTask.j)));
        g.b(f3522d, null, null, new TtsSynchronizer$stop$1(voiceTask, null), 3, null);
    }
}
