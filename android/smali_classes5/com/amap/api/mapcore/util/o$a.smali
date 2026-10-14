.class public abstract Lcom/amap/api/mapcore/util/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/mapcore/util/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amap/api/mapcore/util/n;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/amap/api/mapcore/util/o;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/o$a;->d(Lcom/amap/api/mapcore/util/o;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/amap/api/mapcore/util/n;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/amap/api/mapcore/util/o;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/o$a;->f(Lcom/amap/api/mapcore/util/o;)V

    return-void
.end method

.method public c(Lcom/amap/api/mapcore/util/n;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/amap/api/mapcore/util/o;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/o$a;->e(Lcom/amap/api/mapcore/util/o;)Z

    move-result p1

    return p1
.end method

.method public abstract d(Lcom/amap/api/mapcore/util/o;)Z
.end method

.method public abstract e(Lcom/amap/api/mapcore/util/o;)Z
.end method

.method public abstract f(Lcom/amap/api/mapcore/util/o;)V
.end method
