.class public final Lcn/mucang/sundial/library/entity/Platform;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0010\u0007\n\u0002\u0008&\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008;\u0010<J\r\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\"\u0010\t\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0007\"\u0004\u0008\u0012\u0010\u0013R\"\u0010\u0014\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\n\u001a\u0004\u0008\u0015\u0010\u000c\"\u0004\u0008\u0016\u0010\u000eR\"\u0010\u0018\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\"\u0010\u001e\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\n\u001a\u0004\u0008\u001f\u0010\u000c\"\u0004\u0008 \u0010\u000eR\"\u0010!\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010\n\u001a\u0004\u0008\"\u0010\u000c\"\u0004\u0008#\u0010\u000eR\"\u0010$\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010\u0019\u001a\u0004\u0008%\u0010\u001b\"\u0004\u0008&\u0010\u001dR\"\u0010\'\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u0010\u0019\u001a\u0004\u0008(\u0010\u001b\"\u0004\u0008)\u0010\u001dR$\u0010*\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010\u0010\u001a\u0004\u0008+\u0010\u0007\"\u0004\u0008,\u0010\u0013R\"\u0010-\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008-\u0010\n\u001a\u0004\u0008.\u0010\u000c\"\u0004\u0008/\u0010\u000eR\"\u00100\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00080\u0010\n\u001a\u0004\u00081\u0010\u000c\"\u0004\u00082\u0010\u000eR\"\u00103\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00083\u00104\u001a\u0004\u00085\u0010\u0004\"\u0004\u00086\u00107R\"\u00108\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00088\u0010\u0019\u001a\u0004\u00089\u0010\u001b\"\u0004\u0008:\u0010\u001d\u00a8\u0006="
    }
    d2 = {
        "Lcn/mucang/sundial/library/entity/Platform;",
        "Ljava/io/Serializable;",
        "",
        "isValid",
        "()Z",
        "",
        "toString",
        "()Ljava/lang/String;",
        "",
        "port",
        "I",
        "getPort",
        "()I",
        "setPort",
        "(I)V",
        "hostUrl",
        "Ljava/lang/String;",
        "getHostUrl",
        "setHostUrl",
        "(Ljava/lang/String;)V",
        "waitTakePhoto",
        "getWaitTakePhoto",
        "setWaitTakePhoto",
        "",
        "subject2LearnDataFactor",
        "F",
        "getSubject2LearnDataFactor",
        "()F",
        "setSubject2LearnDataFactor",
        "(F)V",
        "mileageAccuracy",
        "getMileageAccuracy",
        "setMileageAccuracy",
        "liveImageSecond",
        "getLiveImageSecond",
        "setLiveImageSecond",
        "learnDataFactor",
        "getLearnDataFactor",
        "setLearnDataFactor",
        "maxSpeed",
        "getMaxSpeed",
        "setMaxSpeed",
        "ip",
        "getIp",
        "setIp",
        "logInOutSecond",
        "getLogInOutSecond",
        "setLogInOutSecond",
        "loginMode",
        "getLoginMode",
        "setLoginMode",
        "takePhotoVoice",
        "Z",
        "getTakePhotoVoice",
        "setTakePhotoVoice",
        "(Z)V",
        "subject3LearnDataFactor",
        "getSubject3LearnDataFactor",
        "setSubject3LearnDataFactor",
        "<init>",
        "()V",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private hostUrl:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private learnDataFactor:F

.field private liveImageSecond:I

.field private logInOutSecond:I

.field private loginMode:I

.field private maxSpeed:F

.field private mileageAccuracy:I

.field private port:I

.field private subject2LearnDataFactor:F

.field private subject3LearnDataFactor:F

.field private takePhotoVoice:Z

.field private waitTakePhoto:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 2
    iput v0, p0, Lcn/mucang/sundial/library/entity/Platform;->mileageAccuracy:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcn/mucang/sundial/library/entity/Platform;->takePhotoVoice:Z

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lcn/mucang/sundial/library/entity/Platform;->waitTakePhoto:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Lcn/mucang/sundial/library/entity/Platform;->learnDataFactor:F

    const/4 v1, 0x5

    .line 6
    iput v1, p0, Lcn/mucang/sundial/library/entity/Platform;->logInOutSecond:I

    .line 7
    iput v1, p0, Lcn/mucang/sundial/library/entity/Platform;->liveImageSecond:I

    .line 8
    iput v0, p0, Lcn/mucang/sundial/library/entity/Platform;->subject2LearnDataFactor:F

    .line 9
    iput v0, p0, Lcn/mucang/sundial/library/entity/Platform;->subject3LearnDataFactor:F

    .line 10
    iput v0, p0, Lcn/mucang/sundial/library/entity/Platform;->maxSpeed:F

    return-void
.end method


# virtual methods
.method public final getHostUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/entity/Platform;->hostUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getIp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/entity/Platform;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public final getLearnDataFactor()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/library/entity/Platform;->learnDataFactor:F

    return v0
.end method

.method public final getLiveImageSecond()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/library/entity/Platform;->liveImageSecond:I

    return v0
.end method

.method public final getLogInOutSecond()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/library/entity/Platform;->logInOutSecond:I

    return v0
.end method

.method public final getLoginMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/library/entity/Platform;->loginMode:I

    return v0
.end method

.method public final getMaxSpeed()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/library/entity/Platform;->maxSpeed:F

    return v0
.end method

.method public final getMileageAccuracy()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/library/entity/Platform;->mileageAccuracy:I

    return v0
.end method

.method public final getPort()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/library/entity/Platform;->port:I

    return v0
.end method

.method public final getSubject2LearnDataFactor()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/library/entity/Platform;->subject2LearnDataFactor:F

    return v0
.end method

.method public final getSubject3LearnDataFactor()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/library/entity/Platform;->subject3LearnDataFactor:F

    return v0
.end method

.method public final getTakePhotoVoice()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/sundial/library/entity/Platform;->takePhotoVoice:Z

    return v0
.end method

.method public final getWaitTakePhoto()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/library/entity/Platform;->waitTakePhoto:I

    return v0
.end method

.method public final isValid()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/entity/Platform;->ip:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/l;->r(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_4

    iget v0, p0, Lcn/mucang/sundial/library/entity/Platform;->port:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcn/mucang/sundial/library/entity/Platform;->hostUrl:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/text/l;->r(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public final setHostUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/entity/Platform;->hostUrl:Ljava/lang/String;

    return-void
.end method

.method public final setIp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/entity/Platform;->ip:Ljava/lang/String;

    return-void
.end method

.method public final setLearnDataFactor(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/library/entity/Platform;->learnDataFactor:F

    return-void
.end method

.method public final setLiveImageSecond(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/library/entity/Platform;->liveImageSecond:I

    return-void
.end method

.method public final setLogInOutSecond(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/library/entity/Platform;->logInOutSecond:I

    return-void
.end method

.method public final setLoginMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/library/entity/Platform;->loginMode:I

    return-void
.end method

.method public final setMaxSpeed(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/library/entity/Platform;->maxSpeed:F

    return-void
.end method

.method public final setMileageAccuracy(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/library/entity/Platform;->mileageAccuracy:I

    return-void
.end method

.method public final setPort(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/library/entity/Platform;->port:I

    return-void
.end method

.method public final setSubject2LearnDataFactor(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/library/entity/Platform;->subject2LearnDataFactor:F

    return-void
.end method

.method public final setSubject3LearnDataFactor(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/library/entity/Platform;->subject3LearnDataFactor:F

    return-void
.end method

.method public final setTakePhotoVoice(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/sundial/library/entity/Platform;->takePhotoVoice:Z

    return-void
.end method

.method public final setWaitTakePhoto(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/library/entity/Platform;->waitTakePhoto:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JSON.toJSONString(this)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
