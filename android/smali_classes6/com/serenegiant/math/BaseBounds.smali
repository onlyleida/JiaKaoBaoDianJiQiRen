.class public abstract Lcom/serenegiant/math/BaseBounds;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4c658a94f427a535L


# instance fields
.field public final angle:Lcom/serenegiant/math/Vector;

.field public final position:Lcom/serenegiant/math/Vector;

.field public radius:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/serenegiant/math/Vector;

    invoke-direct {v0}, Lcom/serenegiant/math/Vector;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    .line 3
    new-instance v0, Lcom/serenegiant/math/Vector;

    invoke-direct {v0}, Lcom/serenegiant/math/Vector;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/math/BaseBounds;->angle:Lcom/serenegiant/math/Vector;

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/serenegiant/math/Vector;

    invoke-direct {v0}, Lcom/serenegiant/math/Vector;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    .line 10
    new-instance v1, Lcom/serenegiant/math/Vector;

    invoke-direct {v1}, Lcom/serenegiant/math/Vector;-><init>()V

    iput-object v1, p0, Lcom/serenegiant/math/BaseBounds;->angle:Lcom/serenegiant/math/Vector;

    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/serenegiant/math/Vector;->set(FF)Lcom/serenegiant/math/Vector;

    .line 12
    iput p3, p0, Lcom/serenegiant/math/BaseBounds;->radius:F

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/serenegiant/math/Vector;

    invoke-direct {v0}, Lcom/serenegiant/math/Vector;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    .line 15
    new-instance v1, Lcom/serenegiant/math/Vector;

    invoke-direct {v1}, Lcom/serenegiant/math/Vector;-><init>()V

    iput-object v1, p0, Lcom/serenegiant/math/BaseBounds;->angle:Lcom/serenegiant/math/Vector;

    .line 16
    invoke-virtual {v0, p1, p2, p3}, Lcom/serenegiant/math/Vector;->set(FFF)Lcom/serenegiant/math/Vector;

    .line 17
    iput p4, p0, Lcom/serenegiant/math/BaseBounds;->radius:F

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/math/BaseBounds;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/serenegiant/math/Vector;

    invoke-direct {v0}, Lcom/serenegiant/math/Vector;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    .line 6
    new-instance v0, Lcom/serenegiant/math/Vector;

    invoke-direct {v0}, Lcom/serenegiant/math/Vector;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/math/BaseBounds;->angle:Lcom/serenegiant/math/Vector;

    .line 7
    invoke-virtual {p0, p1}, Lcom/serenegiant/math/BaseBounds;->set(Lcom/serenegiant/math/BaseBounds;)Lcom/serenegiant/math/BaseBounds;

    return-void
.end method


# virtual methods
.method public centerX()F
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    iget v0, v0, Lcom/serenegiant/math/Vector;->x:F

    return v0
.end method

