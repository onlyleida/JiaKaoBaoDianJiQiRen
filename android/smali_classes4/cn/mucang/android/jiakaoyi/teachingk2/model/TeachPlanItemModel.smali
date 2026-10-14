.class public Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public examSiteId:J

.field public gearType:I

.field public id:J

.field public newCarTypeId:I

.field public newCarTypeName:Ljava/lang/String;

.field public programmeName:Ljava/lang/String;

.field public schoolId:J

.field public universalModelName:Ljava/lang/String;

.field public universalModelNum:I

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;-><init>()V

    .line 2
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->examSiteId:J

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->examSiteId:J

    .line 3
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->id:J

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->id:J

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->programmeName:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->programmeName:Ljava/lang/String;

    .line 5
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->schoolId:J

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->schoolId:J

    .line 6
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->gearType:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->gearType:I

    .line 7
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->universalModelNum:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->universalModelNum:I

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->universalModelName:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->universalModelName:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;

    .line 3
    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->newCarTypeId:I

    iget v3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->newCarTypeId:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->examSiteId:J

    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->examSiteId:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->id:J

    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->id:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->version:I

    iget v3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->version:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->schoolId:J

    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->schoolId:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->gearType:I

    iget v3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->gearType:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->universalModelNum:I

    iget v3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->universalModelNum:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->newCarTypeName:Ljava/lang/String;

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->newCarTypeName:Ljava/lang/String;

    .line 4
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->universalModelName:Ljava/lang/String;

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->universalModelName:Ljava/lang/String;

    .line 5
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->programmeName:Ljava/lang/String;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->programmeName:Ljava/lang/String;

    .line 6
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getVersionText()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->version:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const-string v0, "V1.0"

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "V"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
