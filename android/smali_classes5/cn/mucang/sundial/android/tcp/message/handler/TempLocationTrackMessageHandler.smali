.class public Lcn/mucang/sundial/android/tcp/message/handler/TempLocationTrackMessageHandler;
.super Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler<",
        "Lcn/mucang/sundial/android/tcp/message/receive/TempLocationTrackRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handleMessage(Lcn/mucang/sundial/android/tcp/message/Message;)Lcn/mucang/sundial/android/tcp/message/SendMessage;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/sundial/android/tcp/message/receive/TempLocationTrackRequest;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/android/tcp/message/handler/TempLocationTrackMessageHandler;->handleMessage(Lcn/mucang/sundial/android/tcp/message/receive/TempLocationTrackRequest;)Lcn/mucang/sundial/android/tcp/message/SendMessage;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Lcn/mucang/sundial/android/tcp/message/receive/TempLocationTrackRequest;)Lcn/mucang/sundial/android/tcp/message/SendMessage;
    .locals 5

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6536\u5230\u4e34\u65f6\u4f4d\u7f6e\u8ddf\u8e2a\u7684\u6d88\u606f,\u8ddf\u8e2a\u5468\u671f(\u79d2)\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/receive/TempLocationTrackRequest;->getInterval()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \u8ddf\u8e2a\u65f6\u957f(\u79d2)\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/receive/TempLocationTrackRequest;->getDuration()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "sundial-TAG"

    invoke-static {v3, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/receive/TempLocationTrackRequest;->getInterval()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/receive/TempLocationTrackRequest;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->getInstance()Lcn/mucang/sundial/android/timer/location/LocationReportManager;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/receive/TempLocationTrackRequest;->getInterval()I

    move-result v1

    .line 6
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/receive/TempLocationTrackRequest;->getDuration()J

    move-result-wide v2

    .line 7
    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->configTempTrack(IJ)V

    const/4 p1, 0x0

    return-object p1
.end method
