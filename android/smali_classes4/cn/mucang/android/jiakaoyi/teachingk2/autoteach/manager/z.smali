.class public final Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0014\u0010\u0004\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0010\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0006\u0010\u001b\u001a\u00020\u0007J\u0006\u0010\u001c\u001a\u00020\u0007J\u0006\u0010\u001d\u001a\u00020\u0007R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0004\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AssistTeachPreChecker;",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "isAutoTeach",
        "",
        "onChecked",
        "Lkotlin/Function1;",
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/BoundDetector;",
        "",
        "(ZLkotlin/jvm/functions/Function1;)V",
        "checkList",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/BaseTeachCheck;",
        "indexOfRouteCheck",
        "",
        "lastVoice",
        "",
        "speakTime",
        "",
        "statusModel",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;",
        "onSignalChanged",
        "signalGetter",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "play",
        "result",
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/CheckStatusModel;",
        "playVoice",
        "resetRearCheck",
        "start",
        "stop",
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


# instance fields
.field private final a:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/d;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;

.field private e:J

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLkotlin/jvm/b/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onChecked"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;->a:Lkotlin/jvm/b/l;

    const/4 p2, 0x2

    .line 2
    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;->b:I

    const/4 v0, 0x4

    new-array v0, v0, [Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/d;

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/g;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/g;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/e;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/e;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/y;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/y;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/y;->b()Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/f;

    move-result-object v2

    aput-object v2, v0, p2

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;

    invoke-direct {v2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;-><init>(Z)V

    const/4 v3, 0x3

    aput-object v2, v0, v3

    invoke-static {v0}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;->c:Ljava/util/List;

    .line 4
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;-><init>()V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;

    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachRouteCheck;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/y;->c()Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;

    move-result-object v1

    invoke-direct {p1, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachRouteCheck;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;)V

    .line 6
    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final a(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;->e()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->AutoTeach:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z$a;

    invoke-direct {v2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->X(Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILcn/mucang/android/jiakaoyi/framework/tts/f;)V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;->e()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;->f:Ljava/lang/String;

    return-void
.end method

.method private final b(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v3, -0x1

    if-nez v2, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;->a(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;)V

    .line 5
    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;->e:J

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;->a()I

    move-result v2

    if-lez v2, :cond_1

    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;->e:J

    sub-long v5, v0, v5

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;->a()I

    move-result v2

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-lez v2, :cond_1

    .line 7
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;->a(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;)V

    .line 8
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;->e:J

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;->a()I

    move-result v0

    if-nez v0, :cond_2

    .line 10
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;->e:J

    const-wide/16 v5, 0x0

    cmp-long v2, v0, v5

    if-ltz v2, :cond_2

    .line 11
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;->a(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;)V

    .line 12
    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;->e:J

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;->c:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/d;

    .line 3
    instance-of v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachSignalCheck;->d()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/d;->b()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;->f:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;->e:J

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;->c:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/d;

    .line 6
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/d;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 3

    const-string v0, "signalGetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->c()Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->e()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->d()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;->c:Ljava/util/List;

    .line 5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/d;

    .line 6
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/d;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_2
    if-eqz v0, :cond_5

    .line 7
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;->d()Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    move-result-object p1

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->CheckGps:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    if-eq p1, v1, :cond_3

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;->d()Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    move-result-object p1

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->CheckStop:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    if-ne p1, v1, :cond_4

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;->c()V

    .line 9
    :cond_4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;->d()Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->getType()I

    move-result v1

    iput v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;->state:I

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;->data:Ljava/lang/String;

    .line 11
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;->b(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;)V

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    goto :goto_0

    .line 13
    :cond_5
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/y;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/y;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/y;->b()Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/f;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/f;->e()Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    move-result-object p1

    .line 14
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;->a:Lkotlin/jvm/b/l;

    invoke-interface {v0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;->e()V

    :cond_6
    :goto_0
    return-void
.end method
