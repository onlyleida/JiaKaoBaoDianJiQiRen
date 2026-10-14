.class public Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication;
.super Lcn/mucang/jiakaoyi/uilib/e;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/c;
.implements Lcn/mucang/android/jiakaoyi/framework/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0014J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u0006H\u0014J\u0008\u0010\u000c\u001a\u00020\u0006H\u0014J\u0008\u0010\r\u001a\u00020\u0006H\u0016J\u0008\u0010\u000e\u001a\u00020\u0006H\u0016J\u000e\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0014J\u0012\u0010\u0012\u001a\u00020\n2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014J\u0008\u0010\u0015\u001a\u00020\u0006H\u0014J\u0008\u0010\u0016\u001a\u00020\u0006H\u0002J\u0008\u0010\u0017\u001a\u00020\u0006H\u0002J\u0008\u0010\u0018\u001a\u00020\nH\u0016J\u0012\u0010\u0019\u001a\u00020\n2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0008\u0010\u001a\u001a\u00020\u0006H\u0016J\u0018\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0008\u0010\u001f\u001a\u00020\nH\u0016J\u0008\u0010 \u001a\u00020\u0006H\u0016J\u0008\u0010!\u001a\u00020\u0006H\u0016J\u0008\u0010\"\u001a\u00020\u0006H\u0016J\u0008\u0010#\u001a\u00020\u0006H\u0016\u00a8\u0006$"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication;",
        "Lcn/mucang/jiakaoyi/uilib/BaseApplication;",
        "Lcn/mucang/android/jiakaoyi/framework/VoiceRobotPageHandler;",
        "Lcn/mucang/android/jiakaoyi/framework/CrossModuleCaller;",
        "()V",
        "attachBaseContext",
        "",
        "base",
        "Landroid/content/Context;",
        "canPlayTts",
        "",
        "doOnActivityStart",
        "doOnAppExit",
        "doOnBackground",
        "doOnCrash",
        "exitEvents",
        "",
        "Lcn/mucang/android/jiakaoyi/framework/base/exit/ExitEvent;",
        "filterActivity",
        "activity",
        "Landroid/app/Activity;",
        "initOnMainProcess",
        "initSpeech",
        "initTeachErrorCorrect",
        "isFaceRecordOpen",
        "isUnityPage",
        "onTerminate",
        "setFaceRecord",
        "open",
        "view",
        "Landroid/view/View;",
        "showFaceRecord",
        "uploadBackGearType",
        "uploadGearType",
        "uploadGpsSpeed",
        "uploadVoiceGrade",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/e;-><init>()V

    return-void
.end method

