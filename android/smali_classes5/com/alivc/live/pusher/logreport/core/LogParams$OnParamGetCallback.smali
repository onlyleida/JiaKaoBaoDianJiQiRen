.class public interface abstract Lcom/alivc/live/pusher/logreport/core/LogParams$OnParamGetCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/live/pusher/logreport/core/LogParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnParamGetCallback"
.end annotation


# virtual methods
.method public abstract getExtra()Ljava/lang/String;
.end method

.method public abstract getModule()Ljava/lang/String;
.end method

.method public abstract getPushId()Ljava/lang/String;
.end method

.method public abstract getPushProtocol()Ljava/lang/String;
.end method

.method public abstract getPushUrl()Ljava/lang/String;
.end method

.method public abstract getSessionId()Ljava/lang/String;
.end method

.method public abstract getTopic()Ljava/lang/String;
.end method

.method public abstract getTopicParam()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTraceId()Ljava/lang/String;
.end method

.method public abstract isAudioOnly()Z
.end method

.method public abstract isExternStream()Z
.end method

.method public abstract isPush()Z
.end method

.method public abstract isVideoOnly()Z
.end method
