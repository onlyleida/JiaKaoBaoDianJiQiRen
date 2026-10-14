.class public Lcn/mucang/android/jiakaoyi/signal/communicate/receive/c0;
.super Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;
.source "SourceFile"


# instance fields
.field public final b:B

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    .line 2
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result p1

    iput-byte p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/c0;->b:B

    .line 3
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/com/s;->b(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/c0;->d:I

    .line 5
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/c0;->e:I

    .line 6
    iget p2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/c0;->d:I

    if-ltz p2, :cond_0

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/com/s;->a(I)I

    move-result p1

    if-ne p1, v2, :cond_2

    .line 8
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/c0;->c:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 9
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/c0;->c:I

    .line 10
    :cond_3
    :goto_0
    iget p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/c0;->c:I

    if-lez p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    :goto_1
    return-void
.end method
