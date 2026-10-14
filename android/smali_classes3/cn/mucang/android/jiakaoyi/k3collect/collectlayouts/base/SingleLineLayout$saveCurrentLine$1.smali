.class final Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->u(JLkotlin/jvm/b/l;)V
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
    c = "cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.SingleLineLayout$saveCurrentLine$1"
    f = "SingleLineLayout.kt"
    l = {
        0xa2
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

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;JLkotlin/jvm/b/l;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;",
            "J",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;

    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->$examSiteId:J

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->$callback:Lkotlin/jvm/b/l;

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

    new-instance p1, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->$examSiteId:J

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->$callback:Lkotlin/jvm/b/l;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;JLkotlin/jvm/b/l;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

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
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x2

    const/4 v5, 0x0

    if-le p1, v1, :cond_3

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->isCurve:Z

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object p1

    .line 8
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object v6

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineList:Ljava/util/List;

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;

    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->f()Lcn/mucang/android/jiakaoyi/signal/i/b;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/mucang/android/jiakaoyi/k3collect/l0/a;->c(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/i/b;)Ljava/util/List;

    move-result-object v6

    .line 9
    iput-object v6, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineList:Ljava/util/List;

    .line 10
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineList:Ljava/util/List;

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->f()Lcn/mucang/android/jiakaoyi/signal/i/b;

    move-result-object v6

    invoke-static {p1, v6}, Lcn/mucang/android/jiakaoyi/k3collect/l0/a;->a(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/i/b;)Ljava/util/List;

    move-result-object p1

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-static {v6, v7}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "\u538b\u7f29\u66f2\u7ebf\u7528\u65f6\uff1a"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "K3Collect"

    invoke-static {v4, v3}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_3

    .line 13
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object v3

    iput-object p1, v3, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineList:Ljava/util/List;

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 14
    :goto_0
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineList:Ljava/util/List;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v1, :cond_8

    .line 15
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object v3

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object v4

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineList:Ljava/util/List;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object v4

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v3, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->isCurve:Z

    .line 16
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object v1

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineList:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v3, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 17
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object v1

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineList:Ljava/util/List;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object v4

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v3, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 18
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    const-string v3, "srcData.id"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_5

    .line 19
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/db/a;->c()Lcn/mucang/android/jiakaoyi/k3collect/db/a;

    move-result-object v1

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/k3collect/db/a;->g(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;)V

    goto :goto_2

    .line 20
    :cond_5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/db/a;->c()Lcn/mucang/android/jiakaoyi/k3collect/db/a;

    move-result-object v1

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->$examSiteId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcn/mucang/android/jiakaoyi/k3collect/db/a;->f(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;)V

    .line 21
    :goto_2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->e()Lcn/mucang/android/jiakaoyi/k3collect/g0/j;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    iput-object v3, v1, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->j:Ljava/lang/Long;

    :goto_3
    if-eqz p1, :cond_7

    .line 22
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;

    .line 23
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->h()Lcn/mucang/android/jiakaoyi/k3collect/k0/n;

    move-result-object v1

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;->T()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object v3

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->i()Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    move-result-object v4

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->f()Lcn/mucang/android/jiakaoyi/signal/i/b;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/k3collect/k0/n;->g(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/k3collect/g0/j;

    move-result-object v1

    .line 24
    invoke-virtual {p1, v1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->w(Lcn/mucang/android/jiakaoyi/k3collect/g0/j;)V

    .line 25
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object p1

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1$1;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->$callback:Lkotlin/jvm/b/l;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1$1;-><init>(Lkotlin/jvm/b/l;Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;Lkotlin/coroutines/c;)V

    iput v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout$saveCurrentLine$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    :cond_8
    const-string p1, "\u6570\u7ec4\u4e0d\u8db3\u4e24\u4e2a\u70b9\uff0c\u65e0\u6cd5\u4fdd\u5b58"

    .line 26
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 27
    :cond_9
    :goto_4
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
