.class public final Lf/a/a/a/n/d/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/a/a/n/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcn/mucang/android/core/permission/dialog/PermissionGuideDialog$Companion;",
        "",
        "()V",
        "showDialog",
        "",
        "fragmentManager",
        "Landroidx/fragment/app/FragmentManager;",
        "model",
        "Lcn/mucang/android/core/permission/model/PermissionGuideModel;",
        "listener",
        "Lcn/mucang/android/core/permission/callbacks/PermissionsDialogCallback;",
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
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0}, Lf/a/a/a/n/d/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/FragmentManager;Lcn/mucang/android/core/permission/model/PermissionGuideModel;Lf/a/a/a/n/c/b;)V
    .locals 1

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lf/a/a/a/n/d/e;

    invoke-direct {v0}, Lf/a/a/a/n/d/e;-><init>()V

    .line 2
    invoke-static {v0, p3}, Lf/a/a/a/n/d/e;->r(Lf/a/a/a/n/d/e;Lf/a/a/a/n/c/b;)V

    .line 3
    invoke-static {v0, p2}, Lf/a/a/a/n/d/e;->s(Lf/a/a/a/n/d/e;Lcn/mucang/android/core/permission/model/PermissionGuideModel;)V

    .line 4
    sget p2, Lcn/mucang/android/framework/core/R$style;->core__full_screen_dialog:I

    const/4 p3, 0x1

    invoke-virtual {v0, p3, p2}, Landroidx/fragment/app/c;->setStyle(II)V

    const/4 p2, 0x0

    .line 5
    invoke-virtual {v0, p1, p2}, Lf/a/a/a/n/d/f;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
