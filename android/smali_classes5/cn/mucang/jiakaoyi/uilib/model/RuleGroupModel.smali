.class public Lcn/mucang/jiakaoyi/uilib/model/RuleGroupModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private createTime:J

.field private id:Ljava/lang/Long;

.field private kemu:I

.field private name:Ljava/lang/String;

.field private owner:Ljava/lang/String;

.field private ownerType:I

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleGroupModel;->createTime:J

    return-wide v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleGroupModel;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getKemu()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleGroupModel;->kemu:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleGroupModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleGroupModel;->owner:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleGroupModel;->ownerType:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleGroupModel;->status:I

    return v0
.end method

.method public map()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleGroupModel;->id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    .line 3
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleGroupModel;->name:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteName:Ljava/lang/String;

    return-object v0
.end method

.method public setCreateTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleGroupModel;->createTime:J

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleGroupModel;->id:Ljava/lang/Long;

    return-void
.end method

.method public setKemu(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleGroupModel;->kemu:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleGroupModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setOwner(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleGroupModel;->owner:Ljava/lang/String;

    return-void
.end method

.method public setOwnerType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleGroupModel;->ownerType:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleGroupModel;->status:I

    return-void
.end method
