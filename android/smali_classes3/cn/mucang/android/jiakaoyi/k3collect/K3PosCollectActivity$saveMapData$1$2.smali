.class final Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity$saveMapData$1$2"
    f = "K3PosCollectActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "Ljava/lang/Boolean;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $success:Z

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;ZLkotlin/jvm/b/l;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;",
            "Z",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$2;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$2;->$success:Z

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$2;->$callback:Lkotlin/jvm/b/l;

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

    new-instance p1, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$2;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$2;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$2;->$success:Z

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$2;->$callback:Lkotlin/jvm/b/l;

    invoke-direct {p1, v0, v1, v2, p2}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$2;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;ZLkotlin/jvm/b/l;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$2;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$2;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$2;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$2;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->x(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->dismiss()V

    .line 3
    :goto_0
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$2;->$success:Z

    if-nez p1, :cond_1

    const-string p1, "\u4fdd\u5b58\u5931\u8d25"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$2;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->Q(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Z)V

    .line 6
    :goto_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$2;->$callback:Lkotlin/jvm/b/l;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$2;->$success:Z

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :goto_2
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
