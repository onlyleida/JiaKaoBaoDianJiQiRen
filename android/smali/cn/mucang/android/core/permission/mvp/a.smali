.class public final Lcn/mucang/android/core/permission/mvp/a;
.super Lcn/mucang/android/ui/framework/mvp/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/ui/framework/mvp/a<",
        "Lcn/mucang/android/core/permission/mvp/PermissionGuideItemView;",
        "Lcn/mucang/android/core/permission/mvp/PermissionItemModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0003H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcn/mucang/android/core/permission/mvp/PermissionGuidePresenter;",
        "Lcn/mucang/android/ui/framework/mvp/BasePresenter;",
        "Lcn/mucang/android/core/permission/mvp/PermissionGuideItemView;",
        "Lcn/mucang/android/core/permission/mvp/PermissionItemModel;",
        "view",
        "(Lcn/mucang/android/core/permission/mvp/PermissionGuideItemView;)V",
        "bind",
        "",
        "model",
        "core-lib_release"
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
.method public constructor <init>(Lcn/mucang/android/core/permission/mvp/PermissionGuideItemView;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/ui/framework/mvp/a;-><init>(Lcn/mucang/android/ui/framework/mvp/b;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcn/mucang/android/ui/framework/mvp/BaseModel;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/core/permission/mvp/PermissionItemModel;

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/permission/mvp/a;->h(Lcn/mucang/android/core/permission/mvp/PermissionItemModel;)V

    return-void
.end method

.method public h(Lcn/mucang/android/core/permission/mvp/PermissionItemModel;)V
    .locals 2

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v0, Lcn/mucang/android/core/permission/mvp/PermissionGuideItemView;

    invoke-virtual {v0}, Lcn/mucang/android/core/permission/mvp/PermissionGuideItemView;->getPermissionItemDesc()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcn/mucang/android/core/permission/mvp/PermissionItemModel;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v0, Lcn/mucang/android/core/permission/mvp/PermissionGuideItemView;

    invoke-virtual {v0}, Lcn/mucang/android/core/permission/mvp/PermissionGuideItemView;->getPermissionItemName()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcn/mucang/android/core/permission/mvp/PermissionItemModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/core/permission/mvp/PermissionItemModel;->getImg()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v0, Lcn/mucang/android/core/permission/mvp/PermissionGuideItemView;

    invoke-virtual {v0}, Lcn/mucang/android/core/permission/mvp/PermissionGuideItemView;->getPermissionItemImg()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v0, Lcn/mucang/android/core/permission/mvp/PermissionGuideItemView;

    invoke-virtual {v0}, Lcn/mucang/android/core/permission/mvp/PermissionGuideItemView;->getPermissionItemImg()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Lcn/mucang/android/core/permission/mvp/PermissionItemModel;->getImg()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast p1, Lcn/mucang/android/core/permission/mvp/PermissionGuideItemView;

    invoke-virtual {p1}, Lcn/mucang/android/core/permission/mvp/PermissionGuideItemView;->getPermissionItemImg()Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
