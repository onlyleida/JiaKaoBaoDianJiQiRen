.class public Lcom/amap/api/mapcore/util/a8;
.super Lcom/amap/api/mapcore/util/e8;
.source "SourceFile"


# instance fields
.field private c:Ljava/lang/StringBuilder;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/e8;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/e8;-><init>(Lcom/amap/api/mapcore/util/e8;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a8;->c:Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/a8;->d:Z

    return-void
.end method


# virtual methods
.method protected b([B)[B
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/a8;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/api/mapcore/util/n5;->o(Ljava/lang/String;)[B

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/e8;->d([B)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/a8;->d:Z

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a8;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public c([B)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/amap/api/mapcore/util/n5;->g([B)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a8;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/a8;->d:Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a8;->c:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a8;->c:Ljava/lang/StringBuilder;

    const-string v1, "{\"log\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
