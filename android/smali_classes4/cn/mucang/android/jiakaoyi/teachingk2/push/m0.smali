.class public Lcn/mucang/android/jiakaoyi/teachingk2/push/m0;
.super Lorg/webrtc/HardwareVideoDecoderFactory;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/webrtc/EglBase$Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/HardwareVideoDecoderFactory;-><init>(Lorg/webrtc/EglBase$Context;)V

    return-void
.end method


# virtual methods
.method public createDecoder(Lorg/webrtc/VideoCodecInfo;)Lorg/webrtc/VideoDecoder;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lorg/webrtc/HardwareVideoDecoderFactory;->createDecoder(Lorg/webrtc/VideoCodecInfo;)Lorg/webrtc/VideoDecoder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/m0$a;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/m0$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/push/m0;Lorg/webrtc/VideoDecoder;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
