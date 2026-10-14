.class public Lcn/mucang/android/jiakaoyi/signal/ai/AIDMSResult;
.super Lcn/mucang/android/jiakaoyi/signal/ai/AIRecognitionModel;
.source "SourceFile"


# instance fields
.field private actionCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/ai/AIRecognitionModel;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/ai/AIRecognitionModel;-><init>()V

    .line 3
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIDMSResult;->actionCode:I

    return-void
.end method


# virtual methods
.method public getActionCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIDMSResult;->actionCode:I

    return v0
.end method

.method public getActionDesc()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/ai/AIDMSResult;->isNormal()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u65e0\u52a8\u4f5c"

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/ai/AIDMSResult;->isFatigue()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\u75b2\u52b3\u9a7e\u9a76 "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/ai/AIDMSResult;->isSmoking()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "\u62bd\u70df "

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/ai/AIDMSResult;->isDrinking()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "\u559d\u4e1c\u897f "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/ai/AIDMSResult;->isPhoning()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "\u6253\u7535\u8bdd "

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDrinking()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIDMSResult;->actionCode:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFatigue()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIDMSResult;->actionCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isNormal()Z
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIDMSResult;->actionCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPhoning()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIDMSResult;->actionCode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSmoking()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIDMSResult;->actionCode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setActionCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIDMSResult;->actionCode:I

    return-void
.end method
