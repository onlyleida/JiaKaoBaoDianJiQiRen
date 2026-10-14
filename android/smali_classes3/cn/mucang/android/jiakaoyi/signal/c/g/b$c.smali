.class public Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/signal/c/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:J

.field public b:F

.field public c:Z

.field public d:J

.field public e:F

.field public f:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->a:J

    const/4 v2, 0x0

    .line 3
    iput v2, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->b:F

    const/4 v3, 0x0

    .line 4
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->c:Z

    .line 5
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->d:J

    .line 6
    iput v2, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->e:F

    .line 7
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->f:J

    return-void
.end method

.method public static a(Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;)Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;-><init>()V

    .line 2
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->b:F

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->b:F

    .line 3
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->a:J

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->a:J

    .line 4
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->c:Z

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->c:Z

    .line 5
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->d:J

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->d:J

    .line 6
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->e:F

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->e:F

    .line 7
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->f:J

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->f:J

    return-object v0
.end method
