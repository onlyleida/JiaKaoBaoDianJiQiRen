.class final Lcom/amap/api/mapcore/util/y0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/mapcore/util/y0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/y0;->c(Lcom/amap/api/mapcore/util/y0$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/u0;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/u0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/y0$a;->a:Lcom/amap/api/mapcore/util/u0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y0$a;->a:Lcom/amap/api/mapcore/util/u0;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/u0;->g()V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y0$a;->a:Lcom/amap/api/mapcore/util/u0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/amap/api/mapcore/util/u0;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
