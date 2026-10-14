.class public Lcn/mucang/android/jiakaoyi/signal/ai/AIDriveActionResult;
.super Lcn/mucang/android/jiakaoyi/signal/ai/AIRecognitionModel;
.source "SourceFile"


# instance fields
.field private handType:I


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
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIDriveActionResult;->handType:I

    return-void
.end method


# virtual methods
.method public getHandType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIDriveActionResult;->handType:I

    return v0
.end method

.method public getOpenDoorAction()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIDriveActionResult;->handType:I

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const-string v0, "\u65e0\u52a8\u4f5c"

    return-object v0

    :cond_0
    const-string v0, "\u53cc\u624b\u5f00\u95e8"

    return-object v0

    :cond_1
    const-string v0, "\u5355\u624b\u5f00\u95e8"

    return-object v0

    :cond_2
    const-string v0, "\u53cc\u624b\u8131\u79bb\u65b9\u5411\u76d8"

    return-object v0
.end method

.method public getSteerWheelAction()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIDriveActionResult;->handType:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "\u65e0\u52a8\u4f5c"

    return-object v0

    :cond_0
    const-string v0, "\u53cc\u624b\u4ea4\u53c9"

    return-object v0

    :cond_1
    const-string v0, "\u53cc\u624b\u6b63\u5e38"

    return-object v0

    :cond_2
    const-string v0, "\u5355\u53f3\u624b"

    return-object v0

    :cond_3
    const-string v0, "\u5355\u5de6\u624b"

    return-object v0

    :cond_4
    const-string v0, "\u53cc\u624b\u8131\u79bb\u65b9\u5411\u76d8"

    return-object v0
.end method

.method public isHandLeft()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIDriveActionResult;->handType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isHandRight()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIDriveActionResult;->handType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHandTypeNone()Z
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIDriveActionResult;->handType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSingleHand()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIDriveActionResult;->handType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setHandType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIDriveActionResult;->handType:I

    return-void
.end method
