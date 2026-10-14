.class public Lcom/hw/videoprocessor/g/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/hw/videoprocessor/g/i;

.field private b:F

.field private c:F

.field private d:I

.field private e:I

.field private f:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Lcom/hw/videoprocessor/g/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hw/videoprocessor/g/h;->a:Lcom/hw/videoprocessor/g/i;

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/hw/videoprocessor/g/h;->c:F

    .line 2
    iget-object v0, p0, Lcom/hw/videoprocessor/g/h;->a:Lcom/hw/videoprocessor/g/i;

    if-eqz v0, :cond_0

    .line 3
    iget v1, p0, Lcom/hw/videoprocessor/g/h;->b:F

    add-float/2addr v1, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/hw/videoprocessor/g/i;->a(F)V

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mAudioProgress:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/hw/videoprocessor/g/h;->c:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/hw/videoprocessor/g/b;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public b(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hw/videoprocessor/g/h;->a:Lcom/hw/videoprocessor/g/i;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/hw/videoprocessor/g/h;->f:Ljava/lang/Float;

    if-eqz v0, :cond_1

    long-to-float p1, p1

    .line 3
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float p1, p1, p2

    float-to-long p1, p1

    :cond_1
    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    .line 4
    iget p2, p0, Lcom/hw/videoprocessor/g/h;->e:I

    iget v0, p0, Lcom/hw/videoprocessor/g/h;->d:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/hw/videoprocessor/g/h;->b:F

    const/4 p2, 0x0

    cmpg-float v0, p1, p2

    if-gez v0, :cond_2

    const/4 p1, 0x0

    .line 5
    :cond_2
    iput p1, p0, Lcom/hw/videoprocessor/g/h;->b:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float v0, p1, p2

    if-lez v0, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    .line 6
    :cond_3
    iput p1, p0, Lcom/hw/videoprocessor/g/h;->b:F

    .line 7
    iget-object p2, p0, Lcom/hw/videoprocessor/g/h;->a:Lcom/hw/videoprocessor/g/i;

    iget v0, p0, Lcom/hw/videoprocessor/g/h;->c:F

    add-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    invoke-interface {p2, p1}, Lcom/hw/videoprocessor/g/i;->a(F)V

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mEncodeProgress:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/hw/videoprocessor/g/h;->b:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/hw/videoprocessor/g/b;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hw/videoprocessor/g/h;->e:I

    return-void
.end method

.method public d(Ljava/lang/Float;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hw/videoprocessor/g/h;->f:Ljava/lang/Float;

    return-void
.end method

.method public e(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hw/videoprocessor/g/h;->d:I

    return-void
.end method
