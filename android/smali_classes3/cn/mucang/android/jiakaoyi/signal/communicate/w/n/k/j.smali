.class Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:I = 0x3e8


# instance fields
.field private a:J

.field private volatile b:Z

.field private final c:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j$a;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;->c:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;->b:Z

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;->a:J

    return-wide v0
.end method

.method static synthetic b()I
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;->d:I

    return v0
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;->b:Z

    return p0
.end method


# virtual methods
.method d()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;->a:J

    return-void
.end method

.method e()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1388

    .line 3
    sput v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;->d:I

    .line 4
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;->c:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void
.end method

.method f()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;->b:Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;->c:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    return-void
.end method
