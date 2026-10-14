.class public final Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow$setupView$1$1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow$setupView$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/d<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028\u0000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0006\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "emit",
        "",
        "value",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;


# direct methods
.method public constructor <init>(Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow$setupView$1$1$a;->a:Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_4

    .line 2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow$setupView$1$1$a;->a:Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->a(Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;)Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;

    move-result-object p1

    if-nez p1, :cond_0

    move-object p1, p2

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;->tvTime:Landroid/widget/TextView;

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "\u975e\u8ba1\u65f6\u5b66\u5458"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :goto_1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow$setupView$1$1$a;->a:Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->a(Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;)Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p1, Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;->llDetail:Landroid/widget/LinearLayout;

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    sget p2, Lcn/mucang/jiakaoyi/sundial/R$drawable;->shape_sundial_float_w_red:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    :goto_2
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object p1

    if-ne p2, p1, :cond_9

    return-object p2

    .line 4
    :cond_4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow$setupView$1$1$a;->a:Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->a(Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;)Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;

    move-result-object p1

    if-nez p1, :cond_5

    move-object p1, p2

    goto :goto_3

    :cond_5
    iget-object p1, p1, Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;->tvTime:Landroid/widget/TextView;

    :goto_3
    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    const-string v0, "\u7ec3\u8f66\u8ba1\u65f6"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :goto_4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow$setupView$1$1$a;->a:Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->a(Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;)Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_5

    :cond_7
    iget-object p1, p1, Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;->llDetail:Landroid/widget/LinearLayout;

    if-nez p1, :cond_8

    goto :goto_5

    :cond_8
    sget p2, Lcn/mucang/jiakaoyi/sundial/R$drawable;->shape_sundial_float_w:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    :goto_5
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object p1

    if-ne p2, p1, :cond_9

    return-object p2

    .line 6
    :cond_9
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
