.class public abstract Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract canCheckGlobalEvent()Z
.end method

.method protected abstract checkComplete()Z
.end method

.method public enableTwoChannel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract fillGlobalConfig(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam<",
            "TT;>;"
        }
    .end annotation
.end method

.method public getMisFireRpm()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public getMisFireTime()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPassScore()I
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x5a

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x50

    :goto_1
    return v0
.end method

.method public getTotalScore()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public isPlayTeachVoice()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public needOrderExe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
