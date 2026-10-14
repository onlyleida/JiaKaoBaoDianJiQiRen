.class public Lcn/mucang/android/core/permission/mvp/PermissionItemModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/ui/framework/mvp/BaseModel;


# instance fields
.field private desc:Ljava/lang/String;

.field private img:I

.field private title:Ljava/lang/String;


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
    iput-object p1, p0, Lcn/mucang/android/core/permission/mvp/PermissionItemModel;->title:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcn/mucang/android/core/permission/mvp/PermissionItemModel;->title:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcn/mucang/android/core/permission/mvp/PermissionItemModel;->desc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcn/mucang/android/core/permission/mvp/PermissionItemModel;->title:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcn/mucang/android/core/permission/mvp/PermissionItemModel;->desc:Ljava/lang/String;

    .line 10
    iput p3, p0, Lcn/mucang/android/core/permission/mvp/PermissionItemModel;->img:I

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/permission/mvp/PermissionItemModel;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getImg()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/core/permission/mvp/PermissionItemModel;->img:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/permission/mvp/PermissionItemModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/permission/mvp/PermissionItemModel;->desc:Ljava/lang/String;

    return-void
.end method

.method public setImg(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/core/permission/mvp/PermissionItemModel;->img:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/permission/mvp/PermissionItemModel;->title:Ljava/lang/String;

    return-void
.end method
