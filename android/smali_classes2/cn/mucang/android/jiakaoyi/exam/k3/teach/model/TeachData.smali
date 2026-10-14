.class public Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public desc:Ljava/lang/String;

.field public errorValue:Ljava/lang/String;

.field public errorVariables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;",
            ">;"
        }
    .end annotation
.end field

.field public examSiteId:J

.field public gearType:I

.field public id:Ljava/lang/Long;

.field public name:Ljava/lang/String;

.field public num:I

.field public order:Z

.field public position:I

.field public remark:Ljava/lang/String;

.field public stepId:I

.field public teachNum:I

.field public value:Ljava/lang/String;

.field public variables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->order:Z

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->order:Z

    .line 5
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->num:I

    .line 6
    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->stepId:I

    .line 7
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->name:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->desc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->order:Z

    .line 18
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->num:I

    .line 19
    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->stepId:I

    .line 20
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->desc:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->name:Ljava/lang/String;

    .line 22
    iget p1, p5, Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;->type:I

    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->gearType:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->order:Z

    .line 11
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->num:I

    .line 12
    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->stepId:I

    .line 13
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->name:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->desc:Ljava/lang/String;

    .line 15
    iput-boolean p5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->order:Z

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;ZLcn/mucang/android/jiakaoyi/signal/center/model/GearType;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->order:Z

    .line 25
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->num:I

    .line 26
    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->stepId:I

    .line 27
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->desc:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->name:Ljava/lang/String;

    .line 29
    iput-boolean p5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->order:Z

    .line 30
    iget p1, p6, Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;->type:I

    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->gearType:I

    return-void
.end method

.method public static parseVariables(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p0

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const-string v3, "type"

    .line 5
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->parse(I)Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSON;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->clazz:Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;

    .line 8
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u89e3\u6790\u6559\u5b66\u6570\u636e\u9519\u8bef TeachData variables "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_1
    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addErrorVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->errorVariables:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->errorVariables:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->errorVariables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->variables:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->variables:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->variables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public copy()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->errorVariables:Ljava/util/List;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->errorVariables:Ljava/util/List;

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->variables:Ljava/util/List;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->variables:Ljava/util/List;

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->id:Ljava/lang/Long;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->id:Ljava/lang/Long;

    .line 5
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->examSiteId:J

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->examSiteId:J

    .line 6
    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->stepId:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->stepId:I

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->desc:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->desc:Ljava/lang/String;

    .line 8
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->order:Z

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->order:Z

    .line 9
    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->num:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->num:I

    .line 10
    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->position:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->position:I

    .line 11
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->name:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->name:Ljava/lang/String;

    .line 12
    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->gearType:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->gearType:I

    .line 13
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->value:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->value:Ljava/lang/String;

    .line 14
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->errorValue:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->errorValue:Ljava/lang/String;

    .line 15
    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->teachNum:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->teachNum:I

    .line 16
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->remark:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->remark:Ljava/lang/String;

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

    goto/16 :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    .line 3
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->examSiteId:J

    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->examSiteId:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->stepId:I

    iget v3, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->stepId:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->order:Z

    iget-boolean v3, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->order:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->num:I

    iget v3, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->num:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->teachNum:I

    iget v3, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->teachNum:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->position:I

    iget v3, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->position:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->gearType:I

    iget v3, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->gearType:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->id:Ljava/lang/Long;

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->id:Ljava/lang/Long;

    .line 4
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->variables:Ljava/util/List;

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->variables:Ljava/util/List;

    .line 5
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->value:Ljava/lang/String;

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->value:Ljava/lang/String;

    .line 6
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->errorVariables:Ljava/util/List;

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->errorVariables:Ljava/util/List;

    .line 7
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->errorValue:Ljava/lang/String;

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->errorValue:Ljava/lang/String;

    .line 8
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->desc:Ljava/lang/String;

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->desc:Ljava/lang/String;

    .line 9
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->remark:Ljava/lang/String;

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->remark:Ljava/lang/String;

    .line 10
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->name:Ljava/lang/String;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->name:Ljava/lang/String;

    .line 11
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

.method public hashCode()I
    .locals 3

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->id:Ljava/lang/Long;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->examSiteId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->variables:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->value:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->errorVariables:Ljava/util/List;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->errorValue:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->stepId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->desc:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->order:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->num:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->remark:Ljava/lang/String;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->teachNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->name:Ljava/lang/String;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->gearType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
