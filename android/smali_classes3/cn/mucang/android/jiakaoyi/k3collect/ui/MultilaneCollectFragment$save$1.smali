.class final Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment$save$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;->B()V
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
    c = "cn.mucang.android.jiakaoyi.k3collect.ui.MultilaneCollectFragment$save$1"
    f = "MultilaneCollectFragment.kt"
    l = {
        0x87
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $examSiteId:Ljava/lang/String;

.field final synthetic $listResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;",
            ">;",
            "Ljava/lang/String;",
            "Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment$save$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment$save$1;->$listResult:Ljava/util/List;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment$save$1;->$examSiteId:Ljava/lang/String;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment$save$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 3
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

    new-instance p1, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment$save$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment$save$1;->$listResult:Ljava/util/List;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment$save$1;->$examSiteId:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment$save$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;

    invoke-direct {p1, v0, v1, v2, p2}, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment$save$1;-><init>(Ljava/util/List;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment$save$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment$save$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment$save$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment$save$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment$save$1;->label:I

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
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment$save$1;->$listResult:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [J

    const/4 v1, 0x0

    .line 5
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment$save$1;->$listResult:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_4

    :goto_0
    add-int/lit8 v4, v1, 0x1

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/db/a;->c()Lcn/mucang/android/jiakaoyi/k3collect/db/a;

    move-result-object v5

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment$save$1;->$examSiteId:Ljava/lang/String;

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment$save$1;->$listResult:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;

    invoke-virtual {v5, v6, v7}, Lcn/mucang/android/jiakaoyi/k3collect/db/a;->f(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;)V

    .line 7
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment$save$1;->$listResult:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    const-string v6, "listResult[index].id"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_2

    .line 8
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment$save$1;->$listResult:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    aput-wide v5, p1, v1

    :cond_2
    if-le v4, v3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v4

    goto :goto_0

    :cond_4
    :goto_1
    const-string v1, "\u591a\u8f66\u9053\u91c7\u96c6\u5b8c\u6210"

    .line 9
    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment$save$1$1;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment$save$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;

    const/4 v5, 0x0

    invoke-direct {v3, p1, v4, v5}, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment$save$1$1;-><init>([JLcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;Lkotlin/coroutines/c;)V

    iput v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment$save$1;->label:I

    invoke-static {v1, v3, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 11
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
