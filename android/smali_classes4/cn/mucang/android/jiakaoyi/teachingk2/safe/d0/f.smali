.class public Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/g;

.field private final c:Ljava/util/concurrent/ExecutorService;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;",
            ">;"
        }
    .end annotation
.end field

.field private final e:[Z

.field private f:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/g;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;->a:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/g;

    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;->c:Ljava/util/concurrent/ExecutorService;

    const/4 p2, 0x0

    .line 5
    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;->f:I

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;->d:Ljava/util/List;

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Z

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;->e:[Z

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;->d:Ljava/util/List;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;

    iget-object v2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->forwardPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 5

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;->f:I

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;->d:Ljava/util/List;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;

    .line 3
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->h(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;->e:[Z

    iget v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;->f:I

    aget-boolean v4, v1, v3

    if-nez v4, :cond_1

    .line 6
    aput-boolean v2, v1, v3

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/g;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-interface {v1, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/g;->a(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5df2\u7ecf\u89e6\u53d1\u5239\u8f66:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 9
    :cond_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/g;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;->a:Ljava/util/List;

    iget v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;->f:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-interface {v1, v3, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/g;->b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->e()V

    .line 11
    :cond_2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    iget p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;->f:I

    add-int/2addr p1, v2

    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;->f:I

    .line 13
    :cond_3
    iget p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;->f:I

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-le p1, v0, :cond_4

    .line 14
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/g;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/g;->onFinish()V

    :cond_4
    return-void
.end method

.method private synthetic b(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method


# virtual methods
.method public synthetic c(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;->b(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/b;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
