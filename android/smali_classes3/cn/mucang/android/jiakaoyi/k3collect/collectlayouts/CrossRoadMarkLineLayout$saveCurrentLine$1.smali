.class final Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout$saveCurrentLine$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout;->u(JLkotlin/jvm/b/l;)V
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
    c = "cn.mucang.android.jiakaoyi.k3collect.collectlayouts.CrossRoadMarkLineLayout$saveCurrentLine$1"
    f = "CrossRoadMarkLineLayout.kt"
    l = {
        0x90
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

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout;JLkotlin/jvm/b/l;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout;",
            "J",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout$saveCurrentLine$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout;

    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout$saveCurrentLine$1;->$examSiteId:J

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout$saveCurrentLine$1;->$callback:Lkotlin/jvm/b/l;

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

    new-instance p1, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout$saveCurrentLine$1;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout;

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout$saveCurrentLine$1;->$examSiteId:J

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout$saveCurrentLine$1;->$callback:Lkotlin/jvm/b/l;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout$saveCurrentLine$1;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout;JLkotlin/jvm/b/l;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout$saveCurrentLine$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout$saveCurrentLine$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout$saveCurrentLine$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout$saveCurrentLine$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout$saveCurrentLine$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

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
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout;->F(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout;)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout;->F(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout;)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    const-string v1, "srcData.id"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_2

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/db/a;->c()Lcn/mucang/android/jiakaoyi/k3collect/db/a;

    move-result-object p1

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout;->F(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout;)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/mucang/android/jiakaoyi/k3collect/db/a;->g(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/db/a;->c()Lcn/mucang/android/jiakaoyi/k3collect/db/a;

    move-result-object p1

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout$saveCurrentLine$1;->$examSiteId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout;

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout;->F(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout;)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcn/mucang/android/jiakaoyi/k3collect/db/a;->f(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;)V

    .line 7
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout;->E(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout;)Lcn/mucang/android/jiakaoyi/k3collect/g0/j;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout;->F(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout;)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    iput-object v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->j:Ljava/lang/Long;

    .line 8
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object p1

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout$saveCurrentLine$1$1;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout$saveCurrentLine$1;->$callback:Lkotlin/jvm/b/l;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout$saveCurrentLine$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout$saveCurrentLine$1$1;-><init>(Lkotlin/jvm/b/l;Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout;Lkotlin/coroutines/c;)V

    iput v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout$saveCurrentLine$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 9
    :cond_4
    :goto_2
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
