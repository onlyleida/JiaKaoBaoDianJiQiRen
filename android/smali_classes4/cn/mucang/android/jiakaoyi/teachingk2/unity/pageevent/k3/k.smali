.class public final Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0$a;
.implements Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0$a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0014\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000c0\u000bH\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u000fH\u0016J\u0008\u0010\u0011\u001a\u00020\u000fH\u0016J\u001a\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ReadyPage;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/handlers/UnityPageHandler$PageEvent;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/controller/K3EngineController$EngineCallback;",
        "()V",
        "engineCtrl",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/controller/K3EngineController;",
        "ready",
        "",
        "getEngineType",
        "",
        "getStepGetter",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Getter;",
        "",
        "Lcn/mucang/android/jiakaoyi/engine/processor/ExamEventCreator$StepInfo;",
        "onEngineInitialed",
        "",
        "onEnter",
        "onExit",
        "onStep",
        "stepHandler",
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/StepHandler;",
        "stepResult",
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/StepResult;",
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
.field private final a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0$a;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/k;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/k;->b:Z

    return-void
.end method

.method private static final a()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_ShangChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/StepInfoParseUtil;->getEmptyStepInfo(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/s;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/k;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/k;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/k;->f(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/k;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private static final f(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/k;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/k;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;->e()Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->reset()V

    :goto_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/k;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;->e()Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->start()Z

    :goto_0
    return-void
.end method

.method public c()Lcn/mucang/android/jiakaoyi/framework/h/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/mucang/android/jiakaoyi/framework/h/c<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/i/c$b;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/g;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/g;

    return-object v0
.end method

.method public g()V
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->r:Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->setTraceType(I)V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->r:Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v1

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/s/j;->i(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->posMapCode:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/k;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;->g()V

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/TrainDataModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/TrainDataModel;-><init>()V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    const-string v0, "HaveShangCheStep"

    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/k;->b:Z

    .line 7
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->i(Ljava/lang/String;Z)V

    return-void
.end method

.method public getEngineType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0$a$a;->a(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0$a;)Z

    move-result v0

    return v0
.end method

.method public synthetic n()V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/z;->a(Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0$a;)V

    return-void
.end method

.method public o()V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/k;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;->q()V

    .line 3
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/k;->b:Z

    const-string v1, "HaveShangCheStep"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->i(Ljava/lang/String;Z)V

    return-void
.end method

.method public onOneError(Lcn/mucang/android/jiakaoyi/engine/model/a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0$a$a;->c(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0$a;Lcn/mucang/android/jiakaoyi/engine/model/a;)V

    return-void
.end method

.method public onStep(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V
    .locals 7

    const-string p2, "stepHandler"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_ShangChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne p2, v0, :cond_3

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/k;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;->d()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/k;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;->e()Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/init/a;->reset()V

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    const-string p1, "getCurrentActivity()"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/k;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;->d()Ljava/util/List;

    move-result-object p1

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {p1, p2}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 7
    check-cast p2, Lcn/mucang/android/jiakaoyi/engine/model/a;

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;-><init>()V

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->desc:Ljava/lang/String;

    iput-object p2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;->deductName:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 9
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/StepResultDialog;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/StepResultDialog;-><init>(Landroid/content/Context;ZLjava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/o;)V

    .line 10
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/h;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/h;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/k;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 11
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onStepChanged(ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0$a$a;->e(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0$a;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;)V

    return-void
.end method

.method public p(Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0$a$a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0$a;Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;)V

    return-void
.end method
