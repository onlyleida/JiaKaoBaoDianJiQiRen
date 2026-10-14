.class public Lcom/amap/api/mapcore/util/h2$e;
.super Lcom/amap/api/mapcore/util/g2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/h2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public e:I

.field public f:I

.field public g:I


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
    const-string p1, "aMVPMatrix"

    .line 3
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/g2;->h(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/h2$e;->e:I

    const-string p1, "aColor"

    .line 4
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/g2;->h(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/h2$e;->g:I

    const-string p1, "aVertex"

    .line 5
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/g2;->e(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/h2$e;->f:I

    return-void
.end method