.method public centerX(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    iput p1, v0, Lcom/serenegiant/math/Vector;->x:F

    return-void
.end method

.method public centerY()F
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    iget v0, v0, Lcom/serenegiant/math/Vector;->y:F

    return v0
.end method

.method public centerY(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    iput p1, v0, Lcom/serenegiant/math/Vector;->y:F

    return-void
.end method

.method public centerZ()F
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    iget v0, v0, Lcom/serenegiant/math/Vector;->z:F

    return v0
.end method

.method public centerZ(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    iput p1, v0, Lcom/serenegiant/math/Vector;->z:F

    return-void
.end method

.method public move(FF)Lcom/serenegiant/math/BaseBounds;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {v0, p1, p2}, Lcom/serenegiant/math/Vector;->add(FF)Lcom/serenegiant/math/Vector;

    return-object p0
.end method

.method public move(FFF)Lcom/serenegiant/math/BaseBounds;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/serenegiant/math/Vector;->add(FFF)Lcom/serenegiant/math/Vector;

    return-object p0
.end method

.method public move(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/BaseBounds;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {v0, p1}, Lcom/serenegiant/math/Vector;->add(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;

    return-object p0
.end method

.method public ptInBounds(FF)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    iget v0, v0, Lcom/serenegiant/math/Vector;->z:F

    invoke-virtual {p0, p1, p2, v0}, Lcom/serenegiant/math/BaseBounds;->ptInBounds(FFF)Z

    move-result p1

    return p1
.end method

.method public abstract ptInBounds(FFF)Z
.end method

.method public ptInBounds(Lcom/serenegiant/math/Vector;)Z
    .locals 2

    .line 2
    iget v0, p1, Lcom/serenegiant/math/Vector;->x:F

    iget v1, p1, Lcom/serenegiant/math/Vector;->y:F

    iget p1, p1, Lcom/serenegiant/math/Vector;->z:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/serenegiant/math/BaseBounds;->ptInBounds(FFF)Z

    move-result p1

    return p1
.end method

.method protected ptInBoundsSphere(FFFF)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/serenegiant/math/Vector;->distSquared(FFF)F

    move-result p1

    mul-float p4, p4, p4

    cmpg-float p1, p1, p4

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public rotate(FFF)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/serenegiant/math/BaseBounds;->angle:Lcom/serenegiant/math/Vector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/serenegiant/math/Vector;->set(FFF)Lcom/serenegiant/math/Vector;

    return-void
.end method

.method public rotate(Lcom/serenegiant/math/Vector;)V
    .locals 3

    .line 1
    iget v0, p1, Lcom/serenegiant/math/Vector;->x:F

    iget v1, p1, Lcom/serenegiant/math/Vector;->y:F

    iget v2, p1, Lcom/serenegiant/math/Vector;->z:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/serenegiant/math/Vector;->set(FFF)Lcom/serenegiant/math/Vector;

    return-void
.end method

.method public rotateX(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/math/BaseBounds;->angle:Lcom/serenegiant/math/Vector;

    iput p1, v0, Lcom/serenegiant/math/Vector;->x:F

    return-void
.end method

.method public rotateY(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/math/BaseBounds;->angle:Lcom/serenegiant/math/Vector;

    iput p1, v0, Lcom/serenegiant/math/Vector;->y:F

    return-void
.end method

.method public rotateZ(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/math/BaseBounds;->angle:Lcom/serenegiant/math/Vector;

    iput p1, v0, Lcom/serenegiant/math/Vector;->z:F

    return-void
.end method

.method public set(Lcom/serenegiant/math/BaseBounds;)Lcom/serenegiant/math/BaseBounds;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    iget-object v1, p1, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {v0, v1}, Lcom/serenegiant/math/Vector;->set(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;

    .line 2
    iget-object v0, p0, Lcom/serenegiant/math/BaseBounds;->angle:Lcom/serenegiant/math/Vector;

    iget-object v1, p1, Lcom/serenegiant/math/BaseBounds;->angle:Lcom/serenegiant/math/Vector;

    invoke-virtual {v0, v1}, Lcom/serenegiant/math/Vector;->set(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;

    .line 3
    iget p1, p1, Lcom/serenegiant/math/BaseBounds;->radius:F

    iput p1, p0, Lcom/serenegiant/math/BaseBounds;->radius:F

    return-object p0
.end method

.method public setPosition(FF)Lcom/serenegiant/math/BaseBounds;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {v0, p1, p2}, Lcom/serenegiant/math/Vector;->set(FF)Lcom/serenegiant/math/Vector;

    return-object p0
.end method

.method public setPosition(FFF)Lcom/serenegiant/math/BaseBounds;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/serenegiant/math/Vector;->set(FFF)Lcom/serenegiant/math/Vector;

    return-object p0
.end method

.method public setPosition(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/BaseBounds;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {v0, p1}, Lcom/serenegiant/math/Vector;->set(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;

    return-object p0
.end method
