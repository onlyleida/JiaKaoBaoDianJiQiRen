.class public Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/UserTipsTimes;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mucangId:Ljava/lang/String;

.field private ruleCode:Ljava/lang/String;

.field private times:I

.field private userId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMucangId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/UserTipsTimes;->mucangId:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/UserTipsTimes;->ruleCode:Ljava/lang/String;

    return-object v0
.end method

.method public getTimes()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/UserTipsTimes;->times:I

    return v0
.end method

.method public getUserId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/UserTipsTimes;->userId:Ljava/lang/Long;

    return-object v0
.end method

.method public setMucangId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/UserTipsTimes;->mucangId:Ljava/lang/String;

    return-void
.end method

.method public setRuleCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/UserTipsTimes;->ruleCode:Ljava/lang/String;

    return-void
.end method

.method public setTimes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/UserTipsTimes;->times:I

    return-void
.end method

.method public setUserId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/UserTipsTimes;->userId:Ljava/lang/Long;

    return-void
.end method
