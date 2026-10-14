.class public final Lf/a/a/a/n/a;
.super Landroid/app/Fragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0012\u0010\u000e\u001a\u00020\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J+\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\t2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016\u00a2\u0006\u0002\u0010\u0016J\u001b\u0010\u0017\u001a\u00020\u000b2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0013H\u0002\u00a2\u0006\u0002\u0010\u0018J%\u0010\u0019\u001a\u00020\u000b2\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00072\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0013\u00a2\u0006\u0002\u0010\u001bR\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcn/mucang/android/core/permission/PermissionRequestFragment;",
        "Landroid/app/Fragment;",
        "()V",
        "grantedPermissions",
        "",
        "",
        "mListener",
        "Lcn/mucang/android/core/permission/callbacks/PermissionsCallback;",
        "requestCode",
        "",
        "callBack",
        "",
        "permissionsResult",
        "Lcn/mucang/android/core/permission/model/PermissionsResult;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onRequestPermissionsResult",
        "permissions",
        "",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)V",
        "requestPermission",
        "([Ljava/lang/String;)V",
        "requestPermissions",
        "listener",
        "(Lcn/mucang/android/core/permission/callbacks/PermissionsCallback;[Ljava/lang/String;)V",
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
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lf/a/a/a/n/c/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/16 v0, 0x2a

    .line 2
    iput v0, p0, Lf/a/a/a/n/a;->a:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf/a/a/a/n/a;->b:Ljava/util/List;

    return-void
.end method

.method private final a(Lcn/mucang/android/core/permission/model/PermissionsResult;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/a/n/a;->c:Lf/a/a/a/n/c/a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lf/a/a/a/n/c/a;->permissionsResult(Lcn/mucang/android/core/permission/model/PermissionsResult;)V

    :goto_0
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lf/a/a/a/n/a;->c:Lf/a/a/a/n/c/a;

    return-void
.end method

.method private final b([Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    .line 3
    invoke-static {v4}, Lcn/mucang/android/core/utils/z;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4
    iget-object v5, p0, Lf/a/a/a/n/a;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v4, p1, v2

    .line 9
    new-instance v5, Lcn/mucang/android/core/permission/model/PermissionModel;

    invoke-direct {v5, v4, v3}, Lcn/mucang/android/core/permission/model/PermissionModel;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10
    :cond_2
    new-instance p1, Lcn/mucang/android/core/permission/model/PermissionsResult;

    invoke-direct {p1, v3, v0}, Lcn/mucang/android/core/permission/model/PermissionsResult;-><init>(ZLjava/util/List;)V

    invoke-direct {p0, p1}, Lf/a/a/a/n/a;->a(Lcn/mucang/android/core/permission/model/PermissionsResult;)V

    return-void

    .line 11
    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p1, v1, :cond_4

    new-array p1, v2, [Ljava/lang/String;

    .line 12
    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    .line 13
    iget v0, p0, Lf/a/a/a/n/a;->a:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_4

    .line 14
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    iget-object v1, p0, Lf/a/a/a/n/a;->b:Ljava/util/List;

    .line 16
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 17
    check-cast v4, Ljava/lang/String;

    .line 18
    new-instance v5, Lcn/mucang/android/core/permission/model/PermissionModel;

    invoke-direct {v5, v4, v3}, Lcn/mucang/android/core/permission/model/PermissionModel;-><init>(Ljava/lang/String;Z)V

    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 19
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 21
    check-cast v3, Ljava/lang/String;

    .line 22
    new-instance v4, Lcn/mucang/android/core/permission/model/PermissionModel;

    invoke-direct {v4, v3, v2, v2}, Lcn/mucang/android/core/permission/model/PermissionModel;-><init>(Ljava/lang/String;ZZ)V

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    new-instance v0, Lcn/mucang/android/core/permission/model/PermissionsResult;

    invoke-direct {v0, v2, p1}, Lcn/mucang/android/core/permission/model/PermissionsResult;-><init>(ZLjava/util/List;)V

    invoke-direct {p0, v0}, Lf/a/a/a/n/a;->a(Lcn/mucang/android/core/permission/model/PermissionsResult;)V

    :goto_4
    return-void
.end method


# virtual methods
.method public final c(Lf/a/a/a/n/c/a;[Ljava/lang/String;)V
    .locals 3

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 2
    :cond_1
    iput-object p1, p0, Lf/a/a/a/n/a;->c:Lf/a/a/a/n/c/a;

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 3
    invoke-static {p2, p1}, Lkotlin/collections/k;->q([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    if-eqz v0, :cond_2

    invoke-static {p2, v1}, Lkotlin/collections/k;->q([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-static {p2, v1}, Lkotlin/collections/k;->k([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v0, p2

    .line 5
    :goto_1
    invoke-static {p2, p1}, Lkotlin/collections/k;->q([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p2, v1}, Lkotlin/collections/k;->q([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-static {p2, p1}, Lkotlin/collections/k;->k([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    .line 7
    :cond_3
    invoke-direct {p0, v0}, Lf/a/a/a/n/a;->b([Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 8

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    iget-object p1, p0, Lf/a/a/a/n/a;->c:Lf/a/a/a/n/c/a;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v0, p0, Lf/a/a/a/n/a;->b:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Ljava/lang/String;

    .line 7
    new-instance v3, Lcn/mucang/android/core/permission/model/PermissionModel;

    invoke-direct {v3, v1, v2}, Lcn/mucang/android/core/permission/model/PermissionModel;-><init>(Ljava/lang/String;Z)V

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_4

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_1
    add-int/lit8 v5, v3, 0x1

    .line 9
    aget-object v6, p2, v3

    .line 10
    new-instance v7, Lcn/mucang/android/core/permission/model/PermissionModel;

    invoke-direct {v7, v6}, Lcn/mucang/android/core/permission/model/PermissionModel;-><init>(Ljava/lang/String;)V

    .line 11
    aget v3, p3, v3

    if-nez v3, :cond_2

    .line 12
    invoke-virtual {v7, v2}, Lcn/mucang/android/core/permission/model/PermissionModel;->setGranted(Z)V

    goto :goto_2

    .line 13
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v6}, Landroidx/core/app/a;->t(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v7, v3}, Lcn/mucang/android/core/permission/model/PermissionModel;->setShouldShowRequest(Z)V

    const/4 v4, 0x0

    .line 14
    :goto_2
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-le v5, v0, :cond_3

    move v2, v4

    goto :goto_3

    :cond_3
    move v3, v5

    goto :goto_1

    .line 15
    :cond_4
    :goto_3
    new-instance p2, Lcn/mucang/android/core/permission/model/PermissionsResult;

    invoke-direct {p2, v2, p1}, Lcn/mucang/android/core/permission/model/PermissionsResult;-><init>(ZLjava/util/List;)V

    invoke-direct {p0, p2}, Lf/a/a/a/n/a;->a(Lcn/mucang/android/core/permission/model/PermissionsResult;)V

    return-void
.end method
