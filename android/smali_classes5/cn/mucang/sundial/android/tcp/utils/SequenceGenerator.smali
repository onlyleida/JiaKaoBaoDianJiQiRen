.class public Lcn/mucang/sundial/android/tcp/utils/SequenceGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/message/NextMessageSequenceGenerator;


# instance fields
.field private messageIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getNextMessageIndex()I
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcn/mucang/sundial/android/tcp/utils/SequenceGenerator;->messageIndex:I

    .line 2
    invoke-static {v0}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->isValidWORD(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcn/mucang/sundial/android/tcp/utils/SequenceGenerator;->messageIndex:I

    .line 4
    :cond_0
    iget v1, p0, Lcn/mucang/sundial/android/tcp/utils/SequenceGenerator;->messageIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/mucang/sundial/android/tcp/utils/SequenceGenerator;->messageIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
