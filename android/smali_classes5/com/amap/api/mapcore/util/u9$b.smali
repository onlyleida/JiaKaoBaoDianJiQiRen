.class Lcom/amap/api/mapcore/util/u9$b;
.super Lcom/amap/api/mapcore/util/r2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/u9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final d:Lcom/amap/api/mapcore/util/u9$a;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/u9$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/r2;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/amap/api/mapcore/util/u9$b;->d:Lcom/amap/api/mapcore/util/u9$a;

    return-void
.end method


# virtual methods
.method public getIPV6URL()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/u9$b;->getURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Ljava/util/Map;
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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestHead()Ljava/util/Map;
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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u9$b;->d:Lcom/amap/api/mapcore/util/u9$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/u9$a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSupportIPV6()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
