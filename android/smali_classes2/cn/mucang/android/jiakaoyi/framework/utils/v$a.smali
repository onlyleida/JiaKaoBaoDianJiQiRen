.class Lcn/mucang/android/jiakaoyi/framework/utils/v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/framework/utils/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/framework/utils/v;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/framework/utils/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/v$a;->a:Lcn/mucang/android/jiakaoyi/framework/utils/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/v$a;->a:Lcn/mucang/android/jiakaoyi/framework/utils/v;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/v;->a(Lcn/mucang/android/jiakaoyi/framework/utils/v;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/v;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/v$a;->a:Lcn/mucang/android/jiakaoyi/framework/utils/v;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/framework/utils/v;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/framework/utils/v$a;->a:Lcn/mucang/android/jiakaoyi/framework/utils/v;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/v;->c(Lcn/mucang/android/jiakaoyi/framework/utils/v;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 5
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/framework/utils/v$a;->a:Lcn/mucang/android/jiakaoyi/framework/utils/v;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/framework/utils/v;->b:I

    int-to-long v3, v3

    .line 6
    invoke-static {v2, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/v;->d(Lcn/mucang/android/jiakaoyi/framework/utils/v;J)J

    goto :goto_1

    .line 7
    :cond_1
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/framework/utils/v$a;->a:Lcn/mucang/android/jiakaoyi/framework/utils/v;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/v;->c(Lcn/mucang/android/jiakaoyi/framework/utils/v;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 8
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/framework/utils/v$a;->a:Lcn/mucang/android/jiakaoyi/framework/utils/v;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/framework/utils/v;->b:I

    int-to-long v6, v3

    sub-long/2addr v0, v6

    int-to-long v6, v3

    sub-long/2addr v6, v0

    cmp-long v0, v6, v4

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    add-int v0, v3, v3

    int-to-long v0, v0

    cmp-long v4, v6, v0

    if-lez v4, :cond_3

    int-to-long v0, v3

    const-wide/16 v3, 0x2

    mul-long v4, v0, v3

    goto :goto_0

    :cond_3
    move-wide v4, v6

    .line 9
    :goto_0
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/v;->c(Lcn/mucang/android/jiakaoyi/framework/utils/v;)J

    move-result-wide v0

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/framework/utils/v$a;->a:Lcn/mucang/android/jiakaoyi/framework/utils/v;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/framework/utils/v;->b:I

    int-to-long v6, v3

    add-long/2addr v0, v6

    invoke-static {v2, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/v;->d(Lcn/mucang/android/jiakaoyi/framework/utils/v;J)J

    move-wide v3, v4

    .line 10
    :goto_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/v;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/v$a;->a:Lcn/mucang/android/jiakaoyi/framework/utils/v;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/v;->e(Lcn/mucang/android/jiakaoyi/framework/utils/v;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
