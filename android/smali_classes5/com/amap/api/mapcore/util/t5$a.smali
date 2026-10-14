.class final Lcom/amap/api/mapcore/util/t5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/mapcore/util/g5$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/t5;->a()Lcom/amap/api/mapcore/util/g5$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private a:Lcom/amap/api/mapcore/util/t5;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/amap/api/mapcore/util/t5;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/t5;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/t5$a;->a:Lcom/amap/api/mapcore/util/t5;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/t5$a;->a:Lcom/amap/api/mapcore/util/t5;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/t5;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/t5$a;->a:Lcom/amap/api/mapcore/util/t5;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/mapcore/util/t5;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/t5$a;->a:Lcom/amap/api/mapcore/util/t5;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amap/api/mapcore/util/t5;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/util/Map;
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

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/t5$a;->a:Lcom/amap/api/mapcore/util/t5;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/t5;->d()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
