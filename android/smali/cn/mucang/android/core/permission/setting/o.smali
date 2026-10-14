.class public final Lcn/mucang/android/core/permission/setting/o;
.super Lf/a/a/a/u/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/permission/setting/o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/a/a/a/u/a<",
        "Lcn/mucang/android/core/permission/setting/PermissionInfo;",
        "Lcn/mucang/android/framework/core/databinding/ItemPermissionSettingLayoutBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u000fB\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001e\u0010\n\u001a\u00020\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00030\r2\u0006\u0010\u000e\u001a\u00020\u0002H\u0014R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\u0006\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcn/mucang/android/core/permission/setting/PermissionSettingItemBinder;",
        "Lcn/mucang/android/core/viewbinding/ViewBindingBinder;",
        "Lcn/mucang/android/core/permission/setting/PermissionInfo;",
        "Lcn/mucang/android/framework/core/databinding/ItemPermissionSettingLayoutBinding;",
        "itemClickListener",
        "Lcn/mucang/android/core/permission/setting/PermissionSettingItemBinder$IItemClickListener;",
        "(Lcn/mucang/android/core/permission/setting/PermissionSettingItemBinder$IItemClickListener;)V",
        "getItemClickListener",
        "()Lcn/mucang/android/core/permission/setting/PermissionSettingItemBinder$IItemClickListener;",
        "setItemClickListener",
        "onBindViewHolder",
        "",
        "holder",
        "Lcn/mucang/android/core/viewbinding/ViewBindingHolder;",
        "data",
        "IItemClickListener",
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


# instance fields
.field private a:Lcn/mucang/android/core/permission/setting/o$a;


# direct methods
.method public constructor <init>(Lcn/mucang/android/core/permission/setting/o$a;)V
    .locals 1

    const-string v0, "itemClickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lf/a/a/a/u/a;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/core/permission/setting/o;->a:Lcn/mucang/android/core/permission/setting/o$a;

    return-void
.end method

.method public static synthetic b(Lcn/mucang/android/core/permission/setting/o;Lcn/mucang/android/core/permission/setting/PermissionInfo;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/core/permission/setting/o;->d(Lcn/mucang/android/core/permission/setting/o;Lcn/mucang/android/core/permission/setting/PermissionInfo;Landroid/view/View;)V

    return-void
.end method

.method private static final d(Lcn/mucang/android/core/permission/setting/o;Lcn/mucang/android/core/permission/setting/PermissionInfo;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$data"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/permission/setting/o;->a()Lcn/mucang/android/core/permission/setting/o$a;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/mucang/android/core/permission/setting/o$a;->a(Lcn/mucang/android/core/permission/setting/PermissionInfo;)V

    return-void
.end method


# virtual methods
.method public final a()Lcn/mucang/android/core/permission/setting/o$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/permission/setting/o;->a:Lcn/mucang/android/core/permission/setting/o$a;

    return-object v0
.end method

.method protected c(Lf/a/a/a/u/c;Lcn/mucang/android/core/permission/setting/PermissionInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/a/a/a/u/c<",
            "Lcn/mucang/android/framework/core/databinding/ItemPermissionSettingLayoutBinding;",
            ">;",
            "Lcn/mucang/android/core/permission/setting/PermissionInfo;",
            ")V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lf/a/a/a/u/c;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/framework/core/databinding/ItemPermissionSettingLayoutBinding;

    .line 2
    iget-object v1, v0, Lcn/mucang/android/framework/core/databinding/ItemPermissionSettingLayoutBinding;->tvTitle:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5141\u8bb8"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/core/utils/p;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\u8bbf\u95ee"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/mucang/android/core/permission/setting/PermissionInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\u6743\u9650"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v1, v0, Lcn/mucang/android/framework/core/databinding/ItemPermissionSettingLayoutBinding;->tvDes:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcn/mucang/android/core/permission/setting/PermissionInfo;->getReasonShort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p2}, Lcn/mucang/android/core/permission/setting/PermissionInfo;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/core/utils/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, v0, Lcn/mucang/android/framework/core/databinding/ItemPermissionSettingLayoutBinding;->tvAuthorizedStatus:Landroid/widget/TextView;

    const-string v2, "\u5df2\u6388\u6743"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, v0, Lcn/mucang/android/framework/core/databinding/ItemPermissionSettingLayoutBinding;->tvAuthorizedStatus:Landroid/widget/TextView;

    const-string v1, "#333333"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, v0, Lcn/mucang/android/framework/core/databinding/ItemPermissionSettingLayoutBinding;->tvAuthorizedStatus:Landroid/widget/TextView;

    const-string v2, "\u6743\u9650\u8bbe\u7f6e"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, v0, Lcn/mucang/android/framework/core/databinding/ItemPermissionSettingLayoutBinding;->tvAuthorizedStatus:Landroid/widget/TextView;

    const-string v1, "#04A5FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v0, Lcn/mucang/android/core/permission/setting/j;

    invoke-direct {v0, p0, p2}, Lcn/mucang/android/core/permission/setting/j;-><init>(Lcn/mucang/android/core/permission/setting/o;Lcn/mucang/android/core/permission/setting/PermissionInfo;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lf/a/a/a/u/c;

    check-cast p2, Lcn/mucang/android/core/permission/setting/PermissionInfo;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/core/permission/setting/o;->c(Lf/a/a/a/u/c;Lcn/mucang/android/core/permission/setting/PermissionInfo;)V

    return-void
.end method
