.class final Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow$setupView$1$2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow$setupView$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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
.field final synthetic a:Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;

.field final synthetic b:Lcn/mucang/jiakaoyi/sundial/client/model/LeaningTime;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;Lcn/mucang/jiakaoyi/sundial/client/model/LeaningTime;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow$setupView$1$2$a;->a:Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow$setupView$1$2$a;->b:Lcn/mucang/jiakaoyi/sundial/client/model/LeaningTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow$setupView$1$2$a;->a:Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->a(Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;)Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;->llDetail:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget v1, Lcn/mucang/jiakaoyi/sundial/R$drawable;->shape_sundial_float_w:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 2
    :goto_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow$setupView$1$2$a;->a:Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->a(Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;)Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;->tvTime:Landroid/widget/TextView;

    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow$setupView$1$2$a;->b:Lcn/mucang/jiakaoyi/sundial/client/model/LeaningTime;

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/sundial/client/model/LeaningTime;->isLearning()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 3
    :goto_2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow$setupView$1$2$a;->a:Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->a(Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;)Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    iget-object v1, v0, Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;->tvTime:Landroid/widget/TextView;

    :goto_3
    if-nez v1, :cond_5

    goto :goto_6

    :cond_5
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow$setupView$1$2$a;->b:Lcn/mucang/jiakaoyi/sundial/client/model/LeaningTime;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/sundial/client/model/LeaningTime;->isLearning()Z

    move-result v0

    const-string v2, "\u7ec3\u8f66\u8ba1\u65f6"

    if-eqz v0, :cond_6

    .line 4
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow$setupView$1$2$a;->b:Lcn/mucang/jiakaoyi/sundial/client/model/LeaningTime;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/sundial/client/model/LeaningTime;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_9

    .line 5
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow$setupView$1$2$a;->a:Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow$setupView$1$2$a;->b:Lcn/mucang/jiakaoyi/sundial/client/model/LeaningTime;

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/sundial/client/model/LeaningTime;->getTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->d(Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;J)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 6
    :cond_6
    sget-object v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->a:Lcn/mucang/jiakaoyi/sundial/client/SundialClient;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->A()Lkotlinx/coroutines/flow/b2;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/b2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    .line 7
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow$setupView$1$2$a;->a:Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->a(Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;)Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    iget-object v0, v0, Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;->llDetail:Landroid/widget/LinearLayout;

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    sget v2, Lcn/mucang/jiakaoyi/sundial/R$drawable;->shape_sundial_float_w_red:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_4
    const-string v2, "\u975e\u8ba1\u65f6\u5b66\u5458"

    .line 8
    :cond_9
    :goto_5
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    return-void
.end method
