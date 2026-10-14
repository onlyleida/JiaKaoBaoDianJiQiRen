.class final Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CenterCircleLayout$saveCurrentLine$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CenterCircleLayout$saveCurrentLine$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "cn.mucang.android.jiakaoyi.k3collect.collectlayouts.CenterCircleLayout$saveCurrentLine$1$1"
    f = "CenterCircleLayout.kt"
    l = {}
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

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CenterCircleLayout;


# direct methods
.method constructor <init>(Lkotlin/jvm/b/l;Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CenterCircleLayout;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;",
            "Lkotlin/v;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CenterCircleLayout;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CenterCircleLayout$saveCurrentLine$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CenterCircleLayout$saveCurrentLine$1$1;->$callback:Lkotlin/jvm/b/l;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CenterCircleLayout$saveCurrentLine$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CenterCircleLayout;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 2
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

    new-instance p1, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CenterCircleLayout$saveCurrentLine$1$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CenterCircleLayout$saveCurrentLine$1$1;->$callback:Lkotlin/jvm/b/l;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CenterCircleLayout$saveCurrentLine$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CenterCircleLayout;

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CenterCircleLayout$saveCurrentLine$1$1;-><init>(Lkotlin/jvm/b/l;Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CenterCircleLayout;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CenterCircleLayout$saveCurrentLine$1$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CenterCircleLayout$saveCurrentLine$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CenterCircleLayout$saveCurrentLine$1$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CenterCircleLayout$saveCurrentLine$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CenterCircleLayout$saveCurrentLine$1$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CenterCircleLayout$saveCurrentLine$1$1;->$callback:Lkotlin/jvm/b/l;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CenterCircleLayout$saveCurrentLine$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CenterCircleLayout;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CenterCircleLayout;->G(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CenterCircleLayout;)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->copy()Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;

    move-result-object v0

    const-string v1, "srcData.copy()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CenterCircleLayout$saveCurrentLine$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CenterCircleLayout;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CenterCircleLayout;->q()V

    .line 4
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
