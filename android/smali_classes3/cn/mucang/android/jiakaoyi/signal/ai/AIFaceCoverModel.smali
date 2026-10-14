.class public Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceCoverModel;
.super Lcn/mucang/android/jiakaoyi/signal/ai/AIRecognitionModel;
.source "SourceFile"


# instance fields
.field public final result:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/ai/AIRecognitionModel;-><init>()V

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceCoverModel;->result:I

    return-void
.end method


# virtual methods
.method public isMask()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceCoverModel;->result:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isOtherCover()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceCoverModel;->result:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSideFace()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceCoverModel;->result:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSunglasses()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceCoverModel;->result:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public noCover()Z
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceCoverModel;->result:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
