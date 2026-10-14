.class public Lcn/mucang/sundial/android/tcp/message/handler/CourseQueryMessageManager;
.super Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler<",
        "Lcn/mucang/sundial/android/tcp/message/training/receive/CourseQueryRequest;",
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

.method static synthetic a(Ljava/util/List;)V
    .locals 3

    const-wide/16 v0, 0x3e8

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/MiscUtils;->p(J)V

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/timer/train/TrainManager;->getInstance()Lcn/mucang/sundial/android/timer/train/TrainManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, v2}, Lcn/mucang/sundial/android/timer/train/TrainManager;->addCourseRecords(IZLjava/util/List;Z)V

    .line 3
    invoke-static {}, Lcn/mucang/sundial/android/timer/train/TrainManager;->getInstance()Lcn/mucang/sundial/android/timer/train/TrainManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/sundial/android/timer/train/TrainManager;->uploadAllQueuedRecords()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handleMessage(Lcn/mucang/sundial/android/tcp/message/Message;)Lcn/mucang/sundial/android/tcp/message/SendMessage;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/sundial/android/tcp/message/training/receive/CourseQueryRequest;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/android/tcp/message/handler/CourseQueryMessageManager;->handleMessage(Lcn/mucang/sundial/android/tcp/message/training/receive/CourseQueryRequest;)Lcn/mucang/sundial/android/tcp/message/SendMessage;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Lcn/mucang/sundial/android/tcp/message/training/receive/CourseQueryRequest;)Lcn/mucang/sundial/android/tcp/message/SendMessage;
    .locals 6

    const-string v0, "\u547d\u4ee4\u4e0a\u62a5\u5b66\u65f6\u3002\u3002\u3002"

    .line 2
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/training/send/CourseQueryResponse;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/training/send/CourseQueryResponse;-><init>()V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/message/training/send/CourseQueryResponse;->setResult(I)V

    .line 5
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/mucang/sundial/android/SundialManager;->sendMessage(Lcn/mucang/sundial/android/tcp/message/SendMessage;)V

    .line 6
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/CourseQueryRequest;->getQueryType()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 7
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/CourseQueryRequest;->getStartTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->toTimestamp(Ljava/lang/String;)J

    move-result-wide v2

    .line 8
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/CourseQueryRequest;->getEndTime()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->toTimestamp(Ljava/lang/String;)J

    move-result-wide v4

    .line 9
    invoke-static {}, Lcn/mucang/sundial/android/timer/train/TrainManager;->getInstance()Lcn/mucang/sundial/android/timer/train/TrainManager;

    move-result-object p1

    invoke-virtual {p1, v2, v3, v4, v5}, Lcn/mucang/sundial/android/timer/train/TrainManager;->queryCourseRecordUpload(JJ)Ljava/util/List;

    move-result-object p1

    const-string v2, "\u547d\u4ee4\u4e0a\u62a5\u5b66\u65f6\u3002\u3002\u3002\u6309\u65f6\u95f4\u67e5\u8be2"

    .line 10
    invoke-static {v2}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 11
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/CourseQueryRequest;->getRequestCount()I

    move-result p1

    .line 12
    invoke-static {}, Lcn/mucang/sundial/android/timer/train/TrainManager;->getInstance()Lcn/mucang/sundial/android/timer/train/TrainManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcn/mucang/sundial/android/timer/train/TrainManager;->queryCourseRecordUpload(I)Ljava/util/List;

    move-result-object p1

    const-string v2, "\u547d\u4ee4\u4e0a\u62a5\u5b66\u65f6\u3002\u3002\u3002\u6309\u6761\u6570\u67e5\u8be2"

    .line 13
    invoke-static {v2}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 14
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    const/4 v2, 0x4

    goto :goto_2

    :cond_3
    const/4 v2, 0x3

    .line 15
    :goto_2
    invoke-virtual {v0, v2}, Lcn/mucang/sundial/android/tcp/message/training/send/CourseQueryResponse;->setResult(I)V

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u547d\u4ee4\u4e0a\u62a5\u5b66\u65f6\u3002\u3002\u3002hasRecord="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    if-eqz v1, :cond_4

    .line 17
    new-instance v1, Lcn/mucang/sundial/android/tcp/message/handler/a;

    invoke-direct {v1, p1}, Lcn/mucang/sundial/android/tcp/message/handler/a;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lcn/mucang/android/ui/framework/fetcher/ThreadPool;->a(Ljava/lang/Runnable;)V

    :cond_4
    return-object v0
.end method
