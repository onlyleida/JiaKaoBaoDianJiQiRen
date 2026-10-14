.class public Lcn/mucang/android/jiakaoyi/signal/communicate/receive/o;
.super Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;
.source "SourceFile"


# instance fields
.field public a:[I


# direct methods
.method public constructor <init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    .line 2
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result p1

    if-lez p1, :cond_1

    .line 3
    new-array v0, p1, [I

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/o;->a:[I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 4
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/o;->a:[I

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result v2

    aput v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_1
    return-void
.end method
