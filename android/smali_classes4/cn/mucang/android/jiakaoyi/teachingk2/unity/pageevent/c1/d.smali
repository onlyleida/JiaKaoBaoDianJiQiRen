.class public Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private b:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:I

.field private f:J

.field private g:J

.field private final h:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/engine/i/f/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/a;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->a:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->c:I

    .line 5
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->d:I

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->h:Landroidx/lifecycle/a0;

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->e:I

    return p1
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->g:J

    return-wide p1
.end method

.method private c()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->e:I

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SuiDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic d()V
    .locals 1

    const-string v0, "\u91cd\u8fde\u670d\u52a1\u5668\u8fde\u63a5"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->b()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->H()V

    return-void
.end method


# virtual methods
.method public e(Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 3
    const-class p1, Lcn/mucang/android/jiakaoyi/engine/i/f/a;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->h:Landroidx/lifecycle/a0;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 2
    const-class v0, Lcn/mucang/android/jiakaoyi/engine/i/f/a;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->h:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    return-void
.end method

.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 4
    :cond_1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->f:J

    .line 6
    :cond_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->f:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x15f90

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-gez v5, :cond_3

    .line 7
    iput v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->c:I

    return-void

    .line 8
    :cond_3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_9

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    if-ne v0, v2, :cond_4

    goto/16 :goto_1

    .line 9
    :cond_4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->c()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->c()Z

    move-result v0

    if-nez v0, :cond_8

    .line 10
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->d:I

    add-int/2addr v0, v2

    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->d:I

    .line 11
    iput v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    .line 12
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->n:Ljava/util/List;

    .line 13
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/AreaModel;

    .line 15
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/AreaModel;->pointList:Ljava/util/List;

    invoke-static {v3, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v4, 0x1

    :cond_6
    const/4 p1, 0x0

    if-eqz v4, :cond_7

    .line 16
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->c()Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;

    move-result-object v0

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_gps_signal_blocking:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;->Low:Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;

    invoke-virtual {v0, v1, p1, v2}, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->j(Ljava/lang/String;Ljava/lang/Runnable;Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;)Z

    goto :goto_0

    .line 17
    :cond_7
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->c()Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;

    move-result-object v0

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_key564:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;->Low:Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;

    invoke-virtual {v0, v1, p1, v2}, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->j(Ljava/lang/String;Ljava/lang/Runnable;Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;)Z

    .line 18
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Gps\u4fe1\u53f7\u53d8\u62105\uff0c\u8ba9\u5ba2\u6237\u68c0\u67e5\u5929\u7ebf\u662f\u5426\u88ab\u906e\u6321\uff0c\u5728GPS\u906e\u6321\u533a\u57df:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 19
    :cond_8
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_c

    .line 20
    iput v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->c:I

    .line 21
    iput v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->d:I

    .line 22
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->c()Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->b()V

    goto/16 :goto_2

    .line 23
    :cond_9
    :goto_1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->c:I

    add-int/2addr v0, v2

    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->c:I

    .line 24
    iput v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->d:I

    .line 25
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->c()Z

    move-result v0

    const/16 v1, 0x32

    const-string v3, "Gps\u4fe1\u53f7\u53d8\u6210"

    if-eqz v0, :cond_a

    .line 26
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->c:I

    rem-int/2addr v0, v1

    if-ne v0, v2, :cond_c

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",\u91cd\u8bd5 , errorCount="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->c:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 28
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 29
    :cond_a
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->c:I

    if-ne v0, v1, :cond_b

    .line 30
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->c()Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;

    move-result-object v0

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_gps_signal_unstable:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->a:Ljava/lang/Runnable;

    sget-object v4, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;->Low:Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;

    invoke-virtual {v0, v1, v2, v4}, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->j(Ljava/lang/String;Ljava/lang/Runnable;Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;)Z

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",\u5f39\u51fa\u91cd\u8bd5\u5f39\u7a97"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_b
    const/4 v1, 0x6

    if-ne v0, v1, :cond_c

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",\u91cd\u8bd5"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 33
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_c
    :goto_2
    return-void
.end method
