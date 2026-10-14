.class public Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/signal/c/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:F

.field private c:J

.field private d:F

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->a:J

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->b:F

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->e:Z

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->e:Z

    return p0
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->e:Z

    return p1
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->c:J

    return-wide v0
.end method

.method static synthetic d(Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->c:J

    return-wide p1
.end method

.method static synthetic e(Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;)F
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->d:F

    return p0
.end method

.method static synthetic f(Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->d:F

    return p1
.end method

.method public static g(Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;)V
    .locals 2

    .line 1
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->a:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->a:J

    .line 2
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->b:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->b:F

    .line 3
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->c:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->c:J

    .line 4
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->d:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->d:F

    .line 5
    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->e:Z

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->e:Z

    return-void
.end method


# virtual methods
.method public h()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->b:F

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->d:F

    return-void
.end method

.method public i()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->a:J

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->c:J

    return-void
.end method
