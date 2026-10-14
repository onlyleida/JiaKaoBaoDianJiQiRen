.class public Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceResult;
.super Lcn/mucang/android/jiakaoyi/signal/ai/AIRecognitionModel;
.source "SourceFile"


# static fields
.field public static final ANGER:I = 0x3

.field public static final SADNESS:I = 0x2

.field public static final SURPRISE:I = 0x4


# instance fields
.field private emotion:I


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
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceResult;->emotion:I

    return-void
.end method


# virtual methods
.method public getEmotion()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceResult;->emotion:I

    return v0
.end method

.method public getEmotionDesc()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceResult;->emotion:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "\u751f\u6c14"

    return-object v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "\u9ad8\u5174"

    return-object v0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "\u60b2\u4f24"

    return-object v0

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    const-string v0, "\u60ca\u8bb6"

    return-object v0

    :cond_3
    if-nez v0, :cond_4

    const-string v0, "\u6b63\u5e38"

    return-object v0

    :cond_4
    const-string v0, "\u672a\u77e5"

    return-object v0
.end method

.method public setEmotion(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceResult;->emotion:I

    return-void
.end method
