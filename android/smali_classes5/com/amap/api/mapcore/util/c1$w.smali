.class Lcom/amap/api/mapcore/util/c1$w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/maps/model/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/c1;->setMaskLayerParams(IIIIIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/amap/api/mapcore/util/c1;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/c1;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1$w;->b:Lcom/amap/api/mapcore/util/c1;

    iput p2, p0, Lcom/amap/api/mapcore/util/c1$w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$w;->b:Lcom/amap/api/mapcore/util/c1;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/c1;->f1:Landroid/os/Handler;

    new-instance v1, Lcom/amap/api/mapcore/util/c1$w$a;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/util/c1$w$a;-><init>(Lcom/amap/api/mapcore/util/c1$w;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationStart()V
    .locals 0

    return-void
.end method
