.class public final Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/binder/f;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSafeMenuBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\u001e\u0010\n\u001a\u00020\u00062\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000c2\u0006\u0010\r\u001a\u00020\u0002H\u0016R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/binder/SafeMenuItemBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSafeMenuBinding;",
        "onClick",
        "Lkotlin/Function1;",
        "",
        "(Lkotlin/jvm/functions/Function1;)V",
        "getOnClick",
        "()Lkotlin/jvm/functions/Function1;",
        "onBindViewHolder",
        "holder",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "item",
        "teachbase_release"
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
.field private final b:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/binder/f;->b:Lkotlin/jvm/b/l;

    return-void
.end method

.method public static synthetic o(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/binder/f;Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/binder/f;->q(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/binder/f;Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;Landroid/view/View;)V

    return-void
.end method

.method private static final q(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/binder/f;Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/binder/f;->n()Lkotlin/jvm/b/l;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/binder/f;->p(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;)V

    return-void
.end method

.method public final n()Lkotlin/jvm/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/b/l<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/binder/f;->b:Lkotlin/jvm/b/l;

    return-object v0
.end method

.method public p(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSafeMenuBinding;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;",
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

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSafeMenuBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSafeMenuBinding;->menuTv:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSafeMenuBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSafeMenuBinding;->menuTv:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;->getSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSafeMenuBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSafeMenuBinding;->menuTv:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/binder/c;

    invoke-direct {v0, p0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/binder/c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/binder/f;Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
