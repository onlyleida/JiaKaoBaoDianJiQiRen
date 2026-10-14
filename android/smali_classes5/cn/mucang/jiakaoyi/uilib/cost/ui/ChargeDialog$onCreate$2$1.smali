.class final Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$onCreate$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$onCreate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "cn.mucang.jiakaoyi.uilib.cost.ui.ChargeDialog$onCreate$2$1"
    f = "ChargeDialog.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $createQRImage:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $viewBinding:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogChargeBinding;

.field label:I


# direct methods
.method constructor <init>(Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogChargeBinding;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogChargeBinding;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$onCreate$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$onCreate$2$1;->$viewBinding:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogChargeBinding;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$onCreate$2$1;->$createQRImage:Lkotlin/jvm/internal/Ref$ObjectRef;

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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$onCreate$2$1;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$onCreate$2$1;->$viewBinding:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogChargeBinding;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$onCreate$2$1;->$createQRImage:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$onCreate$2$1;-><init>(Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogChargeBinding;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$onCreate$2$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$onCreate$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$onCreate$2$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$onCreate$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$onCreate$2$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$onCreate$2$1;->$viewBinding:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogChargeBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogChargeBinding;->progress:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$onCreate$2$1;->$createQRImage:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$onCreate$2$1;->$viewBinding:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogChargeBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogChargeBinding;->tvError:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$onCreate$2$1;->$viewBinding:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogChargeBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogChargeBinding;->tvError:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$onCreate$2$1;->$viewBinding:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogChargeBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogChargeBinding;->imgQrCode:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$onCreate$2$1;->$createQRImage:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 7
    :goto_0
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
