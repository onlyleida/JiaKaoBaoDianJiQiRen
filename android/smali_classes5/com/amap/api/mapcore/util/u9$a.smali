.class Lcom/amap/api/mapcore/util/u9$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/u9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Lcom/amap/api/mapcore/util/u9$c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/amap/api/mapcore/util/u9$a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/amap/api/mapcore/util/u9$a;->b:Ljava/lang/String;

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".tmp"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/u9$a;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/amap/api/mapcore/util/u9$a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u9$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/amap/api/mapcore/util/u9$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/u9$a;->e:Lcom/amap/api/mapcore/util/u9$c;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u9$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u9$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u9$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcom/amap/api/mapcore/util/u9$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u9$a;->e:Lcom/amap/api/mapcore/util/u9$c;

    return-object v0
.end method