.method public static final synthetic V(Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/e;->O()V

    return-void
.end method

.method public static final synthetic W(Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private static final X()V
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/f/w0;->a()V

    return-void
.end method

.method private static final Y(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/mapcollect/render/f;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object p0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->c:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    const-class v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/f;

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-object p0
.end method

.method private final Z()V
    .locals 6

    .line 1
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication$initSpeech$1;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication$initSpeech$1;-><init>(Lkotlin/coroutines/c;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final a0()V
    .locals 2

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/z;->a:Lcn/mucang/android/jiakaoyi/teachingk2/z;

    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c$a;

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->j(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    return-void
.end method

.method private static final b0(Lcn/mucang/android/jiakaoyi/teachingk2/a1/c$a;)V
    .locals 15

    .line 1
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c$a;->c:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;

    .line 3
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c$a;->d:I

    mul-int/lit8 v7, v1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v8, 0x5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xb03

    const/4 v14, 0x0

    const-string v5, "#ffffff"

    const-string v11, "correctLine"

    .line 4
    invoke-static/range {v0 .. v14}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;->e(Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;IIILjava/util/List;Ljava/lang/String;FIIZLjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)I

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c$a;->a:Z

    if-nez v0, :cond_1

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;->a(I)V

    .line 7
    :cond_1
    :goto_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TraceErrorTipModel;

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c$a;->a:Z

    iget p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c$a;->b:I

    invoke-direct {v0, v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TraceErrorTipModel;-><init>(ZI)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    return-void
.end method

.method public static synthetic c0(Lcn/mucang/android/jiakaoyi/teachingk2/a1/c$a;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication;->b0(Lcn/mucang/android/jiakaoyi/teachingk2/a1/c$a;)V

    return-void
.end method

.method public static synthetic d0(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/mapcollect/render/f;
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication;->Y(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/mapcollect/render/f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e0()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication;->X()V

    return-void
.end method


# virtual methods
.method protected K()V
    .locals 0

    return-void
.end method

.method protected L()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/jiakaoyi/uilib/e;->L()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/f;->f()V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->g()V

    .line 4
    invoke-static {}, Lcn/mucang/android/jky/camera/UsbCameraManager;->release()V

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->c()V

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->a:Lcn/mucang/android/jiakaoyi/speech/SpeechManager;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->q()V

    .line 7
    sget-object v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->a:Lcn/mucang/jiakaoyi/sundial/client/SundialClient;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->q()V

    .line 8
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/UserSwitcher;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/UserSwitcher;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/UserSwitcher;->j()V

    .line 9
    sget-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->a:Lcn/mucang/android/facelib/FaceLoginManager;

    invoke-virtual {v0}, Lcn/mucang/android/facelib/FaceLoginManager;->w()V

    .line 10
    sget-object v0, Lcn/mucang/android/facelib/GoogleDetectorFactory;->a:Lcn/mucang/android/facelib/GoogleDetectorFactory$Companion;

    invoke-virtual {v0}, Lcn/mucang/android/facelib/GoogleDetectorFactory$Companion;->b()V

    return-void
.end method

.method public M()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/jiakaoyi/uilib/e;->M()V

    .line 2
    sget-object v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->a:Lcn/mucang/jiakaoyi/sundial/client/SundialClient;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->t()V

    return-void
.end method

.method protected P()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/framework/base/k/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication$a;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected Q(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcn/mucang/sundial/library/activity/TopActivity;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcn/mucang/jiakaoyi/uilib/e;->Q(Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/f0;->a(Landroid/content/Context;)Landroid/content/Context;

    invoke-super {p0, p1}, Lcn/mucang/jiakaoyi/uilib/e;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public b()Z
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/LoginHelper;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/LoginHelper;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/LoginHelper;->c()Landroidx/lifecycle/z;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->GearType:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->o(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;)V

    return-void
.end method

.method public e(ZLandroid/view/View;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication$setFaceRecord$1;

    const/4 v0, 0x0

    invoke-direct {v4, p2, p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication$setFaceRecord$1;-><init>(Landroid/view/View;ZLkotlin/coroutines/c;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->BackGearType:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/a;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->o(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->EnableGps:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/d/i;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->o(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;)V

    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/jiakaoyi/uilib/e;->j()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ModuleStatusReporter;->b()V

    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->i()Landroidx/lifecycle/z;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->VoiceGrade:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/e;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->o(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;)V

    return-void
.end method

.method public n()Z
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->a:Lcn/mucang/android/jiakaoyi/speech/SpeechManager;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->h()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public o(Landroid/app/Activity;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v2, Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3, v4}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->b(Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;Ljava/lang/Class;Landroid/os/Bundle;ILjava/lang/Object;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;->isUnityPage(Landroid/content/Context;)Z

    move-result p1

    if-ne p1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public onTerminate()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/mucang/jiakaoyi/uilib/e;->onTerminate()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;->c()V

    return-void
.end method

.method protected u()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcn/mucang/jiakaoyi/uilib/e;->u()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/f0;->b()Lcn/mucang/android/jiakaoyi/framework/consts/Language;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/consts/Language;->desc:Ljava/lang/String;

    const-string v1, "\u5f53\u524d\u8bed\u8a00: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;->e()V

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->a()V

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/c0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/c0;

    .line 5
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->n(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/a0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/a0;

    sput-object v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/x0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/x0$a;

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;-><init>(Lcn/mucang/android/jiakaoyi/framework/c;)V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 8
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication;->Z()V

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotLoginListener;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotLoginListener;-><init>()V

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->o(Lcn/mucang/jiakaoyi/uilib/login/m;)V

    .line 10
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/z;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/z;-><init>()V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/y;->b(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/x;)V

    .line 11
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper;->a:Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper;->h()V

    .line 12
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/t;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/t;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/t;->d()V

    .line 13
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication;->a0()V

    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 15
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/MediaService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 16
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v1, Lcn/mucang/android/jiakaoyi/framework/dataprovider/AbsApiLangDataProvider;

    const-class v2, Lcn/mucang/android/jiakaoyi/teachingk2/provider/RobotApiLangProvider;

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method
