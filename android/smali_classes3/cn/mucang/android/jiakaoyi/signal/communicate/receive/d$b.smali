.class public Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$b;
.super Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    .line 2
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    .line 3
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    return-void
.end method
