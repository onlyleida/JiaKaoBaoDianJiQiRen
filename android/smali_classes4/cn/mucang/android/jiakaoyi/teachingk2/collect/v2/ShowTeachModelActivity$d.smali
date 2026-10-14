.class public final Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity$d;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemShowTeachModelBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00082\u0006\u0010\t\u001a\u00020\u0002H\u0017\u00a8\u0006\n"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity$ShowTeachModelItem;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemShowTeachModelBinding;",
        "(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity;)V",
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
.field final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity$d;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    return-void
.end method

.method public static synthetic n(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity$d;->p(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Landroid/view/View;)V

    return-void
.end method

.method private static final p(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity;->l(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity$d;->o(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    return-void
.end method

.method public o(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemShowTeachModelBinding;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
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

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemShowTeachModelBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemShowTeachModelBinding;->modelTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->order:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getPointTypeDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->findText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemShowTeachModelBinding;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemShowTeachModelBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity$d;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity;->k(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v1

    if-ne p2, v1, :cond_0

    const v1, -0xbcb7b1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemShowTeachModelBinding;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemShowTeachModelBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity$d;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/i1;

    invoke-direct {v1, v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/i1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
