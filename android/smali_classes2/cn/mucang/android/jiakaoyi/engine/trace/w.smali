.class public Lcn/mucang/android/jiakaoyi/engine/trace/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/concurrent/ExecutorService;

.field private static b:Lcn/mucang/android/jiakaoyi/engine/trace/storage/a;

.field private static volatile c:I

.field private static d:J

.field private static e:J

.field private static f:J

.field private static final g:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;

.field private static final h:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarModel;

.field private static final i:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;

.field private static final j:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceErrorModel;

.field private static final k:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBehaviorModel;

.field private static final l:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceExamShowModel;

.field private static final m:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;

.field private static final n:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;

.field private static final o:Lcn/mucang/android/jiakaoyi/engine/trace/y;

.field public static p:Landroidx/lifecycle/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/z<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;",
            ">;>;"
        }
    .end annotation
.end field

.field public static q:Landroidx/lifecycle/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/z<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static r:Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;

.field public static s:Landroidx/lifecycle/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/z<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static t:Landroidx/lifecycle/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/z<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static u:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final v:Landroidx/lifecycle/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/z<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final w:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

.field private static volatile x:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    .line 2
    sput v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->c:I

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->g:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarModel;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->h:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarModel;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->i:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceErrorModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceErrorModel;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->j:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceErrorModel;

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBehaviorModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBehaviorModel;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->k:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBehaviorModel;

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceExamShowModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceExamShowModel;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->l:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceExamShowModel;

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->m:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;

    .line 10
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->n:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;

    .line 11
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/trace/y;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/engine/trace/y;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->o:Lcn/mucang/android/jiakaoyi/engine/trace/y;

    .line 12
    new-instance v0, Landroidx/lifecycle/z;

    invoke-direct {v0}, Landroidx/lifecycle/z;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->p:Landroidx/lifecycle/z;

    .line 13
    new-instance v0, Landroidx/lifecycle/z;

    invoke-direct {v0}, Landroidx/lifecycle/z;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->q:Landroidx/lifecycle/z;

    .line 14
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->r:Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;

    .line 15
    new-instance v0, Landroidx/lifecycle/z;

    invoke-direct {v0}, Landroidx/lifecycle/z;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->s:Landroidx/lifecycle/z;

    .line 16
    new-instance v0, Landroidx/lifecycle/z;

    invoke-direct {v0}, Landroidx/lifecycle/z;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->t:Landroidx/lifecycle/z;

    .line 17
    new-instance v0, Landroidx/lifecycle/z;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Landroidx/lifecycle/z;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->v:Landroidx/lifecycle/z;

    .line 18
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/h;->a:Lcn/mucang/android/jiakaoyi/engine/trace/h;

    sput-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->w:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    return-void
.end method

