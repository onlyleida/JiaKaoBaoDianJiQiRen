.class public Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private actionEventHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/ActionEventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private currentStepHandler:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

.field public hasInit:Z

.field private final isPlayTeachVoice:Z

.field private positionHelpers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;",
            ">;"
        }
    .end annotation
.end field

.field private resultEventCallback:Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;

.field public startingIndex:I

.field private teachDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;",
            ">;"
        }
    .end annotation
.end field

.field private teachResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->startingIndex:I

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->teachDataList:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->resultEventCallback:Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;

    .line 5
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->isPlayTeachVoice:Z

    return-void
.end method

.method private synthetic a(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->resultEventCallback:Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->teachResults:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;->handleResult(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private synthetic c(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->resultEventCallback:Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->teachResults:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;->handleResult(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private synthetic e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->resultEventCallback:Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->currentStepHandler:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->teachResults:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;->handleResult(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private synthetic g(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->resultEventCallback:Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->teachResults:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;->handleResult(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private getTeachPointById(Ljava/lang/Long;Ljava/util/List;)Lcn/mucang/android/jiakaoyi/engine/j/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/j/a;",
            ">;)",
            "Lcn/mucang/android/jiakaoyi/engine/j/a;"
        }
    .end annotation

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/engine/j/a;

    .line 2
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/engine/j/a;->a:Ljava/lang/Long;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private handleResult(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;I)V
    .locals 6

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->startingIndex:I

    :goto_0
    if-ge v0, p2, :cond_1

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->teachResults:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachResult;

    .line 3
    invoke-direct {p0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->isValidResult(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachResult;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionResult;

    sget-object v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;->NoFinish:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;

    const/4 v4, 0x0

    const-string v5, "\u672a\u6267\u884c"

    invoke-direct {v2, v3, v5, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionResult;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;Ljava/lang/String;I)V

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachResult;->result:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionResult;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/k;

    invoke-direct {p2, p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/k;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    invoke-static {p2}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private isValidResult(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachResult;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachResult;->result:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionResult;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionResult;->state:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;

    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;->Waiting:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;->Starting:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private startTeachStep(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachResult;)V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionResult;

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;->Starting:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionResult;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;)V

    iput-object v0, p3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachResult;->result:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionResult;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachResult;->isStarting:Z

    .line 3
    new-instance p3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/l;

    invoke-direct {p3, p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/l;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    invoke-static {p3}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 4
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->isPlayTeachVoice:Z

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->desc:Ljava/lang/String;

    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->Teach:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance p3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor$1;

    invoke-direct {p3, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor$1;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;)V

    invoke-static {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->u(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic b(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->a(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    return-void
.end method

.method public synthetic d(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->c(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    return-void
.end method

.method public execute(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 7

    .line 1
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->currentStepHandler:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    .line 2
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->hasInit:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->actionEventHandlers:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->teachResults:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->positionHelpers:Ljava/util/List;

    .line 6
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->startingIndex:I

    :goto_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->teachDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 7
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->teachDataList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    .line 8
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->id:Ljava/lang/Long;

    iget-object v4, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->o:Ljava/util/List;

    invoke-direct {p0, v3, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->getTeachPointById(Ljava/lang/Long;Ljava/util/List;)Lcn/mucang/android/jiakaoyi/engine/j/a;

    move-result-object v3

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "teachData "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "teachPoint "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 11
    new-instance v4, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/d;->m()I

    move-result v5

    int-to-float v5, v5

    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/d;->l()I

    move-result v6

    int-to-float v6, v6

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/j/a;->b:Landroid/location/Location;

    invoke-direct {v4, v5, v6, v3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;-><init>(FFLandroid/location/Location;)V

    .line 12
    :cond_0
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->positionHelpers:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->teachResults:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachResult;

    invoke-direct {v4, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachResult;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataParser;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataParser;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataParser;->createActionHandler(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/ActionEventHandler;

    move-result-object v2

    .line 15
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->actionEventHandlers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16
    :cond_1
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->hasInit:Z

    .line 17
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->teachDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 18
    :cond_3
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->startingIndex:I

    :goto_1
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->teachDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 19
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->positionHelpers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;

    .line 20
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->teachResults:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachResult;

    .line 21
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->teachDataList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    if-eqz v2, :cond_4

    .line 22
    iget-boolean v5, v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachResult;->isStarting:Z

    if-nez v5, :cond_4

    const/4 v5, 0x0

    .line 23
    invoke-virtual {v2, p1, v5}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->b(Lcn/mucang/android/jiakaoyi/signal/c/e;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 24
    invoke-direct {p0, p3, v4, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->startTeachStep(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachResult;)V

    .line 25
    invoke-direct {p0, p3, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->handleResult(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;I)V

    .line 26
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->startingIndex:I

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 27
    :cond_5
    :goto_2
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->startingIndex:I

    :goto_3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->teachDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_a

    .line 28
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->teachDataList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    .line 29
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->teachResults:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachResult;

    .line 30
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->positionHelpers:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;

    .line 31
    iget v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->startingIndex:I

    if-ne v0, v5, :cond_7

    .line 32
    iget-boolean v5, v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachResult;->isStarting:Z

    if-nez v5, :cond_6

    if-nez v4, :cond_6

    .line 33
    invoke-direct {p0, p3, v2, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->startTeachStep(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachResult;)V

    .line 34
    :cond_6
    iget-boolean v5, v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachResult;->isStarting:Z

    if-eqz v5, :cond_7

    .line 35
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->actionEventHandlers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/ActionEventHandler;

    .line 36
    invoke-virtual {v2, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/ActionEventHandler;->isTrigger(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionResult;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 37
    iput-object p1, v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachResult;->result:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionResult;

    .line 38
    invoke-direct {p0, p3, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->handleResult(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;I)V

    add-int/2addr v0, v1

    .line 39
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->startingIndex:I

    goto :goto_4

    .line 40
    :cond_7
    iget-boolean v2, v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->order:Z

    if-nez v2, :cond_a

    if-eqz v4, :cond_8

    goto :goto_4

    .line 41
    :cond_8
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->actionEventHandlers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/ActionEventHandler;

    .line 42
    invoke-virtual {v2, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/ActionEventHandler;->isTrigger(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionResult;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 43
    iput-object v2, v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachResult;->result:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionResult;

    .line 44
    invoke-direct {p0, p3, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->handleResult(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;I)V

    add-int/2addr v0, v1

    .line 45
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->startingIndex:I

    goto :goto_4

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    return-void
.end method

.method public synthetic f()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->e()V

    return-void
.end method

.method public synthetic h(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->g(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    return-void
.end method

.method public isEnd()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->startingIndex:I

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->actionEventHandlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCheckEnd(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->teachDataList:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->actionEventHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 2
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->startingIndex:I

    :goto_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->actionEventHandlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->actionEventHandlers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/ActionEventHandler;

    .line 4
    invoke-virtual {v1, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/ActionEventHandler;->isTrigger(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionResult;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->teachResults:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachResult;

    const/4 v3, 0x1

    .line 6
    iput-boolean v3, v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachResult;->isEnd:Z

    if-eqz v1, :cond_0

    .line 7
    iput-object v1, v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachResult;->result:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionResult;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->teachResults:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachResult;

    .line 9
    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->isValidResult(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachResult;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionResult;

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;->NoFinish:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;

    const/4 v2, 0x0

    const-string v3, "\u672a\u6267\u884c"

    invoke-direct {v0, v1, v3, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionResult;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;Ljava/lang/String;I)V

    iput-object v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachResult;->result:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionResult;

    goto :goto_1

    .line 11
    :cond_3
    new-instance p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/m;

    invoke-direct {p1, p0, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/m;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public startNext()V
    .locals 5

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->startingIndex:I

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->actionEventHandlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->teachResults:Ljava/util/List;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->startingIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachResult;

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionResult;

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;->Skip:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;

    const/4 v3, 0x0

    const-string v4, "\u8df3\u8fc7"

    invoke-direct {v1, v2, v4, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionResult;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;Ljava/lang/String;I)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachResult;->result:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionResult;

    .line 4
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->startingIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->startingIndex:I

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/j;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/j;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
