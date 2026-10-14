.class public Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private final b:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/h;->b:J

    const-wide/16 p1, 0x0

    .line 3
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/h;->a:J

    return-void
.end method


# virtual methods
.method public a(JZ)Z
    .locals 5

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    if-eqz p3, :cond_2

    .line 1
    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/h;->a:J

    cmp-long p3, v3, v1

    if-nez p3, :cond_0

    .line 2
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/h;->a:J

    .line 3
    :cond_0
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/h;->a:J

    sub-long/2addr p1, v1

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/h;->b:J

    cmp-long p3, p1, v1

    if-lez p3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 4
    :cond_2
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/h;->a:J

    return v0
.end method
