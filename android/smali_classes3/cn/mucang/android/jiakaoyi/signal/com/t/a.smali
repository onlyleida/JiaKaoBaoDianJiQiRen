.class public Lcn/mucang/android/jiakaoyi/signal/com/t/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[B

.field public final c:Z


# direct methods
.method public constructor <init>(I[B)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/signal/com/t/a;-><init>(I[BZ)V

    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v7, p3

    .line 2
    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/signal/com/t/a;-><init>(I[BZZIIZ)V

    return-void
.end method

.method public constructor <init>(I[BZZIIZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/t/a;->a:I

    .line 5
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/com/t/a;->b:[B

    .line 6
    iput-boolean p7, p0, Lcn/mucang/android/jiakaoyi/signal/com/t/a;->c:Z

    return-void
.end method
