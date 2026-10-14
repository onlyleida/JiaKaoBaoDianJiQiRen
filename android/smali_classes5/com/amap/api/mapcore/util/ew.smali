.class public Lcom/amap/api/mapcore/util/ew;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/ew$d;,
        Lcom/amap/api/mapcore/util/ew$c;,
        Lcom/amap/api/mapcore/util/ew$a;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/mapcore/util/ew$c;


# direct methods
.method public constructor <init>(II)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/amap/api/mapcore/util/ew$c;

    new-instance v1, Lcom/amap/api/mapcore/util/ew$d;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p1, p2}, Lcom/amap/api/mapcore/util/ew$d;-><init>(IIII)V

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore/util/ew$c;-><init>(Lcom/amap/api/mapcore/util/ew;Lcom/amap/api/mapcore/util/ew$d;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ew;->a:Lcom/amap/api/mapcore/util/ew$c;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ew;->a:Lcom/amap/api/mapcore/util/ew$c;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/ew$c;->b:Lcom/amap/api/mapcore/util/ew$d;

    iget v0, v0, Lcom/amap/api/mapcore/util/ew$d;->c:I

    return v0
.end method

.method public b(IILjava/lang/String;)Lcom/amap/api/mapcore/util/ew$d;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ew;->a:Lcom/amap/api/mapcore/util/ew$c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amap/api/mapcore/util/ew$c;->a(IILjava/lang/String;)Lcom/amap/api/mapcore/util/ew$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p2, Lcom/amap/api/mapcore/util/ew$d;

    iget-object p1, p1, Lcom/amap/api/mapcore/util/ew$c;->b:Lcom/amap/api/mapcore/util/ew$d;

    iget p3, p1, Lcom/amap/api/mapcore/util/ew$d;->a:I

    iget v0, p1, Lcom/amap/api/mapcore/util/ew$d;->b:I

    iget v1, p1, Lcom/amap/api/mapcore/util/ew$d;->c:I

    iget p1, p1, Lcom/amap/api/mapcore/util/ew$d;->d:I

    invoke-direct {p2, p3, v0, v1, p1}, Lcom/amap/api/mapcore/util/ew$d;-><init>(IIII)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ew;->a:Lcom/amap/api/mapcore/util/ew$c;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/ew$c;->d(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ew;->a:Lcom/amap/api/mapcore/util/ew$c;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/ew$c;->b:Lcom/amap/api/mapcore/util/ew$d;

    iget v0, v0, Lcom/amap/api/mapcore/util/ew$d;->d:I

    return v0
.end method
