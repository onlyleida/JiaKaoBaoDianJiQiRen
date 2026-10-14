.class public final Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity$a;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModel;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemAcceptanceBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00082\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity$AcceptanceItemBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModel;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemAcceptanceBinding;",
        "(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity;)V",
        "onBindViewHolder",
        "",
        "holder",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "item",
        "TeachingK2_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    return-void
.end method

.method public static synthetic n(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModel;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity$a;->p(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModel;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity;Landroid/view/View;)V

    return-void
.end method

.method private static final p(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModel;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity;Landroid/view/View;)V
    .locals 3

    const-string v0, "$item"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;->f:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity$b;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "it.context"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule$a;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModel;->getType()I

    move-result p0

    invoke-virtual {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule$a;->a(I)Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;

    move-result-object p0

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity;->j(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity;)J

    move-result-wide v1

    invoke-virtual {v0, p2, p0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity$b;->a(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;J)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModel;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity$a;->o(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModel;)V

    return-void
.end method

.method public o(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModel;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemAcceptanceBinding;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModel;",
            ")V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemAcceptanceBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemAcceptanceBinding;->btnTv:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemAcceptanceBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemAcceptanceBinding;->btnTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/m;

    invoke-direct {v2, p2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/m;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModel;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModel;->getLastSubmitTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemAcceptanceBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemAcceptanceBinding;->timeTv:Landroid/widget/TextView;

    const-string v1, "\u4e00\u4e00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemAcceptanceBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemAcceptanceBinding;->timeTv:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModel;->getLastSubmitTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/y;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :goto_0
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModel;->getStatus()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    .line 7
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemAcceptanceBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemAcceptanceBinding;->statusTv:Landroid/widget/TextView;

    const-string v0, "\u672a\u9a8c\u6536"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemAcceptanceBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemAcceptanceBinding;->statusTv:Landroid/widget/TextView;

    const-string p2, "#707C8C"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemAcceptanceBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemAcceptanceBinding;->statusTv:Landroid/widget/TextView;

    const-string v0, "\u9a8c\u6536\u672a\u901a\u8fc7"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemAcceptanceBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemAcceptanceBinding;->statusTv:Landroid/widget/TextView;

    const-string p2, "#FF4D4D"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemAcceptanceBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemAcceptanceBinding;->statusTv:Landroid/widget/TextView;

    const-string v0, "\u9a8c\u6536\u901a\u8fc7"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemAcceptanceBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemAcceptanceBinding;->statusTv:Landroid/widget/TextView;

    const-string p2, "#02C8B7"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-void
.end method
