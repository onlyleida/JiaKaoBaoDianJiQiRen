.class public Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e;
.super Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$a;,
        Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;,
        Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$c;
    }
.end annotation


# direct methods
.method public constructor <init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    .line 2
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->h(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$c;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$c;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->h(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$a;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$a;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->h(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
