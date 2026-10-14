.class public Lcom/amap/api/mapcore/util/y3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/amap/api/mapcore/util/y3<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lcom/amap/api/mapcore/util/y3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/amap/api/mapcore/util/y3;Lcom/amap/api/mapcore/util/y3;)Lcom/amap/api/mapcore/util/y3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amap/api/mapcore/util/y3<",
            "*>;>(TT;TT;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/amap/api/mapcore/util/y3;->a:Lcom/amap/api/mapcore/util/y3;

    if-nez v0, :cond_0

    .line 2
    iput-object p0, p1, Lcom/amap/api/mapcore/util/y3;->a:Lcom/amap/api/mapcore/util/y3;

    return-object p1

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'item\' is a list"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
