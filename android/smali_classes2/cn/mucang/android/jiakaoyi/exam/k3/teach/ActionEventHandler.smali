.class public Lcn/mucang/android/jiakaoyi/exam/k3/teach/ActionEventHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/exam/k3/teach/ActionHandler;


# instance fields
.field public entryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionEventEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field public errorEntryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionEventEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field public errorLevel:I

.field public level:I

.field public final teachData:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/ActionEventHandler;->teachData:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    return-void
.end method

.method private handle(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionEventEntry;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;",
            ">(",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionEventEntry;",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionEventEntry;->variableHandler:Lcn/mucang/android/jiakaoyi/exam/k3/teach/VariableHandler;

    .line 2
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionEventEntry;->variable:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;

    invoke-interface {v0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/VariableHandler;->isTrigger(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public isTrigger(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionResult;
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/ActionEventHandler;->errorEntryList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/ActionEventHandler;->errorLevel:I

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/ActionEventHandler;->errorEntryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/ActionEventHandler;->errorLevel:I

    :goto_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/ActionEventHandler;->errorEntryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/ActionEventHandler;->errorEntryList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionEventEntry;

    .line 6
    invoke-direct {p0, v2, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/ActionEventHandler;->handle(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionEventEntry;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    new-instance p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionResult;

    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;->Error:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;

    invoke-direct {p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionResult;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;)V

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/ActionEventHandler;->entryList:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/ActionEventHandler;->level:I

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/ActionEventHandler;->entryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/ActionEventHandler;->entryList:Ljava/util/List;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/ActionEventHandler;->level:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionEventEntry;

    .line 11
    invoke-direct {p0, v1, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/ActionEventHandler;->handle(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionEventEntry;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_5

    .line 12
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/ActionEventHandler;->level:I

    add-int/2addr p1, v2

    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/ActionEventHandler;->level:I

    .line 13
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/ActionEventHandler;->entryList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ne p1, p2, :cond_5

    .line 14
    new-instance p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionResult;

    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;->Finish:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;

    invoke-direct {p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionResult;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;)V

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method
