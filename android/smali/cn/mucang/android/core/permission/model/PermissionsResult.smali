.class public Lcn/mucang/android/core/permission/model/PermissionsResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private grantedAll:Z

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/core/permission/model/PermissionModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/permission/model/PermissionModel;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/core/permission/model/PermissionsResult;->grantedAll:Z

    .line 4
    iput-object p2, p0, Lcn/mucang/android/core/permission/model/PermissionsResult;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getGrantedAll()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/permission/model/PermissionsResult;->grantedAll:Z

    return v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/permission/model/PermissionModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/permission/model/PermissionsResult;->list:Ljava/util/List;

    return-object v0
.end method

.method public setGrantedAll(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/core/permission/model/PermissionsResult;->grantedAll:Z

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/permission/model/PermissionModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/permission/model/PermissionsResult;->list:Ljava/util/List;

    return-void
.end method
