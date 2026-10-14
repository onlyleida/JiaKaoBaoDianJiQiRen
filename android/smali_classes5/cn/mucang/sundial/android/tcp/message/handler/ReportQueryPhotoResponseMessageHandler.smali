.class public Lcn/mucang/sundial/android/tcp/message/handler/ReportQueryPhotoResponseMessageHandler;
.super Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler<",
        "Lcn/mucang/sundial/android/tcp/message/training/receive/ReportQueryPhotoResponseResponse;",
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
    check-cast p1, Lcn/mucang/sundial/android/tcp/message/training/receive/ReportQueryPhotoResponseResponse;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/android/tcp/message/handler/ReportQueryPhotoResponseMessageHandler;->handleMessage(Lcn/mucang/sundial/android/tcp/message/training/receive/ReportQueryPhotoResponseResponse;)Lcn/mucang/sundial/android/tcp/message/SendMessage;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Lcn/mucang/sundial/android/tcp/message/training/receive/ReportQueryPhotoResponseResponse;)Lcn/mucang/sundial/android/tcp/message/SendMessage;
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/ReportQueryPhotoResponseResponse;->getResponseCode()I

    move-result p1

    const-string v0, "sundial-TAG"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string p1, "\u4e0a\u62a5\u7167\u7247\u67e5\u8be2\u7ed3\u679c\u5e94\u7b54,\u505c\u6b62\u4e0a\u62a5..."

    .line 3
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "\u4e0a\u62a5\u7167\u7247\u67e5\u8be2\u7ed3\u679c\u5e94\u7b54,\u53ef\u4ee5\u4e0a\u62a5,\u7b49\u5f85\u540e\u7eed\u6307\u4ee4..."

    .line 5
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
