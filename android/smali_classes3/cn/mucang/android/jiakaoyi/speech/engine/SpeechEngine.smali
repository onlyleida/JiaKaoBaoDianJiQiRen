.class public final Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/speech/engine/k;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ae\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\"\n\u0002\u0008\u0003*\u0004\u0008\u0017\u001f)\u0018\u0000 j2\u00020\u0001:\u0002jkB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u00100\u001a\u00020\u00062\u0008\u00101\u001a\u0004\u0018\u00010\u000eH\u0002J\u0008\u00102\u001a\u000203H\u0002J\u0008\u00104\u001a\u000203H\u0002J\u0008\u00105\u001a\u000203H\u0016J\u0008\u00106\u001a\u000203H\u0016J\u0008\u00107\u001a\u000203H\u0016J\u0008\u00108\u001a\u00020\u0014H\u0016J\u0010\u00109\u001a\u00020\u000e2\u0006\u0010:\u001a\u00020\u0014H\u0002J\u0010\u0010;\u001a\u00020\u000e2\u0006\u0010<\u001a\u00020\u0014H\u0002J\u0008\u0010=\u001a\u000203H\u0016J\u0008\u0010>\u001a\u000203H\u0002J\u0010\u0010?\u001a\u0002032\u0006\u0010@\u001a\u00020\u0014H\u0002J\u0012\u0010A\u001a\u0002032\u0008\u00101\u001a\u0004\u0018\u00010\u000eH\u0002J\u0008\u0010B\u001a\u00020\u0006H\u0016J\u001a\u0010C\u001a\u0002032\u0006\u0010D\u001a\u00020E2\u0008\u0010F\u001a\u0004\u0018\u00010%H\u0016J\u0012\u0010G\u001a\u0002032\u0008\u0010:\u001a\u0004\u0018\u00010HH\u0016J\u0008\u0010I\u001a\u00020\u0006H\u0016J\u0008\u0010J\u001a\u00020\u0006H\u0016J\u0010\u0010K\u001a\u0002032\u0006\u0010L\u001a\u00020\u000eH\u0002J\u0008\u0010M\u001a\u000203H\u0002J\"\u0010N\u001a\u0002032\u0006\u00101\u001a\u00020\u000e2\u0008\u0010O\u001a\u0004\u0018\u00010\u000e2\u0006\u0010P\u001a\u00020\u0006H\u0002Jd\u0010N\u001a\u0002032\u0008\u00101\u001a\u0004\u0018\u00010\u000e2\u0008\u0010L\u001a\u0004\u0018\u00010\u000e2\u0010\u0008\u0002\u0010Q\u001a\n\u0012\u0004\u0012\u000203\u0018\u00010R2\u0010\u0008\u0002\u0010S\u001a\n\u0012\u0004\u0012\u000203\u0018\u00010R2\u0010\u0008\u0002\u0010T\u001a\n\u0012\u0004\u0012\u000203\u0018\u00010R2\u0010\u0008\u0002\u0010U\u001a\n\u0012\u0004\u0012\u000203\u0018\u00010RH\u0002J\u0008\u0010V\u001a\u000203H\u0016J6\u0010W\u001a\u0002032\u0008\u0010L\u001a\u0004\u0018\u00010\u000e2\u0008\u0010X\u001a\u0004\u0018\u00010\u000e2\u0006\u0010Y\u001a\u00020Z2\u0006\u0010[\u001a\u00020\u00062\u0008\u0010\\\u001a\u0004\u0018\u00010]H\u0016J\u0008\u0010^\u001a\u000203H\u0002J\u0018\u0010_\u001a\u0002032\u0006\u0010@\u001a\u00020\u00142\u0006\u0010`\u001a\u00020\u0006H\u0016J\u0012\u0010_\u001a\u0002032\u0008\u00101\u001a\u0004\u0018\u00010\u000eH\u0016J\u0008\u0010a\u001a\u000203H\u0016J\u0018\u0010b\u001a\u0002032\u0006\u0010:\u001a\u00020\u00142\u0006\u0010c\u001a\u00020\u0006H\u0016J \u0010d\u001a\u0002032\u0006\u0010:\u001a\u00020\u00142\u0006\u0010c\u001a\u00020\u00062\u0006\u0010e\u001a\u00020\u0006H\u0002J\u0012\u0010f\u001a\u0002032\u0008\u0008\u0002\u0010e\u001a\u00020\u0006H\u0002J\u0018\u0010g\u001a\u0002032\u000e\u0010h\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010iH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\tR\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000c\u001a\u0010\u0012\u000c\u0012\n \u000f*\u0004\u0018\u00010\u000e0\u000e0\rX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0010R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u001e\u001a\u00020\u001f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010#\u001a\u0004\u0008 \u0010!R\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010(\u001a\u00020)X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010*R\u0010\u0010+\u001a\u0004\u0018\u00010,X\u0082\u000e\u00a2\u0006\u0002\n\u0000R.\u0010-\u001a\"\u0012\u000c\u0012\n \u000f*\u0004\u0018\u00010\u000e0\u000e0.j\u0010\u0012\u000c\u0012\n \u000f*\u0004\u0018\u00010\u000e0\u000e`/X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006l"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;",
        "Lcn/mucang/android/jiakaoyi/speech/engine/ISpeechEngine;",
        "()V",
        "energyComputer",
        "Lcn/mucang/android/jiakaoyi/speech/utils/VoiceEnergyComputer;",
        "isSpeechEnable",
        "",
        "mAsrCallBack",
        "cn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mAsrCallBack$1",
        "Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mAsrCallBack$1;",
        "mAsrEngine",
        "Lcn/mucang/android/jiakaoyi/speech/engine/asr/IAsrEngine;",
        "mAsrTimeOutWords",
        "",
        "",
        "kotlin.jvm.PlatformType",
        "[Ljava/lang/String;",
        "mAudioThread",
        "Lcn/mucang/android/jiakaoyi/speech/audio/SpeechRecordThread;",
        "mEngineMode",
        "",
        "mInitOK",
        "mRecordCallBack",
        "cn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mRecordCallBack$1",
        "Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mRecordCallBack$1;",
        "mSemanticApi",
        "Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticApi;",
        "mSessionId",
        "mSpeechEngineThread",
        "Landroid/os/HandlerThread;",
        "mSpeechHandler",
        "cn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$1",
        "getMSpeechHandler",
        "()Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$1;",
        "mSpeechHandler$delegate",
        "Lkotlin/Lazy;",
        "mSpeechViewCallback",
        "Lcn/mucang/android/jiakaoyi/speech/callback/ISpeechViewCallback;",
        "mTtsStopBySelf",
        "mWaitBizRet",
        "mWakeupCallBack",
        "cn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mWakeupCallBack$1",
        "Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mWakeupCallBack$1;",
        "mWakeupEngine",
        "Lcn/mucang/android/jiakaoyi/speech/engine/wakeup/IWakeupEngine;",
        "mWelcomeWords",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "checkSessionValid",
        "sessionId",
        "clearSession",
        "",
        "clearTimeoutChecker",
        "disable",
        "dismissHint",
        "enable",
        "getMode",
        "getModeName",
        "mode",
        "getMsgName",
        "msg",
        "getVrWelcomeWords",
        "getWelcomeWords",
        "handleAsrTimeout",
        "type",
        "handleSessionEnd",
        "hasSession",
        "init",
        "context",
        "Landroid/content/Context;",
        "speechCallback",
        "invokeSpeechRet",
        "Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;",
        "isEnable",
        "isInitOK",
        "notifySpeakingState",
        "ttsText",
        "notifySpeechStateChange",
        "playTtsWithSession",
        "answerText",
        "closeAfterTts",
        "onBegin",
        "Lkotlin/Function0;",
        "onIntercept",
        "onInterceptBySelf",
        "onEnd",
        "release",
        "showHint",
        "voiceUrl",
        "ttsGrade",
        "Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;",
        "asrAfterTts",
        "ttsListener",
        "Lcn/mucang/android/jiakaoyi/framework/tts/TtsListener;",
        "startAudioIfNeed",
        "startSpeech",
        "needWelcome",
        "stopSpeech",
        "switchMode",
        "force",
        "switchModeInner",
        "notifyState",
        "updateEngineState",
        "uploadHotWords",
        "words",
        "",
        "Companion",
        "EngineMode",
        "speech_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:[Ljava/lang/String;

