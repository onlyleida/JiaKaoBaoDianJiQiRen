.class public Lcn/mucang/android/core/permission/setting/PermissionInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private authority:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private reason:Ljava/lang/String;

.field private reasonShort:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcn/mucang/android/core/permission/setting/PermissionInfo;->authority:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcn/mucang/android/core/permission/setting/PermissionInfo;->name:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcn/mucang/android/core/permission/setting/PermissionInfo;->reasonShort:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcn/mucang/android/core/permission/setting/PermissionInfo;->reason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAuthority()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/permission/setting/PermissionInfo;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/permission/setting/PermissionInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/permission/setting/PermissionInfo;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonShort()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/permission/setting/PermissionInfo;->reasonShort:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthority(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/permission/setting/PermissionInfo;->authority:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/permission/setting/PermissionInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/permission/setting/PermissionInfo;->reason:Ljava/lang/String;

    return-void
.end method

.method public setReasonShort(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/permission/setting/PermissionInfo;->reasonShort:Ljava/lang/String;

    return-void
.end method
