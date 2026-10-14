.class public final Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$SettingItemBinder;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SettingItemBinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemDriveSettingBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00082\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$SettingItemBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$DriveSettingItem;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemDriveSettingBinding;",
        "(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity;)V",
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


# instance fields
.field final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$SettingItemBinder;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    return-void
.end method

.method public static synthetic n(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity;Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$SettingItemBinder;->p(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity;Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroid/view/View;)V

    return-void
.end method

.method private static final p(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity;Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroid/view/View;)V
    .locals 1

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$item"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$holder"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;->b()Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    move-result-object p1

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemDriveSettingBinding;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemDriveSettingBinding;->checkCb:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->isSelected()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$SettingItemBinder$onBindViewHolder$1$1$1;

    invoke-direct {v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$SettingItemBinder$onBindViewHolder$1$1$1;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/h;)V

    invoke-static {p0, p1, p3, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->c(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Lkotlin/jvm/b/a;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$SettingItemBinder;->o(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;)V

    return-void
.end method

.method public o(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemDriveSettingBinding;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;",
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

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemDriveSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemDriveSettingBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemDriveSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemDriveSettingBinding;->titleTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$SettingItemBinder;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemDriveSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemDriveSettingBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 4
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;->b()Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$SettingItemBinder;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity;

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemDriveSettingBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemDriveSettingBinding;->checkCb:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemDriveSettingBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemDriveSettingBinding;->checkCb:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;->b()Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 7
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemDriveSettingBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemDriveSettingBinding;->checkCb:Landroid/widget/ImageView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/d;

    invoke-direct {v2, v0, p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity;Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$b;Lcn/mucang/android/jiakaoyi/framework/base/h;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    :goto_0
    if-nez p2, :cond_1

    .line 9
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemDriveSettingBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemDriveSettingBinding;->checkCb:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method
