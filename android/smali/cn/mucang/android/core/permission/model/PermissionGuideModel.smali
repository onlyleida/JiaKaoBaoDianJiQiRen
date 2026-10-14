.class public Lcn/mucang/android/core/permission/model/PermissionGuideModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bottomDesc:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/core/permission/mvp/PermissionItemModel;",
            ">;"
        }
    .end annotation
.end field

.field private showAgreement:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private showClose:Z

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0}, Lcn/mucang/android/core/permission/model/PermissionGuideModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/mucang/android/core/permission/model/PermissionGuideModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/permission/mvp/PermissionItemModel;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 3
    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/core/permission/model/PermissionGuideModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/permission/mvp/PermissionItemModel;",
            ">;Z)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 4
    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/core/permission/model/PermissionGuideModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/permission/mvp/PermissionItemModel;",
            ">;ZZ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcn/mucang/android/core/permission/model/PermissionGuideModel;->title:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcn/mucang/android/core/permission/model/PermissionGuideModel;->desc:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcn/mucang/android/core/permission/model/PermissionGuideModel;->bottomDesc:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcn/mucang/android/core/permission/model/PermissionGuideModel;->list:Ljava/util/List;

    .line 10
    iput-boolean p5, p0, Lcn/mucang/android/core/permission/model/PermissionGuideModel;->showClose:Z

    .line 11
    iput-boolean p6, p0, Lcn/mucang/android/core/permission/model/PermissionGuideModel;->showAgreement:Z

    return-void
.end method


# virtual methods
.method public getBottomDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/permission/model/PermissionGuideModel;->bottomDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/permission/model/PermissionGuideModel;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/permission/mvp/PermissionItemModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/permission/model/PermissionGuideModel;->list:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/permission/model/PermissionGuideModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isShowAgreement()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/permission/model/PermissionGuideModel;->showAgreement:Z

    return v0
.end method

.method public isShowClose()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/permission/model/PermissionGuideModel;->showClose:Z

    return v0
.end method

.method public setBottomDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/permission/model/PermissionGuideModel;->bottomDesc:Ljava/lang/String;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/permission/model/PermissionGuideModel;->desc:Ljava/lang/String;

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/permission/mvp/PermissionItemModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/permission/model/PermissionGuideModel;->list:Ljava/util/List;

    return-void
.end method

.method public setShowAgreement(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/core/permission/model/PermissionGuideModel;->showAgreement:Z

    return-void
.end method

.method public setShowClose(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/core/permission/model/PermissionGuideModel;->showClose:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/permission/model/PermissionGuideModel;->title:Ljava/lang/String;

    return-void
.end method
