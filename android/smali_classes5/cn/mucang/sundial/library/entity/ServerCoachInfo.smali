.class public final Lcn/mucang/sundial/library/entity/ServerCoachInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u001b\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\r\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R\"\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\"\u0010\u000c\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\u0007\u001a\u0004\u0008\r\u0010\t\"\u0004\u0008\u000e\u0010\u000bR\"\u0010\u000f\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0007\u001a\u0004\u0008\u0010\u0010\t\"\u0004\u0008\u0011\u0010\u000bR\"\u0010\u0012\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0007\u001a\u0004\u0008\u0013\u0010\t\"\u0004\u0008\u0014\u0010\u000bR\"\u0010\u0015\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0007\u001a\u0004\u0008\u0016\u0010\t\"\u0004\u0008\u0017\u0010\u000bR\"\u0010\u0018\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0007\u001a\u0004\u0008\u0019\u0010\t\"\u0004\u0008\u001a\u0010\u000bR\"\u0010\u001b\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u0007\u001a\u0004\u0008\u001c\u0010\t\"\u0004\u0008\u001d\u0010\u000b\u00a8\u0006 "
    }
    d2 = {
        "Lcn/mucang/sundial/library/entity/ServerCoachInfo;",
        "Ljava/io/Serializable;",
        "",
        "infoValid",
        "()Z",
        "",
        "driveType",
        "Ljava/lang/String;",
        "getDriveType",
        "()Ljava/lang/String;",
        "setDriveType",
        "(Ljava/lang/String;)V",
        "schoolName",
        "getSchoolName",
        "setSchoolName",
        "globalCode",
        "getGlobalCode",
        "setGlobalCode",
        "name",
        "getName",
        "setName",
        "avatar",
        "getAvatar",
        "setAvatar",
        "certificateCode",
        "getCertificateCode",
        "setCertificateCode",
        "teachLicenceType",
        "getTeachLicenceType",
        "setTeachLicenceType",
        "<init>",
        "()V",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private avatar:Ljava/lang/String;

.field private certificateCode:Ljava/lang/String;

.field private driveType:Ljava/lang/String;

.field private globalCode:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private schoolName:Ljava/lang/String;

.field private teachLicenceType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcn/mucang/sundial/library/entity/ServerCoachInfo;->globalCode:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcn/mucang/sundial/library/entity/ServerCoachInfo;->avatar:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcn/mucang/sundial/library/entity/ServerCoachInfo;->name:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcn/mucang/sundial/library/entity/ServerCoachInfo;->teachLicenceType:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcn/mucang/sundial/library/entity/ServerCoachInfo;->driveType:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcn/mucang/sundial/library/entity/ServerCoachInfo;->schoolName:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcn/mucang/sundial/library/entity/ServerCoachInfo;->certificateCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/entity/ServerCoachInfo;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public final getCertificateCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/entity/ServerCoachInfo;->certificateCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getDriveType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/entity/ServerCoachInfo;->driveType:Ljava/lang/String;

    return-object v0
.end method

.method public final getGlobalCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/entity/ServerCoachInfo;->globalCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/entity/ServerCoachInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getSchoolName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/entity/ServerCoachInfo;->schoolName:Ljava/lang/String;

    return-object v0
.end method

.method public final getTeachLicenceType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/entity/ServerCoachInfo;->teachLicenceType:Ljava/lang/String;

    return-object v0
.end method

.method public final infoValid()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/entity/ServerCoachInfo;->globalCode:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/l;->r(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/sundial/library/entity/ServerCoachInfo;->certificateCode:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/l;->r(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final setAvatar(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/entity/ServerCoachInfo;->avatar:Ljava/lang/String;

    return-void
.end method

.method public final setCertificateCode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/entity/ServerCoachInfo;->certificateCode:Ljava/lang/String;

    return-void
.end method

.method public final setDriveType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/entity/ServerCoachInfo;->driveType:Ljava/lang/String;

    return-void
.end method

.method public final setGlobalCode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/entity/ServerCoachInfo;->globalCode:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/entity/ServerCoachInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public final setSchoolName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/entity/ServerCoachInfo;->schoolName:Ljava/lang/String;

    return-void
.end method

.method public final setTeachLicenceType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/entity/ServerCoachInfo;->teachLicenceType:Ljava/lang/String;

    return-void
.end method
