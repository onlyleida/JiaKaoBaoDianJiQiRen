.class public final Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/binder/h;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSafeSwitchBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00082\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/binder/SafeSwitchItemBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSafeSwitchBinding;",
        "()V",
        "onBindViewHolder",
        "",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    return-void
.end method

.method public static synthetic n(Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/binder/h;->p(Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroid/view/View;)V

    return-void
.end method

.method private static final p(Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroid/view/View;)V
    .locals 0

    const-string p2, "$item"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;->getOnClick()Lkotlin/jvm/b/l;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSafeSwitchBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSafeSwitchBinding;->checkBox:Landroid/widget/ImageView;

    const-string p2, "holder.viewBinding.checkBox"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/binder/h;->o(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;)V

    return-void
.end method

.method public o(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSafeSwitchBinding;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;",
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

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSafeSwitchBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSafeSwitchBinding;->text:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSafeSwitchBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSafeSwitchBinding;->checkBox:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSafeSwitchBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSafeSwitchBinding;->checkBox:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/binder/d;

    invoke-direct {v1, p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/binder/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;Lcn/mucang/android/jiakaoyi/framework/base/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSafeSwitchBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSafeSwitchBinding;->clLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeVisibleModel;->getVisible()Ljava/lang/Boolean;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
