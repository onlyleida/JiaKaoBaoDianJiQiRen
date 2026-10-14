.class public final Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u0015\u001a\u00020\u0014R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationItem;",
        "Ljava/io/Serializable;",
        "()V",
        "s",
        "",
        "getS",
        "()D",
        "setS",
        "(D)V",
        "theta",
        "getTheta",
        "setTheta",
        "x",
        "getX",
        "setX",
        "y",
        "getY",
        "setY",
        "distanceTo",
        "pos",
        "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
        "toPos",
        "teachbase_release"
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
.field private s:D

.field private theta:D

.field private x:D

.field private y:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D
    .locals 6

    const-string v0, "pos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationItem;->x:D

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v0, v2

    .line 2
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationItem;->y:D

    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v2, v4

    mul-double v0, v0, v0

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final getS()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationItem;->s:D

    return-wide v0
.end method

.method public final getTheta()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationItem;->theta:D

    return-wide v0
.end method

.method public final getX()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationItem;->x:D

    return-wide v0
.end method

.method public final getY()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationItem;->y:D

    return-wide v0
.end method

.method public final setS(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationItem;->s:D

    return-void
.end method

.method public final setTheta(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationItem;->theta:D

    return-void
.end method

.method public final setX(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationItem;->x:D

    return-void
.end method

.method public final setY(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationItem;->y:D

    return-void
.end method

.method public final toPos()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationItem;->x:D

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationItem;->y:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    return-object v0
.end method
