.class public final Lcn/mucang/android/jiakaoyi/framework/base/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0016\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B-\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u0008H\u0016R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/framework/base/MultiClickListener;",
        "Landroid/view/View$OnClickListener;",
        "count",
        "",
        "duration",
        "",
        "click",
        "Lkotlin/Function1;",
        "Landroid/view/View;",
        "",
        "(IJLkotlin/jvm/functions/Function1;)V",
        "hits",
        "",
        "onClick",
        "v",
        "framework_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:I

.field private final b:J

.field private final c:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "Landroid/view/View;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field private d:[J


# direct methods
.method public constructor <init>(IJLkotlin/jvm/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lkotlin/jvm/b/l<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "click"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/e;->a:I

    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/framework/base/e;->b:J

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/framework/base/e;->c:Lkotlin/jvm/b/l;

    return-void
.end method

.method public synthetic constructor <init>(IJLkotlin/jvm/b/l;ILkotlin/jvm/internal/o;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p1, 0x5

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    const-wide/16 p2, 0xbb8

    .line 2
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/framework/base/e;-><init>(IJLkotlin/jvm/b/l;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/e;->d:[J

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/e;->a:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/e;->d:[J

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/e;->d:[J

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/base/e;->d:[J

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/e;->d:[J

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/base/e;->d:[J

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    array-length v1, v1

    sub-int/2addr v1, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    aput-wide v5, v0, v1

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/e;->d:[J

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/base/e;->d:[J

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    array-length v1, v1

    sub-int/2addr v1, v3

    aget-wide v1, v0, v1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/e;->d:[J

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    aget-wide v3, v0, v4

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/framework/base/e;->b:J

    cmp-long v0, v1, v3

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/e;->d:[J

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/e;->c:Lkotlin/jvm/b/l;

    invoke-interface {v0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
