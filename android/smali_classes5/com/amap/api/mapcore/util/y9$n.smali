.class Lcom/amap/api/mapcore/util/y9$n;
.super Lcom/amap/api/mapcore/util/y9$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/y9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "n"
.end annotation


# instance fields
.field final synthetic k:Lcom/amap/api/mapcore/util/y9;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/y9;Z)V
    .locals 8

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/y9$n;->k:Lcom/amap/api/mapcore/util/y9;

    if-eqz p2, :cond_0

    const/16 p2, 0x10

    const/16 v6, 0x10

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 2
    invoke-direct/range {v0 .. v7}, Lcom/amap/api/mapcore/util/y9$c;-><init>(Lcom/amap/api/mapcore/util/y9;IIIIII)V

    return-void
.end method
