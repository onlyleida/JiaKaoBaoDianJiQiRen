.class final Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$loadQrCode$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
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
    c = "cn.mucang.android.jiakaoyi.teachingk2.login.ui.AbnormalLoginDialog$loadQrCode$1"
    f = "AbnormalLoginDialog.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$loadQrCode$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$loadQrCode$1;->$activity:Landroid/app/Activity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

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

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$loadQrCode$1;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$loadQrCode$1;->$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$loadQrCode$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;

    invoke-direct {v0, v1, v2, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$loadQrCode$1;-><init>(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;Lkotlin/coroutines/c;)V

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$loadQrCode$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$loadQrCode$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$loadQrCode$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$loadQrCode$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$loadQrCode$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$loadQrCode$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$loadQrCode$1;->L$0:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/i0;

    .line 2
    sget-object p1, Lcn/mucang/android/account/m/b;->f:Lcn/mucang/android/account/m/b$a;

    invoke-virtual {p1}, Lcn/mucang/android/account/m/b$a;->a()Lcn/mucang/android/account/m/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/account/m/b;->b()Lcn/mucang/android/account/qrcode/model/QrCodeModel;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object p1, v1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/account/qrcode/model/QrCodeModel;->getProtocolUrl()Ljava/lang/String;

    move-result-object p1

    .line 4
    :goto_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$loadQrCode$1;->$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/mucang/android/jiakaoyi/teachbase/R$dimen;->rpx_380:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 5
    invoke-static {p1, v2}, Lcn/mucang/android/jiakaoyi/framework/i/a;->b(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_1

    .line 6
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    .line 7
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$loadQrCode$1$1;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$loadQrCode$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;

    invoke-direct {v4, v5, p1, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$loadQrCode$1$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;Landroid/graphics/Bitmap;Lkotlin/coroutines/c;)V

    const/4 p1, 0x2

    const/4 v5, 0x0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, p1

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 8
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
