.class public Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private b:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/f/b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/f/a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcn/mucang/android/jiakaoyi/engine/f/b;

.field private final f:Lcn/mucang/android/jiakaoyi/engine/f/a;

.field private final g:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

.field private final h:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/engine/init/EngineState;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;


# direct methods
.method public constructor <init>(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->c:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->d:Ljava/util/List;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->e:Lcn/mucang/android/jiakaoyi/engine/f/b;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/u;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/u;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->f:Lcn/mucang/android/jiakaoyi/engine/f/a;

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/q;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/q;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->g:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/s;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/s;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->h:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;-><init>(ZZ)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->i:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;

    .line 9
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->a:Z

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->c:Ljava/util/List;

    return-object p0
.end method

.method private d(J)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    if-nez v0, :cond_2

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->e:Lcn/mucang/android/jiakaoyi/engine/f/b;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->f:Lcn/mucang/android/jiakaoyi/engine/f/a;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->h:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->i:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->g:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->a:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->j:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->i:Ljava/util/HashMap;

    :goto_0
    move-object v8, p1

    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->a:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->k:Ljava/util/HashMap;

    :goto_1
    move-object v9, p1

    const/4 v10, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;-><init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/engine/f/b;Lcn/mucang/android/jiakaoyi/engine/f/a;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;Ljava/util/Map;Ljava/util/Map;I)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->reset()V

    :goto_2
    return-void
.end method

.method private synthetic f(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/f/a;

    .line 2
    invoke-interface {v1, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/f/a;->onStep(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic h(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorForm:Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->voice:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->a()Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->getError()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->getConditionId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/o0;->b(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;Z)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->TeachError:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 5
    invoke-static {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->X(Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILcn/mucang/android/jiakaoyi/framework/tts/f;)V

    .line 6
    :cond_0
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->f(Ljava/lang/String;I)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u89e6\u53d1\u7ea0\u9519\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->teachModelId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorForm:Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->voice:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 8
    iget-object p0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->stopArea:Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;

    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;->Good:Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;

    if-eq p0, p1, :cond_1

    const-string p0, "\u7cbe\u5f69\u65f6\u523b\uff1a\u89e6\u53d1\u7ea0\u9519\u4e2d\u65ad\u5f55\u5236"

    .line 9
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 10
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->e(Z)V

    :cond_1
    return-void
.end method

.method private synthetic i(Lcn/mucang/android/jiakaoyi/engine/init/EngineState;)V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/init/a;->getEngine()Lcn/mucang/android/jiakaoyi/engine/c;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/init/a;->getEngine()Lcn/mucang/android/jiakaoyi/engine/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/c;->h()Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    const v0, 0x49450

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getDeduct(I)Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->needAutoCheck()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_on_left_signal_before_starting:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalRemind:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->z(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 6
    :cond_1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->r()V

    :goto_0
    return-void
.end method

.method private synthetic k(J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->d(J)V

    return-void
.end method

.method static synthetic m(Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->destroy()V

    :cond_0
    return-void
.end method

.method private r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->getEngine()Lcn/mucang/android/jiakaoyi/engine/c;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->canStart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->start()Z

    :cond_1
    :goto_0
    return-void
.end method

.method private t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->stop()V

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;->b()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->i:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;->b()V

    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->i:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;->e()Z

    move-result v0

    return v0
.end method

.method public synthetic g(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->f(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V

    return-void
.end method

.method public synthetic j(Lcn/mucang/android/jiakaoyi/engine/init/EngineState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->i(Lcn/mucang/android/jiakaoyi/engine/init/EngineState;)V

    return-void
.end method

.method public synthetic l(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->k(J)V

    return-void
.end method

.method public n(Lcn/mucang/android/jiakaoyi/engine/f/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public o(Lcn/mucang/android/jiakaoyi/engine/f/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->i:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;->k()V

    return-void
.end method

.method public q()V
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->j()V

    const-wide/16 v0, 0x0

    .line 2
    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_please_sel_site:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 4
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->r:Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {v2, v3, v1}, Lcn/mucang/jiakaoyi/uilib/s/j;->i(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->posMapCode:Ljava/lang/String;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/t;

    invoke-direct {v0, p0, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/t;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;J)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 6
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->a:Z

    if-nez v0, :cond_1

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper;->g()V

    :cond_1
    return-void
.end method

.method public s()V
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->k()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->t()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/r;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/r;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v1, v2, v3}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper;->i()V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->i:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;->g()V

    return-void
.end method

.method public u(Lcn/mucang/android/jiakaoyi/engine/f/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public v(Lcn/mucang/android/jiakaoyi/engine/f/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
