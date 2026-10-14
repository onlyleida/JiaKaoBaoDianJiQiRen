.class public Lcn/mucang/android/jiakaoyi/signal/utils/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:J

.field private b:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/utils/i;->a:J

    const-wide/16 p1, 0x0

    .line 3
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/utils/i;->b:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/utils/i;->b:J

    return-void
.end method

.method public b(ZJ)Z
    .locals 5

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/signal/utils/i;->b:J

    cmp-long p1, v3, v1

    if-nez p1, :cond_0

    .line 2
    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/signal/utils/i;->b:J

    .line 3
    :cond_0
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/utils/i;->b:J

    sub-long/2addr p2, v1

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/utils/i;->a:J

    cmp-long p1, p2, v1

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 4
    :cond_2
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/utils/i;->b:J

    return v0
.end method
