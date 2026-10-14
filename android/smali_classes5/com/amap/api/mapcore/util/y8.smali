.class public final Lcom/amap/api/mapcore/util/y8;
.super Lcom/amap/api/mapcore/util/g7;
.source "SourceFile"


# instance fields
.field f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:[B

.field k:[B

.field l:Z

.field m:Ljava/lang/String;

.field n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/m5;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/g7;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/m5;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/y8;->f:Ljava/util/Map;

    const-string p2, ""

    iput-object p2, p0, Lcom/amap/api/mapcore/util/y8;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/y8;->h:Ljava/lang/String;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/y8;->i:Ljava/lang/String;

    iput-object p1, p0, Lcom/amap/api/mapcore/util/y8;->j:[B

    iput-object p1, p0, Lcom/amap/api/mapcore/util/y8;->k:[B

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/amap/api/mapcore/util/y8;->l:Z

    iput-object p1, p0, Lcom/amap/api/mapcore/util/y8;->m:Ljava/lang/String;

    iput-object p1, p0, Lcom/amap/api/mapcore/util/y8;->n:Ljava/util/Map;

    iput-boolean p2, p0, Lcom/amap/api/mapcore/util/y8;->o:Z

    return-void
.end method


# virtual methods
.method public final g()[B
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/y8;->j:[B

    return-object v0
.end method

.method protected final getIPDNSName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/y8;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getIPV6URL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/y8;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/y8;->n:Ljava/util/Map;

    return-object v0
.end method

.method public final getRequestHead()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/y8;->f:Ljava/util/Map;

    return-object v0
.end method

.method public final getURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/y8;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final h()[B
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/y8;->k:[B

    return-object v0
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/y8;->l:Z

    return v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/y8;->m:Ljava/lang/String;

    return-object v0
.end method

.method protected final m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/y8;->o:Z

    return v0
.end method

.method public final q()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/y8;->l:Z

    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/y8;->m:Ljava/lang/String;

    return-void
.end method

.method public final s(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore/util/y8;->n:Ljava/util/Map;

    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/y8;->h:Ljava/lang/String;

    return-void
.end method

.method public final u(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore/util/y8;->f:Ljava/util/Map;

    return-void
.end method

.method public final v([B)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/y8;->j:[B

    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/y8;->i:Ljava/lang/String;

    return-void
.end method

.method public final x()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/y8;->o:Z

    return-void
.end method
