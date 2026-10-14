.class final Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$1;
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
    c = "cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity$saveMapData$1$1"
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

.field final synthetic $list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Ljava/util/List;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;",
            ">;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$1;->$list:Ljava/util/List;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$1;->$callback:Lkotlin/jvm/b/l;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method

.method public static synthetic d(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$1;->invokeSuspend$lambda-0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Ljava/util/List;Lkotlin/jvm/b/l;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$1;->invokeSuspend$lambda-1(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Ljava/util/List;Lkotlin/jvm/b/l;Landroid/view/View;)V

    return-void
.end method

.method private static final invokeSuspend$lambda-0(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private static final invokeSuspend$lambda-1(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Ljava/util/List;Lkotlin/jvm/b/l;Landroid/view/View;)V
    .locals 6

    .line 1
    new-instance p3, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-direct {p3, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p3}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->S(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    .line 2
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->x(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "\u6b63\u5728\u4fdd\u5b58\u5230\u7ebf\u4e0a"

    invoke-virtual {p3, v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    .line 3
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p3

    invoke-static {p3}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$1$2$1;

    const/4 p3, 0x0

    invoke-direct {v3, p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$1$2$1;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Ljava/util/List;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

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

    new-instance p1, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$1;->$list:Ljava/util/List;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$1;->$callback:Lkotlin/jvm/b/l;

    invoke-direct {p1, v0, v1, v2, p2}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$1;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Ljava/util/List;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->x(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->dismiss()V

    .line 3
    :goto_0
    new-instance p1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    new-instance v9, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    const/4 v2, 0x0

    .line 5
    sget-object v5, Lcn/mucang/android/jiakaoyi/k3collect/w;->a:Lcn/mucang/android/jiakaoyi/k3collect/w;

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$1;->$list:Ljava/util/List;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$1;->$callback:Lkotlin/jvm/b/l;

    new-instance v7, Lcn/mucang/android/jiakaoyi/k3collect/x;

    invoke-direct {v7, v0, v1, v3}, Lcn/mucang/android/jiakaoyi/k3collect/x;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Ljava/util/List;Lkotlin/jvm/b/l;)V

    const/4 v8, 0x0

    const-string v3, "\u68c0\u6d4b\u5230\u5f53\u524d\u4fdd\u5b58\u7684\u6570\u636e\u662f\u7a7a,\u5982\u679c\u4e0a\u4f20\u4f1a\u8986\u76d6\u7ebf\u4e0a\u5bfc\u81f4\u60a8\u7684\u5730\u56fe\u4e22\u5931,\u786e\u5b9a\u662f\u5426\u7ee7\u7eed\u4fdd\u5b58\u5417\uff1f"

    const-string v4, "\u53d6\u6d88\u4fdd\u5b58"

    const-string v6, "\u7ee7\u7eed\u4fdd\u5b58"

    move-object v1, v9

    .line 7
    invoke-direct/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    .line 8
    invoke-direct {p1, v0, v9}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    .line 9
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 10
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
