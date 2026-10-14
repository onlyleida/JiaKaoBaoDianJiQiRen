.class final Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->u(JLkotlin/jvm/b/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/b/p<",
        "Lkotlinx/coroutines/i0;",
        "Lkotlin/coroutines/c<",
        "-",
        "Lkotlin/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseDoubleLineLayout$saveCurrentLine$1"
    f = "BaseDoubleLineLayout.kt"
    l = {
        0xea
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $examSiteId:J

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;JLkotlin/jvm/b/l;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;",
            "J",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;

    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->$examSiteId:J

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->$callback:Lkotlin/jvm/b/l;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/c<",
            "*>;)",
            "Lkotlin/coroutines/c<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->$examSiteId:J

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->$callback:Lkotlin/jvm/b/l;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;JLkotlin/jvm/b/l;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/i0;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object p1

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v4

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-nez v4, :cond_2

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v4

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v6, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-static {v1, v3, v4}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->P(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    .line 6
    iput-object v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    .line 7
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_7

    .line 9
    :cond_3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->c()Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->j()Lcn/mucang/android/jiakaoyi/signal/i/b;

    move-result-object p1

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-static {p1, v1}, Lcn/mucang/android/jiakaoyi/k3collect/k0/o;->f(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v6, :cond_7

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    const/4 v4, 0x1

    :goto_1
    add-int/lit8 v7, v4, 0x1

    .line 13
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v9, v4, -0x1

    .line 14
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/high16 v10, 0x4039000000000000L    # 25.0

    .line 15
    invoke-static {v9, v8, v10, v11}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v8

    const-string v9, "lineAtRight.end"

    if-ne v4, v2, :cond_4

    .line 16
    iget-object v4, v8, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-string v10, "lineAtRight.start"

    invoke-static {v4, v10}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v4, v8, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v4, v9}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 18
    :cond_4
    iget-object v4, v8, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v4, v9}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    if-lt v7, v3, :cond_5

    goto :goto_3

    :cond_5
    move v4, v7

    goto :goto_1

    .line 19
    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v6, :cond_7

    .line 20
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object p1

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->c()Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->j()Lcn/mucang/android/jiakaoyi/signal/i/b;

    move-result-object v3

    invoke-static {v3, v1}, Lcn/mucang/android/jiakaoyi/k3collect/k0/o;->e(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    .line 21
    :cond_7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object p1

    .line 22
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v4

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    if-nez v4, :cond_8

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v4

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v6, :cond_8

    const/4 v4, 0x1

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :goto_4
    invoke-static {v1, v3, v4}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->P(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    .line 23
    iput-object v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    .line 24
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    if-eqz p1, :cond_c

    .line 25
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v6, :cond_c

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v6, :cond_c

    .line 26
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 27
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 28
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v4

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 29
    invoke-virtual {p1, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)D

    move-result-wide v4

    invoke-virtual {p1, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)D

    move-result-wide v6

    cmpl-double p1, v4, v6

    if-lez p1, :cond_9

    .line 30
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    const-string v1, "srcData.points2"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/s;->P(Ljava/util/List;)V

    .line 31
    :cond_9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    const-string v1, "srcData.id"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_a

    .line 32
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/db/a;->c()Lcn/mucang/android/jiakaoyi/k3collect/db/a;

    move-result-object p1

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/mucang/android/jiakaoyi/k3collect/db/a;->g(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;)V

    goto :goto_5

    .line 33
    :cond_a
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/db/a;->c()Lcn/mucang/android/jiakaoyi/k3collect/db/a;

    move-result-object p1

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->$examSiteId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcn/mucang/android/jiakaoyi/k3collect/db/a;->f(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;)V

    .line 34
    :goto_5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->e()Lcn/mucang/android/jiakaoyi/k3collect/g0/j;

    move-result-object p1

    if-nez p1, :cond_b

    goto :goto_6

    :cond_b
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    iput-object v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->j:Ljava/lang/Long;

    .line 35
    :goto_6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->h()Lcn/mucang/android/jiakaoyi/k3collect/k0/n;

    move-result-object v1

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v3

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->i()Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    move-result-object v4

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->f()Lcn/mucang/android/jiakaoyi/signal/i/b;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/k3collect/k0/n;->g(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/k3collect/g0/j;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->w(Lcn/mucang/android/jiakaoyi/k3collect/g0/j;)V

    .line 36
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object p1

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1$1;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->$callback:Lkotlin/jvm/b/l;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1$1;-><init>(Lkotlin/jvm/b/l;Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;Lkotlin/coroutines/c;)V

    iput v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_d

    return-object v0

    .line 37
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u7ebf1\u70b9\u4e2a\u6570 "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u7ebf2\u70b9\u4e2a\u6570 "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;->W()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 38
    :cond_d
    :goto_7
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
