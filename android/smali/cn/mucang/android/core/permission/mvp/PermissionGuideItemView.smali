.class public Lcn/mucang/android/core/permission/mvp/PermissionGuideItemView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/ui/framework/mvp/b;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()V
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/framework/core/R$id;->permission_item_img:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/mucang/android/core/permission/mvp/PermissionGuideItemView;->a:Landroid/widget/ImageView;

    .line 2
    sget v0, Lcn/mucang/android/framework/core/R$id;->permission_item_name:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/mucang/android/core/permission/mvp/PermissionGuideItemView;->b:Landroid/widget/TextView;

    .line 3
    sget v0, Lcn/mucang/android/framework/core/R$id;->permission_item_desc:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/mucang/android/core/permission/mvp/PermissionGuideItemView;->c:Landroid/widget/TextView;

    return-void
.end method

.method public static b(Landroid/view/ViewGroup;)Lcn/mucang/android/core/permission/mvp/PermissionGuideItemView;
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/framework/core/R$layout;->core__permission_guide_item:I

    invoke-static {p0, v0}, Lcn/mucang/android/core/utils/t0;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/core/permission/mvp/PermissionGuideItemView;

    return-object p0
.end method


# virtual methods
.method public getPermissionItemDesc()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/permission/mvp/PermissionGuideItemView;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPermissionItemImg()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/permission/mvp/PermissionGuideItemView;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPermissionItemName()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/permission/mvp/PermissionGuideItemView;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/core/permission/mvp/PermissionGuideItemView;->a()V

    return-void
.end method
