.class public Lcn/mucang/android/jiakaoyi/signal/ai/c;
.super Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;
.source "SourceFile"


# instance fields
.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    .line 2
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->j()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/c;->b:I

    .line 4
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/c;->c:I

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/c;->b:I

    .line 6
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/c;->c:I

    :goto_1
    return-void
.end method


# virtual methods
.method protected hasRequestPackIndex(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
