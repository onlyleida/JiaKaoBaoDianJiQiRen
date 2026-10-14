.class final Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$loadBindInfo$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$loadBindInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "cn.mucang.jiakaoyi.uilib.activate.BindDeviceActivity$loadBindInfo$1$1"
    f = "BindDeviceActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $bitmap:Landroid/graphics/Bitmap;

.field label:I

.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;Landroid/graphics/Bitmap;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$loadBindInfo$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$loadBindInfo$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$loadBindInfo$1$1;->$bitmap:Landroid/graphics/Bitmap;

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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$loadBindInfo$1$1;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$loadBindInfo$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$loadBindInfo$1$1;->$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$loadBindInfo$1$1;-><init>(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;Landroid/graphics/Bitmap;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$loadBindInfo$1$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$loadBindInfo$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$loadBindInfo$1$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$loadBindInfo$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$loadBindInfo$1$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$loadBindInfo$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->h(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;)Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBindDeviceBinding;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "viewBinding"

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBindDeviceBinding;->iconQr:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$loadBindInfo$1$1;->$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$loadBindInfo$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->h(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;)Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBindDeviceBinding;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBindDeviceBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p1}, Lcn/mucang/android/core/widget/StateLayout;->c()V

    .line 4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$loadBindInfo$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->l(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;)V

    .line 5
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    .line 6
    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
