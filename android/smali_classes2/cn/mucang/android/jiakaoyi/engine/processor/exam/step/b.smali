.class public Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;

.field private final b:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

.field public final f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

.field private g:Z

.field private h:Z

.field public i:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;

.field private j:I

.field private k:J

.field private final l:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

.field private m:Z

.field public n:Z

.field public o:F

.field public p:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Lcn/mucang/android/jiakaoyi/engine/i/c$b;",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;->None:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->i:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j:I

    .line 4
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 5
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    .line 6
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->l:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    .line 7
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;

    .line 8
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->b:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;

    .line 9
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->c:Ljava/util/List;

    .line 10
    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->d:Ljava/util/List;

    .line 11
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->g:Z

    .line 12
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->h:Z

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->m:Z

    return-void
.end method

.method private b(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;->b:Ljava/util/List;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/engine/model/a;

    .line 4
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->deductScore:I

    if-lez v1, :cond_0

    .line 5
    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->b(Lcn/mucang/android/jiakaoyi/engine/model/a;)V

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b$b;

    invoke-direct {v1, p0, p2, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b$b;-><init>(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/model/a;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->j()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->k:Z

    if-nez p1, :cond_2

    .line 8
    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->g(Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private g(Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;
    .locals 4

    .line 1
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->k:J

    sub-long/2addr v0, v2

    .line 2
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p1, v2, v0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->L(Lcn/mucang/android/jiakaoyi/engine/model/Step;J)V

    .line 3
    new-instance p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {p1, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;-><init>(JLcn/mucang/android/jiakaoyi/engine/model/Step;)V

    return-object p1
.end method

.method private i(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/signal/c/e;Z)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p1, p3, p2, p0, p4}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;->isTrigger(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 2
    invoke-interface {p1, p3, p2, p0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;->handle(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p2

    .line 3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->zhStepName:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "--\u6b65\u9aa4\u6267\u884c\u9519\u8bef:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "TAG"

    invoke-static {p4, p3}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "StepHandler : \u6b65\u9aa4\u6267\u884c\u9519\u8bef,Step:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->zhStepName:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ",\u4e8b\u4ef6:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", error = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;

    instance-of v1, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->needToCheck()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->p:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->h:Z

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;->End:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->i:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;

    if-eqz p2, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;

    const/4 v2, 0x0

    .line 4
    invoke-direct {p0, v1, p1, p2, v2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->i(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/signal/c/e;Z)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;

    move-result-object v1

    .line 5
    invoke-direct {p0, v1, p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->b(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->g(Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;

    move-result-object p1

    return-object p1
.end method

.method public e()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;

    return-object v0
.end method

.method public f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;",
            ">()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->l:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public h(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Z)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;
    .locals 4

    .line 1
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->p:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;

    .line 2
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->g:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_a

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->l:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p0, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->b:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, p2, p1, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->i(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/signal/c/e;Z)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 6
    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;->c:Z

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->h:Z

    if-eqz v2, :cond_3

    .line 7
    sget-object p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;->End:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->i:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;

    .line 8
    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->g(Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 10
    iget v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j:I

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->c:Ljava/util/List;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;

    invoke-direct {p0, v0, p2, p1, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->i(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/signal/c/e;Z)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 12
    invoke-direct {p0, v0, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->b(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 13
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->h:Z

    .line 14
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;->End:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->i:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;

    .line 15
    :cond_4
    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;->c:Z

    if-eqz v0, :cond_5

    .line 16
    iget v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j:I

    add-int/2addr v0, v3

    iput v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j:I

    .line 17
    :cond_5
    iget v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j:I

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_7

    .line 18
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->h:Z

    .line 19
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;->End:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->i:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;

    goto :goto_1

    .line 20
    :cond_6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->b:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;

    if-nez v0, :cond_7

    .line 21
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->h:Z

    .line 22
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;->End:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->i:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;

    .line 23
    :cond_7
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;

    .line 24
    invoke-direct {p0, v2, p2, p1, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->i(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/signal/c/e;Z)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;

    move-result-object v2

    .line 25
    invoke-direct {p0, v2, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->b(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 26
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->h:Z

    .line 27
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;->End:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->i:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;

    goto :goto_2

    .line 28
    :cond_9
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->h:Z

    if-eqz p1, :cond_d

    .line 29
    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->g(Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;

    move-result-object p1

    return-object p1

    .line 30
    :cond_a
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->l:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    if-eqz v0, :cond_b

    .line 31
    invoke-virtual {v0, p1, p0, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->beforeStart(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 32
    :cond_b
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;

    invoke-direct {p0, v0, p2, p1, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->i(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/signal/c/e;Z)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;

    move-result-object p3

    if-eqz p3, :cond_c

    const/4 v2, 0x1

    .line 33
    :cond_c
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->g:Z

    if-eqz v2, :cond_d

    .line 34
    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;->Start:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->i:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;

    .line 35
    iget-wide p2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->k:J

    .line 36
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iput p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->o:F

    :cond_d
    return-object v1
.end method

.method public j()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->i:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;->End:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->m:Z

    return v0
.end method

.method public l()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->i:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;->Start:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m([ILcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;
    .locals 7

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget v2, p1, v1

    .line 2
    invoke-virtual {p2, v2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->n(I)Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 3
    iget v4, v3, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->deductScore:I

    if-lez v4, :cond_3

    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->judgeType:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;->needManual()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->judgeType:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;->needAuto()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4
    :cond_0
    iget-object v4, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-boolean v4, v4, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->h:Z

    if-eqz v4, :cond_2

    .line 5
    iget-object v4, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-boolean v4, v4, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->i:Z

    if-eqz v4, :cond_1

    .line 6
    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->desc:Ljava/lang/String;

    sget-object v5, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v4, v5, v2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->s(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;I)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->name:Ljava/lang/String;

    sget-object v5, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v4, v5, v2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->s(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;I)V

    .line 8
    :cond_2
    :goto_1
    new-instance v2, Lcn/mucang/android/jiakaoyi/engine/model/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-boolean v6, v6, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->h:Z

    invoke-direct {v2, v3, v4, v5, v6}, Lcn/mucang/android/jiakaoyi/engine/model/a;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Deduct;JZ)V

    .line 9
    invoke-virtual {p2, v2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->b(Lcn/mucang/android/jiakaoyi/engine/model/a;)V

    .line 10
    new-instance v3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b$a;

    invoke-direct {v3, p0, p2, v2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b$a;-><init>(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/model/a;)V

    invoke-static {v3}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public n()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;

    instance-of v1, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->needRepeatHandle()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public o(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->m:Z

    return-void
.end method

.method public p()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->k:J

    return-wide v0
.end method
