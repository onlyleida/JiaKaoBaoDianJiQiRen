.class public final Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity$a;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/jiakaoyi/uilib/ui/skin/f;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSkinItemBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00082\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity$SkinItemBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/jiakaoyi/uilib/ui/skin/BaseSkin;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSkinItemBinding;",
        "(Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;)V",
        "onBindViewHolder",
        "",
        "holder",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "item",
        "uilib_release"
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
.field final synthetic b:Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;


# direct methods
.method public constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity$a;->b:Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    return-void
.end method

.method public static synthetic n(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;Lcn/mucang/jiakaoyi/uilib/ui/skin/f;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity$a;->p(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;Lcn/mucang/jiakaoyi/uilib/ui/skin/f;Landroid/view/View;)V

    return-void
.end method

.method private static final p(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;Lcn/mucang/jiakaoyi/uilib/ui/skin/f;Landroid/view/View;)V
    .locals 0

    const-string p3, "$holder"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$item"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p3

    check-cast p3, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSkinItemBinding;

    iget-object p3, p3, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSkinItemBinding;->nameCb:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->isSelected()Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSkinItemBinding;

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSkinItemBinding;->nameCb:Landroid/widget/TextView;

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 3
    invoke-static {p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;->j(Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;Lcn/mucang/jiakaoyi/uilib/ui/skin/f;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Lcn/mucang/jiakaoyi/uilib/ui/skin/f;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity$a;->o(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/ui/skin/f;)V

    return-void
.end method

.method public o(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/ui/skin/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSkinItemBinding;",
            ">;",
            "Lcn/mucang/jiakaoyi/uilib/ui/skin/f;",
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

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSkinItemBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSkinItemBinding;->nameCb:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/ui/skin/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSkinItemBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSkinItemBinding;->nameCb:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/ui/skin/f;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSkinItemBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSkinItemBinding;->image:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/ui/skin/f;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSkinItemBinding;

    invoke-virtual {v0}, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSkinItemBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity$a;->b:Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/skin/c;

    invoke-direct {v2, p1, v1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/skin/c;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;Lcn/mucang/jiakaoyi/uilib/ui/skin/f;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
