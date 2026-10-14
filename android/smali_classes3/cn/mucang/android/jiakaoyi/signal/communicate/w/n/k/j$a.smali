.class Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j$a;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j$a;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;->a(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;->b()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j$a;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;->f()V

    const-string v0, "\u8bfb\u6570\u636e\u8d85\u65f6 \u901a\u4fe1\u91cd\u8fde"

    .line 4
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->J()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j$a;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;->c(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/j;)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x64

    .line 7
    invoke-static {p0, v0, v1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method
