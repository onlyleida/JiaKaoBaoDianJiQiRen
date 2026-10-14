.class public final Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/d<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028\u0000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0006\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "emit",
        "",
        "value",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1$a;->b:Ljava/lang/String;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 4
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/SdpBean;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/SdpBean;

    .line 5
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/SdpBean;

    const-string v0, "WebRtcCamera"

    if-eqz p1, :cond_4

    .line 7
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/SdpBean;->getCode()I

    move-result v1

    const/16 v2, 0x190

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/SdpBean;->getSdp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string p2, "\u6210\u529f\u83b7\u53d6\u5230AI\u76d2\u5b50\u7684sdp\u4fe1\u606f\uff0c\u4e0b\u4e00\u6b65\u51c6\u5907\u8fde\u63a5\u64ad\u653e"

    .line 9
    invoke-static {v0, p2}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "rtc\u6210\u529f\u83b7\u53d6\u5230AI\u76d2\u5b50\u7684sdp\u4fe1\u606f\uff0c\u4e0b\u4e00\u6b65\u51c6\u5907\u8fde\u63a5\u64ad\u653e"

    .line 10
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 11
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/SdpBean;->getSdp()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->m(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;Ljava/lang/String;)V

    .line 12
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    goto :goto_2

    .line 13
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1$a;->b:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->a(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;Ljava/lang/String;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_3

    return-object p1

    :cond_3
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    goto :goto_2

    :cond_4
    :goto_1
    const-string p1, "\u672a\u5339\u914d\u5230sdp"

    .line 14
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "rtc\u672a\u5339\u914d\u5230sdp"

    .line 15
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 16
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1$a;->b:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->a(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;Ljava/lang/String;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_5

    return-object p1

    .line 17
    :cond_5
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    goto :goto_2

    .line 18
    :cond_6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1$a;->b:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->a(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;Ljava/lang/String;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_7

    return-object p1

    :cond_7
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    :goto_2
    return-object p1
.end method
