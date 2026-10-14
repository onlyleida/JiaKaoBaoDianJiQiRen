.class public Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$a;
.super Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public final c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public final d:D


# direct methods
.method public constructor <init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    .line 3
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->k()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    mul-double v0, v0, v2

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->k()J

    move-result-wide v4

    long-to-double v4, v4

    mul-double v4, v4, v2

    invoke-direct {p1, v0, v1, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$a;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->k()J

    move-result-wide v0

    long-to-double v0, v0

    mul-double v0, v0, v2

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->k()J

    move-result-wide v4

    long-to-double v4, v4

    mul-double v4, v4, v2

    invoke-direct {p1, v0, v1, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$a;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result p1

    int-to-double p1, p1

    mul-double p1, p1, v2

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$a;->d:D

    return-void
.end method
