.class public Lcom/amap/api/mapcore/util/h7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/h7$a;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/mapcore/util/i7;

.field private b:Lcom/amap/api/mapcore/util/k7;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/k7;)V
    .locals 6

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/h7;-><init>(Lcom/amap/api/mapcore/util/k7;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/mapcore/util/k7;JJ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore/util/h7;-><init>(Lcom/amap/api/mapcore/util/k7;JJZ)V

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/mapcore/util/k7;JJZ)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/amap/api/mapcore/util/h7;->b:Lcom/amap/api/mapcore/util/k7;

    .line 5
    iget-object v0, p1, Lcom/amap/api/mapcore/util/k7;->c:Ljava/net/Proxy;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 6
    :cond_0
    new-instance v1, Lcom/amap/api/mapcore/util/i7;

    iget v2, p1, Lcom/amap/api/mapcore/util/k7;->a:I

    iget p1, p1, Lcom/amap/api/mapcore/util/k7;->b:I

    invoke-direct {v1, v2, p1, v0, p6}, Lcom/amap/api/mapcore/util/i7;-><init>(IILjava/net/Proxy;Z)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/h7;->a:Lcom/amap/api/mapcore/util/i7;

    .line 7
    invoke-virtual {v1, p4, p5}, Lcom/amap/api/mapcore/util/i7;->u(J)V

    .line 8
    iget-object p1, p0, Lcom/amap/api/mapcore/util/h7;->a:Lcom/amap/api/mapcore/util/i7;

    invoke-virtual {p1, p2, p3}, Lcom/amap/api/mapcore/util/i7;->l(J)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h7;->a:Lcom/amap/api/mapcore/util/i7;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i7;->k()V

    return-void
.end method

.method public b(Lcom/amap/api/mapcore/util/h7$a;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h7;->b:Lcom/amap/api/mapcore/util/k7;

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/i7;->a(ILcom/amap/api/mapcore/util/k7;)I

    move-result v11

    .line 2
    iget-object v2, p0, Lcom/amap/api/mapcore/util/h7;->a:Lcom/amap/api/mapcore/util/i7;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h7;->b:Lcom/amap/api/mapcore/util/k7;

    .line 3
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/k7;->getURL()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h7;->b:Lcom/amap/api/mapcore/util/k7;

    .line 4
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/k7;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h7;->b:Lcom/amap/api/mapcore/util/k7;

    .line 5
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/k7;->isIPRequest()Z

    move-result v5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h7;->b:Lcom/amap/api/mapcore/util/k7;

    .line 6
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/k7;->getIPDNSName()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h7;->b:Lcom/amap/api/mapcore/util/k7;

    .line 7
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/k7;->getRequestHead()Ljava/util/Map;

    move-result-object v7

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h7;->b:Lcom/amap/api/mapcore/util/k7;

    .line 8
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/k7;->getParams()Ljava/util/Map;

    move-result-object v8

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h7;->b:Lcom/amap/api/mapcore/util/k7;

    .line 9
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/k7;->getEntityBytes()[B

    move-result-object v9

    move-object v10, p1

    .line 10
    invoke-virtual/range {v2 .. v11}, Lcom/amap/api/mapcore/util/i7;->o(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;[BLcom/amap/api/mapcore/util/h7$a;I)V

    return-void
.end method
