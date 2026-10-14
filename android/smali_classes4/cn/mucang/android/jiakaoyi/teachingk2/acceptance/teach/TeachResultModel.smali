.class public final Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachResultModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0014\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0012\"\u0004\u0008\u001a\u0010\u0014R\u001a\u0010\u001b\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0006\"\u0004\u0008\u001d\u0010\u0008R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0012\"\u0004\u0008 \u0010\u0014R\u001c\u0010!\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0012\"\u0004\u0008#\u0010\u0014\u00a8\u0006$"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachResultModel;",
        "Ljava/io/Serializable;",
        "()V",
        "grade",
        "",
        "getGrade",
        "()I",
        "setGrade",
        "(I)V",
        "hasTrigger",
        "",
        "getHasTrigger",
        "()Z",
        "setHasTrigger",
        "(Z)V",
        "playText",
        "",
        "getPlayText",
        "()Ljava/lang/String;",
        "setPlayText",
        "(Ljava/lang/String;)V",
        "step",
        "getStep",
        "setStep",
        "stepName",
        "getStepName",
        "setStepName",
        "subStep",
        "getSubStep",
        "setSubStep",
        "subStepName",
        "getSubStepName",
        "setSubStepName",
        "teachModelId",
        "getTeachModelId",
        "setTeachModelId",
        "teachbase_release"
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
.field private grade:I

.field private hasTrigger:Z

.field private playText:Ljava/lang/String;

.field private step:I

.field private stepName:Ljava/lang/String;

.field private subStep:I

.field private subStepName:Ljava/lang/String;

.field private teachModelId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getGrade()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachResultModel;->grade:I

    return v0
.end method

.method public final getHasTrigger()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachResultModel;->hasTrigger:Z

    return v0
.end method

.method public final getPlayText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachResultModel;->playText:Ljava/lang/String;

    return-object v0
.end method

.method public final getStep()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachResultModel;->step:I

    return v0
.end method

.method public final getStepName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachResultModel;->stepName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubStep()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachResultModel;->subStep:I

    return v0
.end method

.method public final getSubStepName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachResultModel;->subStepName:Ljava/lang/String;

    return-object v0
.end method

.method public final getTeachModelId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachResultModel;->teachModelId:Ljava/lang/String;

    return-object v0
.end method

.method public final setGrade(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachResultModel;->grade:I

    return-void
.end method

.method public final setHasTrigger(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachResultModel;->hasTrigger:Z

    return-void
.end method

.method public final setPlayText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachResultModel;->playText:Ljava/lang/String;

    return-void
.end method

.method public final setStep(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachResultModel;->step:I

    return-void
.end method

.method public final setStepName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachResultModel;->stepName:Ljava/lang/String;

    return-void
.end method

.method public final setSubStep(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachResultModel;->subStep:I

    return-void
.end method

.method public final setSubStepName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachResultModel;->subStepName:Ljava/lang/String;

    return-void
.end method

.method public final setTeachModelId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachResultModel;->teachModelId:Ljava/lang/String;

    return-void
.end method
