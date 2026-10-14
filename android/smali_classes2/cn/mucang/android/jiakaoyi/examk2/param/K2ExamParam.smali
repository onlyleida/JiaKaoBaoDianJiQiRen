.class public Lcn/mucang/android/jiakaoyi/examk2/param/K2ExamParam;
.super Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam<",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;",
        ">;"
    }
.end annotation


# instance fields
.field public p401142:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p401143:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p401144:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p401145:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p401146:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

.field public p401147:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p401148:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p401149:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p401150:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

.field public p401151:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

.field public p401152:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;-><init>()V

    return-void
.end method


# virtual methods
.method public canCheckGlobalEvent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected checkComplete()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/param/K2ExamParam;->p401142:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/param/K2ExamParam;->p401143:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/param/K2ExamParam;->p401144:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/param/K2ExamParam;->p401145:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/param/K2ExamParam;->p401146:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/param/K2ExamParam;->p401147:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/param/K2ExamParam;->p401148:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/param/K2ExamParam;->p401149:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/param/K2ExamParam;->p401150:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/param/K2ExamParam;->p401151:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/param/K2ExamParam;->p401152:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic fillGlobalConfig(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/examk2/param/K2ExamParam;->fillGlobalConfig(Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;)Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;

    move-result-object p1

    return-object p1
.end method

.method public fillGlobalConfig(Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;)Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;",
            ")",
            "Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam<",
            "Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401142:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/param/K2ExamParam;->p401142:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    .line 3
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401143:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/param/K2ExamParam;->p401143:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    .line 4
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401144:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/param/K2ExamParam;->p401144:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    .line 5
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401145:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/param/K2ExamParam;->p401145:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    .line 6
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401146:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/param/K2ExamParam;->p401146:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    .line 7
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401147:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/param/K2ExamParam;->p401147:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    .line 8
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401148:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/param/K2ExamParam;->p401148:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    .line 9
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401149:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/param/K2ExamParam;->p401149:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    .line 10
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401150:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/param/K2ExamParam;->p401150:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    .line 11
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401151:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/param/K2ExamParam;->p401151:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    .line 12
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401152:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/param/K2ExamParam;->p401152:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    .line 13
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/examk2/param/K2ExamParam;->checkComplete()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "K2ExamParam \u53c2\u6570\u5c5e\u6027\u521b\u5efa\u5f02\u5e38\u8bf7\u68c0\u67e5\u3002"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMisFireRpm()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/param/K2ExamParam;->p401142:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;->getMisFireRpm()I

    move-result v0

    return v0
.end method

.method public getMisFireTime()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/param/K2ExamParam;->p401143:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;->getMisFireTime()I

    move-result v0

    return v0
.end method

.method public getPassScore()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/param/K2ExamParam;->p401144:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;->getPassScore()I

    move-result v0

    return v0
.end method

.method public getTotalScore()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;->getTotalScore()I

    move-result v0

    return v0
.end method
