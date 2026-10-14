.class Lcn/mucang/jiakaoyi/uilib/socket/a0/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/socket/a0/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/jiakaoyi/uilib/socket/a0/l;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/socket/a0/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l$b;->a:Lcn/mucang/jiakaoyi/uilib/socket/a0/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l$b;->a:Lcn/mucang/jiakaoyi/uilib/socket/a0/l;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->g()V

    .line 2
    :goto_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l$b;->a:Lcn/mucang/jiakaoyi/uilib/socket/a0/l;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->f(Lcn/mucang/jiakaoyi/uilib/socket/a0/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "udp\u7b49\u5f85receive\u7ebf\u7a0b\u5173\u95ed"

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    const-wide/16 v0, 0x1

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1f4

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 6
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l$b;->a:Lcn/mucang/jiakaoyi/uilib/socket/a0/l;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->t()V

    return-void
.end method


# virtual methods
.method public synthetic b()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/l$b;->a()V

    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l$b;->a:Lcn/mucang/jiakaoyi/uilib/socket/a0/l;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->c(Lcn/mucang/jiakaoyi/uilib/socket/a0/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l$b;->a:Lcn/mucang/jiakaoyi/uilib/socket/a0/l;

    invoke-static {v2}, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->d(Lcn/mucang/jiakaoyi/uilib/socket/a0/l;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f40

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l$b;->a:Lcn/mucang/jiakaoyi/uilib/socket/a0/l;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->d(Lcn/mucang/jiakaoyi/uilib/socket/a0/l;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const-string v0, "8\u79d2\u6ca1\u6709\u6536\u5230rtcm\u6570\u636e\uff0c\u91cd\u65b0\u542f\u52a8udp\u8fde\u63a5"

    .line 4
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 5
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/socket/a0/f;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/f;-><init>(Lcn/mucang/jiakaoyi/uilib/socket/a0/l$b;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l$b;->a:Lcn/mucang/jiakaoyi/uilib/socket/a0/l;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->e(Lcn/mucang/jiakaoyi/uilib/socket/a0/l;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l$b;->a:Lcn/mucang/jiakaoyi/uilib/socket/a0/l;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->e(Lcn/mucang/jiakaoyi/uilib/socket/a0/l;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method
