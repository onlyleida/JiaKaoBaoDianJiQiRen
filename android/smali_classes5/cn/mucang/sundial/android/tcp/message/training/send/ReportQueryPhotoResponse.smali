.class public Lcn/mucang/sundial/android/tcp/message/training/send/ReportQueryPhotoResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/message/training/ExtendSendMessage;


# instance fields
.field private finished:Z

.field private photoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode()[B
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;-><init>()V

    .line 2
    iget-boolean v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportQueryPhotoResponse;->finished:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    .line 5
    :goto_0
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportQueryPhotoResponse;->totalCount:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    .line 6
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportQueryPhotoResponse;->photoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    .line 8
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportQueryPhotoResponse;->photoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0xa

    .line 9
    invoke-virtual {v0, v2, v3}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendString(Ljava/lang/String;I)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    const/16 v0, 0x303

    return v0
.end method

.method public getPhotoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportQueryPhotoResponse;->photoList:Ljava/util/List;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportQueryPhotoResponse;->totalCount:I

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportQueryPhotoResponse;->finished:Z

    return v0
.end method

.method public synthetic isNeedReply()Z
    .locals 1

    invoke-static {p0}, Lcn/mucang/sundial/android/tcp/message/training/a;->$default$isNeedReply(Lcn/mucang/sundial/android/tcp/message/training/ExtendSendMessage;)Z

    move-result v0

    return v0
.end method

.method public synthetic isRealtimeMessage()Z
    .locals 1

    invoke-static {p0}, Lcn/mucang/sundial/android/tcp/message/training/a;->$default$isRealtimeMessage(Lcn/mucang/sundial/android/tcp/message/training/ExtendSendMessage;)Z

    move-result v0

    return v0
.end method

.method public setFinished(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportQueryPhotoResponse;->finished:Z

    return-void
.end method

.method public setPhotoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportQueryPhotoResponse;->photoList:Ljava/util/List;

    return-void
.end method

.method public setTotalCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportQueryPhotoResponse;->totalCount:I

    return-void
.end method