.method static synthetic A(Ljava/util/List;)V
    .locals 2

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-static {p0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->Site:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->typeId:I

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->Y(ILjava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_1
    sget-object p0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->b:Lcn/mucang/android/jiakaoyi/engine/trace/storage/a;

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->Site:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->typeId:I

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/trace/storage/a;->j(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic B(Ljava/util/List;)V
    .locals 8

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->b:Lcn/mucang/android/jiakaoyi/engine/trace/storage/a;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->Deduct:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->typeId:I

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/trace/storage/a;->b(I)V

    if-eqz p0, :cond_1

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/engine/model/a;

    .line 5
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->Deduct:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->typeId:I

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/engine/model/a;->d:Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/engine/model/a;->b:J

    sget-wide v6, Lcn/mucang/android/jiakaoyi/engine/trace/w;->f:J

    invoke-static {v4, v5, v6, v7}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->W(JJ)F

    move-result v0

    sget-object v4, Lcn/mucang/android/jiakaoyi/engine/trace/w;->i:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;

    invoke-static {v2, v3, v0, v4}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;->from(Lcn/mucang/android/jiakaoyi/engine/model/Deduct;Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;FLcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;)Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->Y(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic C(Lcn/mucang/android/jiakaoyi/engine/model/Step;IZ)V
    .locals 5

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->Step:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->typeId:I

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/trace/w;->o:Lcn/mucang/android/jiakaoyi/engine/trace/y;

    sget-wide v2, Lcn/mucang/android/jiakaoyi/engine/trace/w;->d:J

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->V(J)F

    move-result v2

    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->o()Z

    move-result v3

    sget-object v4, Lcn/mucang/android/jiakaoyi/engine/trace/w;->m:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;

    invoke-static {p0, v2, p1, v3, v4}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->createSubStep(Lcn/mucang/android/jiakaoyi/engine/model/Step;FIZLcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;)Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;

    move-result-object p0

    invoke-virtual {v1, p0, p2}, Lcn/mucang/android/jiakaoyi/engine/trace/y;->a(Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;Z)Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->Y(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic D()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->r:Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->isRobotExercise()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->b:Lcn/mucang/android/jiakaoyi/engine/trace/storage/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/trace/storage/a;->f(Z)V

    :cond_0
    return-void
.end method

.method static synthetic E(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->r:Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->isCircleTrain()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->b:Lcn/mucang/android/jiakaoyi/engine/trace/storage/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/engine/trace/storage/a;->g(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/trace/storage/a;->h(Z)V

    .line 5
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/engine/trace/x;->j(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic F()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->u:Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic G()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->r:Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->isRobotExercise()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->r:Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->getType()I

    move-result v0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->b:Lcn/mucang/android/jiakaoyi/engine/trace/storage/a;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/trace/storage/a;->h(Z)V

    :cond_1
    return-void
.end method

.method static synthetic H(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->b:Lcn/mucang/android/jiakaoyi/engine/trace/storage/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/trace/storage/a;->i()V

    .line 3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/trace/upload/f;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/trace/w;->b:Lcn/mucang/android/jiakaoyi/engine/trace/storage/a;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/trace/storage/a;->f:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/upload/f;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/a;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/trace/w;->q:Landroidx/lifecycle/z;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/trace/w;->r:Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;

    invoke-direct {v0, p0, p1, v1, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/storage/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->b:Lcn/mucang/android/jiakaoyi/engine/trace/storage/a;

    .line 5
    sput-wide p2, Lcn/mucang/android/jiakaoyi/engine/trace/w;->e:J

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->f:J

    .line 7
    sput-wide p2, Lcn/mucang/android/jiakaoyi/engine/trace/w;->d:J

    .line 8
    sput-wide p2, Lcn/mucang/android/jiakaoyi/engine/trace/w;->x:J

    const/4 p0, 0x2

    .line 9
    sput p0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->c:I

    .line 10
    sget-object p0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    sget-object p1, Lcn/mucang/android/jiakaoyi/engine/trace/w;->w:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 11
    sget-object p0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->p:Landroidx/lifecycle/z;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->j(Ljava/util/List;)V

    .line 12
    sget-object p0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->p:Landroidx/lifecycle/z;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 13
    sget-object p0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->n:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;->carPoints:Ljava/util/List;

    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    sget-object p1, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->CarData:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->typeId:I

    invoke-static {p1, p0}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->Y(ILjava/lang/Object;)V

    .line 15
    :cond_1
    sget-object p0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->r:Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->posMapCode:Ljava/lang/String;

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->h(Ljava/lang/String;)V

    .line 16
    sget-object p0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->o:Lcn/mucang/android/jiakaoyi/engine/trace/y;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/engine/trace/y;->i()V

    return-void
.end method

.method static synthetic I(Lcn/mucang/android/jiakaoyi/engine/model/Step;Z)V
    .locals 6

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->Step:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->typeId:I

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/trace/w;->o:Lcn/mucang/android/jiakaoyi/engine/trace/y;

    sget-wide v2, Lcn/mucang/android/jiakaoyi/engine/trace/w;->d:J

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->V(J)F

    move-result v2

    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->o()Z

    move-result v3

    sget-object v4, Lcn/mucang/android/jiakaoyi/engine/trace/w;->m:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;

    const/4 v5, 0x1

    invoke-static {p0, v2, v5, v3, v4}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->createStep(Lcn/mucang/android/jiakaoyi/engine/model/Step;FZZLcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;)Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;

    move-result-object p0

    invoke-virtual {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/engine/trace/y;->e(Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;Z)Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->Y(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic J(ZZ)V
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/trace/w;->w:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->b:Lcn/mucang/android/jiakaoyi/engine/trace/storage/a;

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p0, :cond_2

    .line 4
    sget-object p0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->o:Lcn/mucang/android/jiakaoyi/engine/trace/y;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/engine/trace/y;->f()V

    .line 5
    :cond_2
    sget-object p0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->b:Lcn/mucang/android/jiakaoyi/engine/trace/storage/a;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/engine/trace/storage/a;->i()V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcn/mucang/android/jiakaoyi/engine/trace/w;->f:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long p0, v0, v2

    if-gez p0, :cond_3

    .line 7
    new-instance p0, Ljava/io/File;

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->b:Lcn/mucang/android/jiakaoyi/engine/trace/storage/a;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/a;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcn/mucang/android/core/utils/m;->e(Ljava/io/File;)Z

    goto :goto_0

    .line 8
    :cond_3
    new-instance p0, Ljava/lang/Thread;

    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/trace/upload/f;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/trace/w;->b:Lcn/mucang/android/jiakaoyi/engine/trace/storage/a;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/trace/storage/a;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/trace/upload/f;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :goto_0
    const/4 p0, 0x0

    .line 9
    sput p0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->c:I

    .line 10
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->m(Z)V

    const/4 p0, 0x0

    .line 11
    sput-object p0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->b:Lcn/mucang/android/jiakaoyi/engine/trace/storage/a;

    return-void
.end method

.method static synthetic K(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V
    .locals 6

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->Step:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->typeId:I

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/trace/w;->o:Lcn/mucang/android/jiakaoyi/engine/trace/y;

    sget-wide v2, Lcn/mucang/android/jiakaoyi/engine/trace/w;->d:J

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->V(J)F

    move-result v2

    const/4 v3, 0x0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->o()Z

    move-result v4

    sget-object v5, Lcn/mucang/android/jiakaoyi/engine/trace/w;->m:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;

    invoke-static {p0, v2, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->createStep(Lcn/mucang/android/jiakaoyi/engine/model/Step;FZZLcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;)Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcn/mucang/android/jiakaoyi/engine/trace/y;->g(Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;)Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;

    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->Y(ILjava/lang/Object;)V

    return-void
.end method

.method private static L(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 6

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    sput-wide v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->d:J

    .line 3
    sget-wide v2, Lcn/mucang/android/jiakaoyi/engine/trace/w;->x:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-lez v5, :cond_1

    .line 4
    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->S(Z)V

    return-void

    .line 5
    :cond_1
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-byte v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_3

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    :cond_2
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p0

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    double-to-float p0, v1

    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;F)V

    goto :goto_0

    .line 7
    :cond_3
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-byte v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    if-ne v0, v4, :cond_4

    .line 8
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->i(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static M()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->a:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/trace/s;->a:Lcn/mucang/android/jiakaoyi/engine/trace/s;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static N(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/trace/k;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/engine/trace/k;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static O()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/q;->a:Lcn/mucang/android/jiakaoyi/engine/trace/q;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->o:Lcn/mucang/android/jiakaoyi/engine/trace/y;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/trace/y;->c()V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->a:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/trace/n;->a:Lcn/mucang/android/jiakaoyi/engine/trace/n;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static P()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->o:Lcn/mucang/android/jiakaoyi/engine/trace/y;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/trace/y;->d()V

    return-void
.end method

.method public static declared-synchronized Q(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    const-class v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;

    monitor-enter v0

    .line 1
    :try_start_0
    sget v1, Lcn/mucang/android/jiakaoyi/engine/trace/w;->c:I

    if-nez v1, :cond_1

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/trace/w;->p:Landroidx/lifecycle/z;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/trace/w;->q:Landroidx/lifecycle/z;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 2
    sput v1, Lcn/mucang/android/jiakaoyi/engine/trace/w;->c:I

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/trace/w;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcn/mucang/android/jiakaoyi/engine/trace/l;

    invoke-direct {v2, p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/trace/l;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static R(Lcn/mucang/android/jiakaoyi/engine/model/Step;Z)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/trace/e;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/engine/trace/e;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static S(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->T(ZZ)V

    return-void
.end method

.method public static T(ZZ)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/trace/u;

    invoke-direct {v1, p1, p0}, Lcn/mucang/android/jiakaoyi/engine/trace/u;-><init>(ZZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static U(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/trace/m;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/engine/trace/m;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static V(J)F
    .locals 2

    .line 1
    sget-wide v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->e:J

    sub-long/2addr p0, v0

    long-to-float p0, p0

    const p1, 0x3a83126f    # 0.001f

    mul-float p0, p0, p1

    const/high16 p1, 0x41200000    # 10.0f

    mul-float p0, p0, p1

    float-to-int p0, p0

    int-to-float p0, p0

    div-float/2addr p0, p1

    return p0
.end method

.method public static W(JJ)F
    .locals 0

    sub-long/2addr p0, p2

    long-to-float p0, p0

    const p1, 0x3a83126f    # 0.001f

    mul-float p0, p0, p1

    const/high16 p1, 0x41200000    # 10.0f

    mul-float p0, p0, p1

    float-to-int p0, p0

    int-to-float p0, p0

    div-float/2addr p0, p1

    return p0
.end method

.method public static X(J)V
    .locals 2

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    sput-wide p0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->x:J

    :cond_0
    return-void
.end method

.method public static Y(ILjava/lang/Object;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->b:Lcn/mucang/android/jiakaoyi/engine/trace/storage/a;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcn/mucang/android/jiakaoyi/engine/trace/storage/a;->k(ILjava/lang/String;)V

    .line 3
    sget-object p0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->r:Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->isRobotExam()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    instance-of p0, p1, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 5
    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/engine/trace/storage/a;->h(Z)V

    .line 6
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 7
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/engine/trace/x;->a(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static a(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6dfb\u52a0\u7ec3\u8f66\u884c\u4e3a:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/trace/j;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/engine/trace/j;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/trace/o;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/engine/trace/o;-><init>(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;F)V
    .locals 2

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/trace/t;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/engine/trace/t;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;F)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static d(Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/trace/r;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/engine/trace/r;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static e(Lcn/mucang/android/jiakaoyi/engine/model/a;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/trace/a;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/engine/trace/a;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static f(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/trace/b;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/engine/trace/b;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static g(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/trace/i;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/engine/trace/i;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static h(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/trace/c;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/engine/trace/c;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static i(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 2

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/trace/g;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/engine/trace/g;-><init>(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static j(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/trace/d;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/engine/trace/d;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static k(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/model/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/trace/p;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/engine/trace/p;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static l(Lcn/mucang/android/jiakaoyi/engine/model/Step;IZ)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/trace/f;

    invoke-direct {v1, p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/trace/f;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static m(Z)V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->g:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;->clear()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->h:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarModel;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarModel;->clear()V

    if-eqz p0, :cond_0

    .line 3
    sget-object p0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->n:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;->clear()V

    :cond_0
    const/4 p0, 0x1

    .line 4
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/engine/trace/x;->c(Z)V

    return-void
.end method

.method public static n(D)F
    .locals 2

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double p0, p0, v0

    double-to-int p0, p0

    int-to-float p0, p0

    const/high16 p1, 0x41200000    # 10.0f

    div-float/2addr p0, p1

    return p0
.end method

.method public static o()Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->v:Landroidx/lifecycle/z;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static p()Z
    .locals 2

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic q(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->L(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method

.method static synthetic r(I)V
    .locals 4

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6dfb\u52a0\u7ec3\u8f66\u884c\u4e3a:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " \u5931\u8d25"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->Behavior:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->typeId:I

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/trace/w;->k:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBehaviorModel;

    sget-wide v2, Lcn/mucang/android/jiakaoyi/engine/trace/w;->d:J

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->V(J)F

    move-result v2

    invoke-virtual {v1, p0, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBehaviorModel;->set(IF)Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBehaviorModel;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->Y(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic s(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)V
    .locals 2

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->CarData:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->typeId:I

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/trace/w;->n:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;

    invoke-virtual {v1, p0}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;->set(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->Y(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;F)V
    .locals 4

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->Car:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->typeId:I

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/trace/w;->h:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarModel;

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/engine/trace/XYPos;->from(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/engine/trace/XYPos;

    move-result-object p0

    float-to-double v2, p1

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->n(D)F

    move-result p1

    sget-wide v2, Lcn/mucang/android/jiakaoyi/engine/trace/w;->d:J

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->V(J)F

    move-result v2

    invoke-virtual {v1, p0, p1, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarModel;->set(Lcn/mucang/android/jiakaoyi/engine/trace/XYPos;FF)Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarModel;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->Y(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic u(Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 4

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->Deduct:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->typeId:I

    const/4 v1, 0x0

    sget-wide v2, Lcn/mucang/android/jiakaoyi/engine/trace/w;->d:J

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->V(J)F

    move-result v2

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/trace/w;->i:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;

    invoke-static {p0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;->from(Lcn/mucang/android/jiakaoyi/engine/model/Deduct;Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;FLcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;)Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->Y(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic v(Lcn/mucang/android/jiakaoyi/engine/model/a;)V
    .locals 4

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->Deduct:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->typeId:I

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/engine/model/a;->d:Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;

    sget-wide v2, Lcn/mucang/android/jiakaoyi/engine/trace/w;->d:J

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->V(J)F

    move-result v2

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/trace/w;->i:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;

    invoke-static {v1, p0, v2, v3}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;->from(Lcn/mucang/android/jiakaoyi/engine/model/Deduct;Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;FLcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;)Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->Y(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic w(Ljava/lang/String;I)V
    .locals 4

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->Error:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->typeId:I

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/trace/w;->j:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceErrorModel;

    sget-wide v2, Lcn/mucang/android/jiakaoyi/engine/trace/w;->d:J

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->V(J)F

    move-result v2

    invoke-virtual {v1, p0, p1, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceErrorModel;->set(Ljava/lang/String;IF)Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceErrorModel;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->Y(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic x(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->Exam:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->typeId:I

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/trace/w;->l:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceExamShowModel;

    sget-wide v2, Lcn/mucang/android/jiakaoyi/engine/trace/w;->d:J

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->V(J)F

    move-result v2

    invoke-virtual {v1, p0, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceExamShowModel;->set(Ljava/lang/String;F)Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceExamShowModel;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->Y(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic y(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/c;->b()Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getCarCode()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->ExtraInfo:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    iget v2, v1, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->typeId:I

    new-instance v3, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceExtraModel;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceExtraModel;-><init>()V

    invoke-virtual {v3, v0, p0}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceExtraModel;->set(ILjava/lang/String;)Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceExtraModel;

    move-result-object p0

    invoke-static {v2, p0}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->Y(ILjava/lang/Object;)V

    .line 5
    sget-object p0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->b:Lcn/mucang/android/jiakaoyi/engine/trace/storage/a;

    iget v0, v1, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->typeId:I

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/trace/storage/a;->j(I)V

    return-void
.end method

.method static synthetic z(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 3

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->Signal:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->typeId:I

    sget-wide v1, Lcn/mucang/android/jiakaoyi/engine/trace/w;->d:J

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->V(J)F

    move-result v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/trace/w;->g:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;

    invoke-static {p0, v1, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;->from(Lcn/mucang/android/jiakaoyi/signal/c/e;FLcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;)Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->Y(ILjava/lang/Object;)V

    return-void
.end method
