.class public Lcn/mucang/android/jiakaoyi/signal/communicate/receive/r$b;
.super Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/signal/communicate/receive/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    .line 2
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    .line 3
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/r$b;->a:I

    return-void
.end method
