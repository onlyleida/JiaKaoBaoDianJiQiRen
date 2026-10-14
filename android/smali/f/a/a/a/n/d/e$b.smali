.class public final Lf/a/a/a/n/d/e$b;
.super Lf/a/a/e/a/b/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/a/a/n/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/a/a/e/a/b/c/a<",
        "Lcn/mucang/android/core/permission/mvp/PermissionItemModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\"\u0010\u0004\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0014J\u001a\u0010\n\u001a\u00020\u00072\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0008\u001a\u00020\tH\u0014\u00a8\u0006\r"
    }
    d2 = {
        "Lcn/mucang/android/core/permission/dialog/PermissionGuideDialog$PermissionAdapter;",
        "Lcn/mucang/android/ui/framework/adapter/recyclerview/BaseRecycleAdapter;",
        "Lcn/mucang/android/core/permission/mvp/PermissionItemModel;",
        "()V",
        "newPresenter",
        "Lcn/mucang/android/ui/framework/mvp/BasePresenter;",
        "baseView",
        "Lcn/mucang/android/ui/framework/mvp/BaseView;",
        "type",
        "",
        "newView",
        "parent",
        "Landroid/view/ViewGroup;",
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
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/e/a/b/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected e(Lcn/mucang/android/ui/framework/mvp/b;I)Lcn/mucang/android/ui/framework/mvp/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/ui/framework/mvp/b;",
            "I)",
            "Lcn/mucang/android/ui/framework/mvp/a<",
            "**>;"
        }
    .end annotation

    .line 1
    new-instance p2, Lcn/mucang/android/core/permission/mvp/a;

    const-string v0, "null cannot be cast to non-null type cn.mucang.android.core.permission.mvp.PermissionGuideItemView"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcn/mucang/android/core/permission/mvp/PermissionGuideItemView;

    invoke-direct {p2, p1}, Lcn/mucang/android/core/permission/mvp/a;-><init>(Lcn/mucang/android/core/permission/mvp/PermissionGuideItemView;)V

    return-object p2
.end method

.method protected f(Landroid/view/ViewGroup;I)Lcn/mucang/android/ui/framework/mvp/b;
    .locals 0

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/permission/mvp/PermissionGuideItemView;->b(Landroid/view/ViewGroup;)Lcn/mucang/android/core/permission/mvp/PermissionGuideItemView;

    move-result-object p1

    const-string p2, "newInstance(parent)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
