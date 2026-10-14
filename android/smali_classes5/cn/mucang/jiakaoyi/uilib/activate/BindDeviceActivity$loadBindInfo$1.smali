.class final Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$loadBindInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->z()V
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
    c = "cn.mucang.jiakaoyi.uilib.activate.BindDeviceActivity$loadBindInfo$1"
    f = "BindDeviceActivity.kt"
    l = {
        0x5f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $bindDeviceUrl:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$loadBindInfo$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$loadBindInfo$1;->$bindDeviceUrl:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$loadBindInfo$1;->this$0:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;

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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$loadBindInfo$1;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$loadBindInfo$1;->$bindDeviceUrl:Ljava/lang/String;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$loadBindInfo$1;->this$0:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$loadBindInfo$1;-><init>(Ljava/lang/String;Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$loadBindInfo$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$loadBindInfo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$loadBindInfo$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$loadBindInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$loadBindInfo$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto :goto_0

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
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$loadBindInfo$1;->$bindDeviceUrl:Ljava/lang/String;

    const/high16 v1, 0x43700000    # 240.0f

    .line 5
    invoke-static {v1}, Lcn/mucang/android/core/utils/s0;->a(F)I

    move-result v1

    .line 6
    invoke-static {p1, v1}, Lcn/mucang/android/jiakaoyi/framework/i/a;->b(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 7
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object v1

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$loadBindInfo$1$1;

    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$loadBindInfo$1;->this$0:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;

    const/4 v5, 0x0

    invoke-direct {v3, v4, p1, v5}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$loadBindInfo$1$1;-><init>(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;Landroid/graphics/Bitmap;Lkotlin/coroutines/c;)V

    iput v2, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$loadBindInfo$1;->label:I

    invoke-static {v1, v3, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 8
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
