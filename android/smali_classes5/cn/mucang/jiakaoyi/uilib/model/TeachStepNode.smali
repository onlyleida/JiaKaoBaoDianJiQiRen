.class public final Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u0006\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010*\u001a\u00020\u0000R\u001e\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\t\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001e\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001e\u0010\u0018\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\u0008\u0019\u0010\u0014\"\u0004\u0008\u001a\u0010\u0016R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001c\u0010!\u001a\u0004\u0018\u00010\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u001e\"\u0004\u0008#\u0010 R\u001e\u0010$\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\u0008%\u0010\r\"\u0004\u0008&\u0010\u000fR\u001c\u0010\'\u001a\u0004\u0018\u00010\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u001e\"\u0004\u0008)\u0010 \u00a8\u0006+"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;",
        "Ljava/io/Serializable;",
        "()V",
        "bearing",
        "",
        "getBearing",
        "()Ljava/lang/Float;",
        "setBearing",
        "(Ljava/lang/Float;)V",
        "Ljava/lang/Float;",
        "examSiteId",
        "",
        "getExamSiteId",
        "()Ljava/lang/Long;",
        "setExamSiteId",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "latitude",
        "",
        "getLatitude",
        "()Ljava/lang/Double;",
        "setLatitude",
        "(Ljava/lang/Double;)V",
        "Ljava/lang/Double;",
        "longitude",
        "getLongitude",
        "setLongitude",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "setName",
        "(Ljava/lang/String;)V",
        "owner",
        "getOwner",
        "setOwner",
        "teachId",
        "getTeachId",
        "setTeachId",
        "uid",
        "getUid",
        "setUid",
        "copy",
        "uilib_release"
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
.field private bearing:Ljava/lang/Float;

.field private examSiteId:Ljava/lang/Long;

.field private latitude:Ljava/lang/Double;

.field private longitude:Ljava/lang/Double;

.field private name:Ljava/lang/String;

.field private owner:Ljava/lang/String;

.field private teachId:Ljava/lang/Long;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final copy()Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->getExamSiteId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->setExamSiteId(Ljava/lang/Long;)V

    .line 3
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->getLatitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->setLatitude(Ljava/lang/Double;)V

    .line 4
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->getLongitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->setLongitude(Ljava/lang/Double;)V

    .line 5
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->getBearing()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->setBearing(Ljava/lang/Float;)V

    .line 6
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->setName(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->getOwner()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->setOwner(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->getTeachId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->setTeachId(Ljava/lang/Long;)V

    .line 9
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->setUid(Ljava/lang/String;)V

    return-object v0
.end method

.method public final getBearing()Ljava/lang/Float;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->bearing:Ljava/lang/Float;

    return-object v0
.end method

.method public final getExamSiteId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->examSiteId:Ljava/lang/Long;

    return-object v0
.end method

.method public final getLatitude()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->latitude:Ljava/lang/Double;

    return-object v0
.end method

.method public final getLongitude()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->longitude:Ljava/lang/Double;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getOwner()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->owner:Ljava/lang/String;

    return-object v0
.end method

.method public final getTeachId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->teachId:Ljava/lang/Long;

    return-object v0
.end method

.method public final getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public final setBearing(Ljava/lang/Float;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->bearing:Ljava/lang/Float;

    return-void
.end method

.method public final setExamSiteId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->examSiteId:Ljava/lang/Long;

    return-void
.end method

.method public final setLatitude(Ljava/lang/Double;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->latitude:Ljava/lang/Double;

    return-void
.end method

.method public final setLongitude(Ljava/lang/Double;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->longitude:Ljava/lang/Double;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->name:Ljava/lang/String;

    return-void
.end method

.method public final setOwner(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->owner:Ljava/lang/String;

    return-void
.end method

.method public final setTeachId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->teachId:Ljava/lang/Long;

    return-void
.end method

.method public final setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->uid:Ljava/lang/String;

    return-void
.end method
