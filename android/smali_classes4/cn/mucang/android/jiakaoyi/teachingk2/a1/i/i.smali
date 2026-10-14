.class public Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field private b:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;->a:J

    const-wide/16 p1, 0x0

    .line 3
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;->b:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;->b:J

    return-void
.end method

.method public b(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;->a:J

    return-void
.end method

.method public c(J)Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;->b:J

    .line 3
    :cond_0
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;->b:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;->a:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 4
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;->b:J

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
