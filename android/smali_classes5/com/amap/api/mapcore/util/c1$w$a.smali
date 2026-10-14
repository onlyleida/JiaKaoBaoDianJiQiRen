.class Lcom/amap/api/mapcore/util/c1$w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/c1$w;->onAnimationEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/c1$w;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/c1$w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1$w$a;->a:Lcom/amap/api/mapcore/util/c1$w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$w$a;->a:Lcom/amap/api/mapcore/util/c1$w;

    iget-object v1, v0, Lcom/amap/api/mapcore/util/c1$w;->b:Lcom/amap/api/mapcore/util/c1;

    iget v0, v0, Lcom/amap/api/mapcore/util/c1$w;->a:I

    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/c1;->G(Lcom/amap/api/mapcore/util/c1;I)I

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$w$a;->a:Lcom/amap/api/mapcore/util/c1$w;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/c1$w;->b:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c1;->Z(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/e4;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$w$a;->a:Lcom/amap/api/mapcore/util/c1$w;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/c1$w;->b:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c1;->Z(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/e4;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/e4;->S(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method
