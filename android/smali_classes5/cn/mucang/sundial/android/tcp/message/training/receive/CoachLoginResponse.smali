.class public Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse;
.super Lcn/mucang/sundial/android/tcp/message/training/receive/BaseExtendReceiveMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse$SpeakOption;,
        Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse$Result;
    }
.end annotation


# instance fields
.field private coachNo:Ljava/lang/String;

.field private extraInfo:Ljava/lang/String;

.field private result:Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse$Result;

.field private speakExtraInfo:Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse$SpeakOption;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/message/training/receive/BaseExtendReceiveMessage;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse$SpeakOption;->GLOBAL_CONFIG:Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse$SpeakOption;

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse;->speakExtraInfo:Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse$SpeakOption;

    return-void
.end method


# virtual methods
.method public getCoachNo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse;->coachNo:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse;->extraInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    const v0, 0x8101

    return v0
.end method

.method public getResult()Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse$Result;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse;->result:Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse$Result;

    return-object v0
.end method

.method public getSpeakExtraInfo()Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse$SpeakOption;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse;->speakExtraInfo:Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse$SpeakOption;

    return-object v0
.end method

.method public init([B)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;

    invoke-direct {v0, p1}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;-><init>([B)V

    .line 2
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBYTE()I

    move-result p1

    invoke-static {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse$Result;->from(I)Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse$Result;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse;->result:Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse$Result;

    const/16 p1, 0x10

    .line 3
    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse;->coachNo:Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBYTE()I

    move-result p1

    invoke-static {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse$SpeakOption;->from(I)Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse$SpeakOption;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse;->speakExtraInfo:Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse$SpeakOption;

    .line 5
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBYTE()I

    move-result p1

    if-lez p1, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse;->extraInfo:Ljava/lang/String;

    :cond_0
    return-void
.end method
