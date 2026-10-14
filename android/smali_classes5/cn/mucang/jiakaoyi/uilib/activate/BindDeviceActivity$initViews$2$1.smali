.class final Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$initViews$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$initViews$2;->invoke(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$initViews$2$1;->this$0:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$initViews$2$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 8

    .line 2
    new-instance v0, Lcn/mucang/android/account/ui/a;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$initViews$2$1;->this$0:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;

    invoke-direct {v0, v1}, Lcn/mucang/android/account/ui/a;-><init>(Landroid/content/Context;)V

    const-string v1, "\u7ed1\u5b9a\u4e2d.."

    .line 3
    invoke-virtual {v0, v1}, Lcn/mucang/android/account/ui/a;->b(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v2

    new-instance v5, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$initViews$2$1$1;

    const/4 v1, 0x0

    invoke-direct {v5, v0, v1}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$initViews$2$1$1;-><init>(Lcn/mucang/android/account/ui/a;Lkotlin/coroutines/c;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
