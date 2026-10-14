.class public Lcn/mucang/android/core/permission/model/PermissionModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private granted:Z

.field private name:Ljava/lang/String;

.field private shouldShowRequest:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcn/mucang/android/core/permission/model/PermissionModel;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcn/mucang/android/core/permission/model/PermissionModel;->name:Ljava/lang/String;

    .line 6
    iput-boolean p2, p0, Lcn/mucang/android/core/permission/model/PermissionModel;->granted:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcn/mucang/android/core/permission/model/PermissionModel;->name:Ljava/lang/String;

    .line 9
    iput-boolean p2, p0, Lcn/mucang/android/core/permission/model/PermissionModel;->granted:Z

    .line 10
    iput-boolean p3, p0, Lcn/mucang/android/core/permission/model/PermissionModel;->shouldShowRequest:Z

    return-void
.end method


# virtual methods
.method public getGranted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/permission/model/PermissionModel;->granted:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/permission/model/PermissionModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getShouldShowRequest()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/permission/model/PermissionModel;->shouldShowRequest:Z

    return v0
.end method

.method public setGranted(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/core/permission/model/PermissionModel;->granted:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/permission/model/PermissionModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setShouldShowRequest(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/core/permission/model/PermissionModel;->shouldShowRequest:Z

    return-void
.end method
