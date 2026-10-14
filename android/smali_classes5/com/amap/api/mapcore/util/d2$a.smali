.class Lcom/amap/api/mapcore/util/d2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/maps/model/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/d2;->r(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/amap/api/mapcore/util/d2;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/d2;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/d2$a;->b:Lcom/amap/api/mapcore/util/d2;

    iput-boolean p2, p0, Lcom/amap/api/mapcore/util/d2$a;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2$a;->b:Lcom/amap/api/mapcore/util/d2;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/d2;->b(Lcom/amap/api/mapcore/util/d2;)Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2$a;->b:Lcom/amap/api/mapcore/util/d2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/d2;->i(Lcom/amap/api/mapcore/util/d2;Z)Z

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2$a;->b:Lcom/amap/api/mapcore/util/d2;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/d2;->b(Lcom/amap/api/mapcore/util/d2;)Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->startNow()V

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2$a;->b:Lcom/amap/api/mapcore/util/d2;

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/d2$a;->a:Z

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/d2;->m(Lcom/amap/api/mapcore/util/d2;Z)V

    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 0

    return-void
.end method
