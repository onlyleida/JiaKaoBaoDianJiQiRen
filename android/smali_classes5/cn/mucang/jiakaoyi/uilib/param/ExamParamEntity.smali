.class public Lcn/mucang/jiakaoyi/uilib/param/ExamParamEntity;
.super Lcn/mucang/android/core/db/IdEntity;
.source "SourceFile"


# instance fields
.field private cityCode:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private examSiteId:J

.field private userId:Ljava/lang/String;

.field private valueType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/db/IdEntity;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/core/db/IdEntity;-><init>()V

    .line 3
    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/param/ExamParamEntity;->examSiteId:J

    .line 4
    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/param/ExamParamEntity;->userId:Ljava/lang/String;

    .line 5
    iput p4, p0, Lcn/mucang/jiakaoyi/uilib/param/ExamParamEntity;->valueType:I

    return-void
.end method


# virtual methods
.method public getCityCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/param/ExamParamEntity;->cityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/param/ExamParamEntity;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getExamSiteId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/param/ExamParamEntity;->examSiteId:J

    return-wide v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/param/ExamParamEntity;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getValueType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/param/ExamParamEntity;->valueType:I

    return v0
.end method

.method public map()Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/param/ExamParamEntity;->valueType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 2
    const-class v1, Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    const-class v1, Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 4
    const-class v1, Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    goto :goto_0

    :cond_2
    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 5
    const-class v1, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 6
    const-class v1, Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    goto :goto_0

    :cond_4
    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    .line 7
    const-class v1, Lcn/mucang/android/jiakaoyi/engine/config/route/value/FloatValue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TAG"

    invoke-static {v2, v1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_6

    .line 10
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/param/ExamParamEntity;->content:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;

    :cond_6
    return-object v0
.end method

.method public setCityCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/param/ExamParamEntity;->cityCode:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/param/ExamParamEntity;->content:Ljava/lang/String;

    return-void
.end method

.method public setExamSiteId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/param/ExamParamEntity;->examSiteId:J

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/param/ExamParamEntity;->userId:Ljava/lang/String;

    return-void
.end method

.method public setValueType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/param/ExamParamEntity;->valueType:I

    return-void
.end method
