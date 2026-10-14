.class Lcn/mucang/android/jiakaoyi/teachingk2/push/m0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/VideoDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/push/m0;->createDecoder(Lorg/webrtc/VideoCodecInfo;)Lorg/webrtc/VideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$a;

.field final synthetic b:Lorg/webrtc/VideoDecoder;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/push/m0;Lorg/webrtc/VideoDecoder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/m0$a;->b:Lorg/webrtc/VideoDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "ai_camera_traffic"

    const-string p2, "AI\u89c6\u9891"

    .line 2
    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper;->g(Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$a;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/m0$a;->a:Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$a;

    return-void
.end method


# virtual methods
.method public synthetic createNativeVideoDecoder()J
    .locals 2

    invoke-static {p0}, Lorg/webrtc/r0;->$default$createNativeVideoDecoder(Lorg/webrtc/VideoDecoder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public decode(Lorg/webrtc/EncodedImage;Lorg/webrtc/VideoDecoder$DecodeInfo;)Lorg/webrtc/VideoCodecStatus;
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/m0$a;->a:Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$a;

    iget-object v1, p1, Lorg/webrtc/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$a;->c(J)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/m0$a;->b:Lorg/webrtc/VideoDecoder;

    invoke-interface {v0, p1, p2}, Lorg/webrtc/VideoDecoder;->decode(Lorg/webrtc/EncodedImage;Lorg/webrtc/VideoDecoder$DecodeInfo;)Lorg/webrtc/VideoCodecStatus;

    move-result-object p1

    return-object p1
.end method

.method public getImplementationName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/m0$a;->b:Lorg/webrtc/VideoDecoder;

    invoke-interface {v0}, Lorg/webrtc/VideoDecoder;->getImplementationName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefersLateDecoding()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/m0$a;->b:Lorg/webrtc/VideoDecoder;

    invoke-interface {v0}, Lorg/webrtc/VideoDecoder;->getPrefersLateDecoding()Z

    move-result v0

    return v0
.end method

.method public initDecode(Lorg/webrtc/VideoDecoder$Settings;Lorg/webrtc/VideoDecoder$Callback;)Lorg/webrtc/VideoCodecStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/m0$a;->b:Lorg/webrtc/VideoDecoder;

    invoke-interface {v0, p1, p2}, Lorg/webrtc/VideoDecoder;->initDecode(Lorg/webrtc/VideoDecoder$Settings;Lorg/webrtc/VideoDecoder$Callback;)Lorg/webrtc/VideoCodecStatus;

    move-result-object p1

    return-object p1
.end method

.method public release()Lorg/webrtc/VideoCodecStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/m0$a;->b:Lorg/webrtc/VideoDecoder;

    invoke-interface {v0}, Lorg/webrtc/VideoDecoder;->release()Lorg/webrtc/VideoCodecStatus;

    move-result-object v0

    return-object v0
.end method
