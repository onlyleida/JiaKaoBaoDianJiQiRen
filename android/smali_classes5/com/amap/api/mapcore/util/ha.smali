.class public Lcom/amap/api/mapcore/util/ha;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private c:I

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:Z

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:I


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/model/BitmapDescriptor;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/amap/api/mapcore/util/ha;->d:F

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/amap/api/mapcore/util/ha;->e:F

    .line 4
    iput v1, p0, Lcom/amap/api/mapcore/util/ha;->f:F

    .line 5
    iput v0, p0, Lcom/amap/api/mapcore/util/ha;->g:F

    .line 6
    iput v0, p0, Lcom/amap/api/mapcore/util/ha;->h:F

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ha;->i:Z

    .line 8
    iput v1, p0, Lcom/amap/api/mapcore/util/ha;->j:F

    .line 9
    iput v1, p0, Lcom/amap/api/mapcore/util/ha;->k:F

    .line 10
    iput v1, p0, Lcom/amap/api/mapcore/util/ha;->l:F

    .line 11
    iput v1, p0, Lcom/amap/api/mapcore/util/ha;->m:F

    .line 12
    iput v0, p0, Lcom/amap/api/mapcore/util/ha;->n:I

    .line 13
    iput-object p1, p0, Lcom/amap/api/mapcore/util/ha;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 14
    iput p2, p0, Lcom/amap/api/mapcore/util/ha;->c:I

    .line 15
    invoke-static {}, Lcom/amap/api/mapcore/util/j3;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ha;->a:Ljava/lang/String;

    .line 16
    iget-object p1, p0, Lcom/amap/api/mapcore/util/ha;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I

    move-result p1

    int-to-double p1, p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double p1, p1, v0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ha;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getHeight()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr p1, v0

    double-to-float p1, p1

    iput p1, p0, Lcom/amap/api/mapcore/util/ha;->d:F

    :cond_0
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/ha;->l:F

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/ha;->c:I

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/ha;->i:Z

    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/ha;->i:Z

    return v0
.end method

.method public e()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/ha;->l:F

    return v0
.end method

.method public f(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/ha;->m:F

    return-void
.end method

.method public g()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/ha;->m:F

    return v0
.end method

.method public h(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/ha;->j:F

    return-void
.end method

.method public i()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/ha;->j:F

    return v0
.end method

.method public j(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/ha;->k:F

    return-void
.end method

.method public k()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/ha;->k:F

    return v0
.end method

.method public l(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/ha;->f:F

    return-void
.end method

.method public m()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/ha;->f:F

    return v0
.end method

.method public n(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/ha;->e:F

    return-void
.end method

.method public o()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/ha;->e:F

    return v0
.end method

.method public p(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/ha;->g:F

    return-void
.end method

.method public q()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/ha;->g:F

    return v0
.end method

.method public r(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/ha;->h:F

    return-void
.end method

.method public s()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/ha;->h:F

    return v0
.end method

.method public t()Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ha;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    return-object v0
.end method

.method public u()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/ha;->c:I

    return v0
.end method

.method public v()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/ha;->d:F

    return v0
.end method

.method public w()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/ha;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/ha;->n:I

    return-void
.end method

.method public x()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/ha;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/ha;->n:I

    return-void
.end method

.method public y()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/ha;->n:I

    return v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ha;->a:Ljava/lang/String;

    return-object v0
.end method
