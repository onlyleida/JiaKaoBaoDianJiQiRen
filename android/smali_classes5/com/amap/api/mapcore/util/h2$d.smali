.class public Lcom/amap/api/mapcore/util/h2$d;
.super Lcom/amap/api/mapcore/util/g2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/h2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/g2;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/g2;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "aMVP"

    .line 3
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/g2;->h(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/h2$d;->e:I

    const-string p1, "getUniform"

    .line 4
    invoke-static {p1}, Lcom/amap/api/mapcore/util/z2;->i(Ljava/lang/String;)V

    const-string p1, "aMapBearing"

    .line 5
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/g2;->h(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/h2$d;->i:I

    const-string p1, "aVertex"

    .line 6
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/g2;->e(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/h2$d;->f:I

    const-string p1, "aTextureCoord"

    .line 7
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/g2;->e(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/h2$d;->g:I

    const-string p1, "aBearingTiltAlpha"

    .line 8
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/g2;->e(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/h2$d;->h:I

    return-void
.end method
