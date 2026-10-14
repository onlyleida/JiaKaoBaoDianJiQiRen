.class public Lcn/mucang/android/jiakaoyi/signal/com/u/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/com/u/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()S
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b([BIIIZSZ)[B
    .locals 0

    .line 1
    new-instance p2, Lcn/mucang/android/jiakaoyi/signal/communicate/v;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;-><init>(Z)V

    const/16 p3, 0x7e

    .line 2
    invoke-virtual {p2, p3}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    const/16 p5, -0x5e

    .line 3
    invoke-virtual {p2, p5}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    const/4 p5, 0x0

    .line 4
    invoke-virtual {p2, p5}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 5
    invoke-virtual {p2, p5}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    int-to-byte p4, p4

    .line 6
    invoke-virtual {p2, p4}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 7
    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->d([B)V

    .line 8
    invoke-virtual {p2, p3}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 9
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->b()[B

    move-result-object p1

    return-object p1
.end method