.field private volatile c:I

.field private d:Lcn/mucang/android/jiakaoyi/speech/engine/m/b;

.field private e:Lcn/mucang/android/jiakaoyi/speech/engine/l/a;

.field private f:Lcn/mucang/android/jiakaoyi/speech/c/a;

.field private g:Lcn/mucang/android/jiakaoyi/speech/d/e;

.field private final h:Lcn/mucang/android/jiakaoyi/speech/utils/g;

.field private final i:Lcn/mucang/android/jiakaoyi/speech/semantic/d;

.field private volatile j:Z

.field private volatile k:Z

.field private volatile l:Z

.field private volatile m:Z

.field private volatile n:Ljava/lang/String;

.field private final o:Landroid/os/HandlerThread;

.field private final p:Lkotlin/f;

.field private final q:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mWakeupCallBack$1;

.field private final r:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$a;

.field private final s:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 2
    sget v1, Lcn/mucang/android/jiakaoyi/speech/R$string;->speech_key0:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcn/mucang/android/jiakaoyi/speech/R$string;->speech_key1:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget v1, Lcn/mucang/android/jiakaoyi/speech/R$string;->speech_key2:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget v1, Lcn/mucang/android/jiakaoyi/speech/R$string;->speech_key3:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    invoke-static {v0}, Lkotlin/collections/s;->f([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->a:Ljava/util/ArrayList;

    new-array v0, v5, [Ljava/lang/String;

    .line 3
    sget v1, Lcn/mucang/android/jiakaoyi/speech/R$string;->speech_key4:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    sget v1, Lcn/mucang/android/jiakaoyi/speech/R$string;->speech_key5:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget v1, Lcn/mucang/android/jiakaoyi/speech/R$string;->speech_key6:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->b:[Ljava/lang/String;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->c:I

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/speech/utils/g;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/speech/utils/g;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->h:Lcn/mucang/android/jiakaoyi/speech/utils/g;

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/speech/semantic/d;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/speech/semantic/d;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->i:Lcn/mucang/android/jiakaoyi/speech/semantic/d;

    .line 7
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->j:Z

    .line 8
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "speech_engine_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->o:Landroid/os/HandlerThread;

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2;-><init>(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->p:Lkotlin/f;

    .line 10
    new-instance v0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mWakeupCallBack$1;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mWakeupCallBack$1;-><init>(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->q:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mWakeupCallBack$1;

    .line 11
    new-instance v0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$a;-><init>(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->r:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$a;

    .line 12
    new-instance v0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$b;-><init>(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->s:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$b;

    return-void
.end method

.method public static final synthetic A(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->T(I)V

    return-void
.end method

.method public static final synthetic B(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->U(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic C(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->j:Z

    return p0
.end method

.method public static final synthetic D(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->e0(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic E(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->h0(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final synthetic F(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->n:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic G(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->l:Z

    return-void
.end method

.method public static final synthetic H(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->m:Z

    return-void
.end method

.method public static final synthetic I(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;IZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->q0(IZZ)V

    return-void
.end method

.method private final declared-synchronized J(Ljava/lang/String;)Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "SpeechEngine"

    const-string v1, "checkSessionValid: false, sessionId is null"

    .line 1
    invoke-static {p1, v1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return v0

    .line 3
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->n:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string p1, "SpeechEngine"

    const-string v1, "checkSessionValid: false, mSessionId is null"

    .line 4
    invoke-static {p1, v1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return v0

    .line 6
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->n:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "SpeechEngine"

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSessionValid: false, sessionId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " != "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->n:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    monitor-exit p0

    return v0

    :cond_2
    :try_start_3
    const-string v0, "SpeechEngine"

    const-string v1, "checkSessionValid: success, sessionId="

    .line 9
    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 p1, 0x1

    .line 10
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized K()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "SpeechEngine"

    const-string v1, "clearSession "

    .line 1
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->n:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->n:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final L()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->O()Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$a;

    move-result-object v0

    const/4 v1, 0x3

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x4

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x5

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private static final M(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SpeechEngine"

    const-string v1, "disable, \u7981\u7528\u8bed\u97f3\u52a9\u624b"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->j:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->release()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->j:Z

    :cond_0
    return-void
.end method

.method private static final N(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SpeechEngine"

    const-string v1, "dismissHint"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->l:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    invoke-static {p0, v1, v0, v2}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->t0(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;ZILjava/lang/Object;)V

    const/4 p0, 0x2

    .line 4
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->I(I)V

    return-void
.end method

.method private final O()Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->p:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$a;

    return-object v0
.end method

.method private final P(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string p1, "unknown"

    goto :goto_0

    :cond_0
    const-string p1, "ASR"

    goto :goto_0

    :cond_1
    const-string p1, "WAKEUP"

    goto :goto_0

    :cond_2
    const-string p1, "IDLE"

    :goto_0
    return-object p1
.end method

.method private final Q(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "MSG_ASR_TIME_OUT"

    goto :goto_0

    :cond_1
    const-string p1, "MSG_SILENT_TIME_OUT"

    :goto_0
    return-object p1
.end method

.method private final R()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/speech/engine/b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/speech/engine/b;-><init>(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)V

    invoke-static {v0}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final S(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/speech/semantic/e;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/speech/semantic/e;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/speech/semantic/e;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_2
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;

    .line 7
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 8
    :goto_2
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-void
.end method

.method private final T(I)V
    .locals 11

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 1
    sget v1, Lcn/mucang/android/jiakaoyi/speech/R$string;->speech_key9:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->b:[Ljava/lang/String;

    sget-object v2, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-static {v1, v2}, Lkotlin/collections/k;->S([Ljava/lang/Object;Lkotlin/random/Random;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_1
    sget v1, Lcn/mucang/android/jiakaoyi/speech/R$string;->speech_key8:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v4, v1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x0

    .line 4
    invoke-static {p0, v1, v2, v3, v5}, Lcn/mucang/android/jiakaoyi/speech/engine/k$a;->a(Lcn/mucang/android/jiakaoyi/speech/engine/k;IZILjava/lang/Object;)V

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->L()V

    if-eq p1, v0, :cond_3

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->g:Lcn/mucang/android/jiakaoyi/speech/d/e;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->n:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/speech/d/e;->c(Ljava/lang/String;I)V

    .line 7
    :cond_3
    :goto_1
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->n:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$handleAsrTimeout$1;

    invoke-direct {v8, p1, p0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$handleAsrTimeout$1;-><init>(ILcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)V

    const/16 v9, 0x1c

    const/4 v10, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v10}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->i0(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;ILjava/lang/Object;)V

    return-void
.end method

.method private final U(Ljava/lang/String;)V
    .locals 2

    const-string v0, "SpeechEngine"

    const-string v1, "handleSessionEnd"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->n:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->n:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->m:Z

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->g:Lcn/mucang/android/jiakaoyi/speech/d/e;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1, p1}, Lcn/mucang/android/jiakaoyi/speech/d/e;->e(Ljava/lang/String;)V

    .line 5
    :goto_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->K()V

    const/4 p1, 0x2

    .line 6
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->I(I)V

    .line 7
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->L()V

    const/4 v1, 0x0

    .line 8
    invoke-static {p0, v0, v0, p1, v1}, Lcn/mucang/android/jiakaoyi/speech/engine/k$a;->a(Lcn/mucang/android/jiakaoyi/speech/engine/k;IZILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static synthetic V(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->p0(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)V

    return-void
.end method

.method public static synthetic W(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->S(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)V

    return-void
.end method

.method public static synthetic X(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->M(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)V

    return-void
.end method

.method public static synthetic Y(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->j0(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)V

    return-void
.end method

.method public static synthetic Z(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;I)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->n0(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;I)V

    return-void
.end method

.method public static synthetic a0(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->o0(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)V

    return-void
.end method

.method public static synthetic b0(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;IZZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->r0(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;IZZ)V

    return-void
.end method

.method public static synthetic c0(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->N(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)V

    return-void
.end method

.method public static synthetic d0(Ljava/lang/String;ZLcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->k0(Ljava/lang/String;ZLcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    return-void
.end method

.method private final e0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->i:Lcn/mucang/android/jiakaoyi/speech/semantic/d;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/speech/semantic/d;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->g:Lcn/mucang/android/jiakaoyi/speech/d/e;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Lcn/mucang/android/jiakaoyi/speech/d/d;->a(I)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->g:Lcn/mucang/android/jiakaoyi/speech/d/e;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Lcn/mucang/android/jiakaoyi/speech/d/d;->a(I)V

    :goto_0
    return-void
.end method

.method private final f0()V
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->g:Lcn/mucang/android/jiakaoyi/speech/d/e;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/d/d;->a(I)V

    goto :goto_0

    .line 3
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->g:Lcn/mucang/android/jiakaoyi/speech/d/e;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/d/d;->a(I)V

    :goto_0
    return-void
.end method

.method private final g0(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    move-object v8, p0

    move-object v5, p1

    move-object v9, p2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playTts sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ttsText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechEngine"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->J(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p6, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface/range {p6 .. p6}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, v8, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->l:Z

    .line 6
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->g:Lcn/mucang/android/jiakaoyi/speech/d/e;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/speech/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :goto_1
    invoke-static {p2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->e0(Ljava/lang/String;)V

    .line 8
    sget-object v10, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->VoiceRobot:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance v11, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$c;

    move-object v0, v11

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p4

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$c;-><init>(Ljava/lang/String;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Ljava/lang/String;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V

    invoke-static {p2, v10, v11}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->C(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    return-void
.end method

.method private final h0(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .line 1
    new-instance v6, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$playTtsWithSession$1;

    invoke-direct {v6, p3, p0, p1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$playTtsWithSession$1;-><init>(ZLcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->i0(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic i0(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;ILjava/lang/Object;)V
    .locals 9

    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, p3

    :goto_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, p4

    :goto_1
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_2

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object v7, p5

    :goto_2
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_3

    move-object v8, v1

    goto :goto_3

    :cond_3
    move-object v8, p6

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 1
    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->g0(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V

    return-void
.end method

.method private static final j0(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->f:Lcn/mucang/android/jiakaoyi/speech/c/a;

    const-string v1, "SpeechEngine"

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/speech/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "release success"

    .line 2
    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->l:Z

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->n:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->U(Ljava/lang/String;)V

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 5
    invoke-static {p0, v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/speech/engine/k$a;->a(Lcn/mucang/android/jiakaoyi/speech/engine/k;IZILjava/lang/Object;)V

    .line 6
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->f:Lcn/mucang/android/jiakaoyi/speech/c/a;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/speech/c/a;->d()V

    goto :goto_0

    :cond_1
    const-string p0, "don\'t need release"

    .line 7
    invoke-static {v1, p0}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final k0(Ljava/lang/String;ZLcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$ttsGrade"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showHint ttsText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", asrAfterTts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechEngine"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->g:Lcn/mucang/android/jiakaoyi/speech/d/e;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0}, Lcn/mucang/android/jiakaoyi/speech/d/e;->d(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p2, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->l:Z

    .line 4
    invoke-static {p0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->e0(Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$d;

    invoke-direct {v0, p0, p2, p5, p1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$d;-><init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Lcn/mucang/android/jiakaoyi/framework/tts/f;Z)V

    invoke-static {p0, p3, p4, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->D(Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    return-void
.end method

.method private final l0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->f:Lcn/mucang/android/jiakaoyi/speech/c/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/speech/c/a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->s:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$b;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/c/a;-><init>(Lcn/mucang/android/jiakaoyi/speech/d/b;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->f:Lcn/mucang/android/jiakaoyi/speech/c/a;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->f:Lcn/mucang/android/jiakaoyi/speech/c/a;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/speech/c/a;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->f:Lcn/mucang/android/jiakaoyi/speech/c/a;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->f:Lcn/mucang/android/jiakaoyi/speech/c/a;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/speech/c/a;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->f:Lcn/mucang/android/jiakaoyi/speech/c/a;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/speech/c/a;->e()V

    :cond_2
    return-void
.end method

.method public static final synthetic m(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->J(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic n(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->L()V

    return-void
.end method

.method private static final n0(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;I)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SpeechEngine"

    const-string v1, "startSpeech"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->n:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->U(Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->q:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mWakeupCallBack$1;

    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mWakeupCallBack$1;->a(ILjava/lang/String;Z)V

    return-void
.end method

.method public static final synthetic o(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Lcn/mucang/android/jiakaoyi/speech/utils/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->h:Lcn/mucang/android/jiakaoyi/speech/utils/g;

    return-object p0
.end method

.method private static final o0(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startSpeech sessionId="

    .line 1
    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechEngine"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->J(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->L()V

    .line 4
    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->O()Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$a;

    move-result-object p0

    const/4 v0, 0x3

    const-wide/16 v1, 0xfa0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5
    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->O()Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$a;

    move-result-object p0

    const/4 v0, 0x4

    const-wide/16 v1, 0x2ee0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 p0, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 6
    invoke-static {p1, p0, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/speech/engine/k$a;->a(Lcn/mucang/android/jiakaoyi/speech/engine/k;IZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static final synthetic p(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Lcn/mucang/android/jiakaoyi/speech/engine/l/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->e:Lcn/mucang/android/jiakaoyi/speech/engine/l/a;

    return-object p0
.end method

.method private static final p0(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SpeechEngine"

    const-string v1, "stopSpeech"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->n:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->J(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->l:Z

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->n:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->U(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final synthetic q(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Lcn/mucang/android/jiakaoyi/speech/semantic/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->i:Lcn/mucang/android/jiakaoyi/speech/semantic/d;

    return-object p0
.end method

.method private final q0(IZZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->O()Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$a;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/speech/engine/g;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/speech/engine/g;-><init>(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;IZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static final synthetic r(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->n:Ljava/lang/String;

    return-object p0
.end method

.method private static final r0(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;IZZ)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->P(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "switchMode -> "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechEngine"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_7

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_5

    .line 2
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->l0()V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->d:Lcn/mucang/android/jiakaoyi/speech/engine/m/b;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/speech/engine/m/b;->b()V

    .line 4
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->e:Lcn/mucang/android/jiakaoyi/speech/engine/l/a;

    if-nez p1, :cond_2

    goto :goto_5

    :cond_2
    invoke-interface {p1, p2}, Lcn/mucang/android/jiakaoyi/speech/engine/l/a;->d(Z)V

    goto :goto_5

    .line 5
    :cond_3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->l0()V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->d:Lcn/mucang/android/jiakaoyi/speech/engine/m/b;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p1, p2}, Lcn/mucang/android/jiakaoyi/speech/engine/m/b;->a(Z)V

    .line 7
    :goto_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->e:Lcn/mucang/android/jiakaoyi/speech/engine/l/a;

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/speech/engine/l/a;->cancel()V

    .line 8
    :goto_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->e:Lcn/mucang/android/jiakaoyi/speech/engine/l/a;

    if-nez p1, :cond_6

    goto :goto_5

    :cond_6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/speech/engine/l/a;->f()V

    goto :goto_5

    .line 9
    :cond_7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->d:Lcn/mucang/android/jiakaoyi/speech/engine/m/b;

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/speech/engine/m/b;->b()V

    .line 10
    :goto_3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->e:Lcn/mucang/android/jiakaoyi/speech/engine/l/a;

    if-nez p1, :cond_9

    goto :goto_4

    :cond_9
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/speech/engine/l/a;->cancel()V

    .line 11
    :goto_4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->e:Lcn/mucang/android/jiakaoyi/speech/engine/l/a;

    if-nez p1, :cond_a

    goto :goto_5

    :cond_a
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/speech/engine/l/a;->f()V

    .line 12
    :goto_5
    invoke-direct {p0, p3}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->s0(Z)V

    return-void
.end method

.method public static final synthetic s(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Landroid/os/HandlerThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->o:Landroid/os/HandlerThread;

    return-object p0
.end method

.method private final s0(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->k:Z

    const-string v1, "SpeechEngine"

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->d:Lcn/mucang/android/jiakaoyi/speech/engine/m/b;

    if-eqz v0, :cond_3

    .line 3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->e:Lcn/mucang/android/jiakaoyi/speech/engine/l/a;

    if-eqz v2, :cond_3

    .line 4
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/j;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->e:Lcn/mucang/android/jiakaoyi/speech/engine/l/a;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/j;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->d:Lcn/mucang/android/jiakaoyi/speech/engine/m/b;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/j;->c()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->e:Lcn/mucang/android/jiakaoyi/speech/engine/l/a;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/j;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iput v2, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->c:I

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->d:Lcn/mucang/android/jiakaoyi/speech/engine/m/b;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/j;->c()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->e:Lcn/mucang/android/jiakaoyi/speech/engine/l/a;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/j;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iput v3, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->c:I

    goto :goto_1

    .line 9
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->d:Lcn/mucang/android/jiakaoyi/speech/engine/m/b;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/j;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->e:Lcn/mucang/android/jiakaoyi/speech/engine/l/a;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/j;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "wakeup and asr engine working together!!!"

    .line 10
    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->n:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->U(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, v2, v3}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->g(IZ)V

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->c:I

    .line 14
    :cond_4
    :goto_1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->c:I

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->P(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "EngineMode="

    invoke-static {v2, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    .line 15
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->f0()V

    :cond_5
    return-void
.end method

.method public static final synthetic t(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->O()Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic t0(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->s0(Z)V

    return-void
.end method

.method public static final synthetic u(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Lcn/mucang/android/jiakaoyi/speech/d/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->g:Lcn/mucang/android/jiakaoyi/speech/d/e;

    return-object p0
.end method

.method public static final synthetic v(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->l:Z

    return p0
.end method

.method public static final synthetic w(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->m:Z

    return p0
.end method

.method public static final synthetic x(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Lcn/mucang/android/jiakaoyi/speech/engine/m/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->d:Lcn/mucang/android/jiakaoyi/speech/engine/m/b;

    return-object p0
.end method

.method public static final synthetic y(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic z(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->Q(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->j:Z

    return v0
.end method

.method public b(IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->O()Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$a;

    move-result-object p2

    new-instance v0, Lcn/mucang/android/jiakaoyi/speech/engine/e;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/speech/engine/e;-><init>(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->n:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->J(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->R()V

    return-void
.end method

.method public disable()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->O()Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$a;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/speech/engine/c;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/speech/engine/c;-><init>(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ZLcn/mucang/android/jiakaoyi/framework/tts/f;)V
    .locals 9

    const-string v0, "ttsGrade"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->O()Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$a;

    move-result-object v0

    new-instance v8, Lcn/mucang/android/jiakaoyi/speech/engine/i;

    move-object v1, v8

    move-object v2, p1

    move v3, p4

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/speech/engine/i;-><init>(Ljava/lang/String;ZLcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->O()Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$a;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/speech/engine/a;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/speech/engine/a;-><init>(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public g(IZ)V
    .locals 2

    const-string v0, "SpeechEngine"

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->j:Z

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchMode "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->P(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " fail, \u8bed\u97f3\u52a9\u624b\u5df2\u88ab\u7981\u7528"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget v1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->c:I

    if-ne p1, v1, :cond_1

    if-nez p2, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->P(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "switchMode, mode already is "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->f0()V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->q0(IZZ)V

    return-void
.end method

.method public h(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/speech/d/e;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SpeechEngine"

    const-string v1, "init"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->g:Lcn/mucang/android/jiakaoyi/speech/d/e;

    .line 3
    new-instance p2, Lcn/mucang/android/jiakaoyi/speech/engine/m/c;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/speech/engine/m/c;-><init>()V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->d:Lcn/mucang/android/jiakaoyi/speech/engine/m/b;

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->q:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mWakeupCallBack$1;

    invoke-interface {p2, p1, v0}, Lcn/mucang/android/jiakaoyi/speech/engine/j;->g(Landroid/content/Context;Ljava/lang/Object;)V

    .line 5
    :goto_0
    new-instance p2, Lcn/mucang/android/jiakaoyi/speech/engine/l/b;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/speech/engine/l/b;-><init>()V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->e:Lcn/mucang/android/jiakaoyi/speech/engine/l/a;

    if-nez p2, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->r:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$a;

    invoke-interface {p2, p1, v0}, Lcn/mucang/android/jiakaoyi/speech/engine/j;->g(Landroid/content/Context;Ljava/lang/Object;)V

    .line 7
    :goto_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->o:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->k:Z

    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->O()Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$a;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/speech/engine/h;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/speech/engine/h;-><init>(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public j(Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invokeSpeechRet playText:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;->getPlayText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", closeAfterSpeak:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;->getCloseAfterSpeak()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mWaitBizRet:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sessionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechEngine"

    .line 2
    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->m:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->m:Z

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->O()Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$a;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;->getPlayText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    .line 7
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->i:Lcn/mucang/android/jiakaoyi/speech/semantic/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/semantic/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    :cond_2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->n:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;->getCloseAfterSpeak()Z

    move-result p1

    invoke-direct {p0, v1, v0, p1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->h0(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->i:Lcn/mucang/android/jiakaoyi/speech/semantic/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->n:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcn/mucang/android/jiakaoyi/speech/semantic/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->c:I

    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->k:Z

    return v0
.end method

.method public m0(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->O()Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$a;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/speech/engine/f;

    invoke-direct {v1, p1, p0}, Lcn/mucang/android/jiakaoyi/speech/engine/f;-><init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->O()Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$a;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/speech/engine/d;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/speech/engine/d;-><init>(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
