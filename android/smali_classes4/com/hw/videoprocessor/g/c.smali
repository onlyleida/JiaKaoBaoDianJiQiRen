.class public Lcom/hw/videoprocessor/g/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/hw/videoprocessor/g/c;->a:I

    .line 3
    iput p2, p0, Lcom/hw/videoprocessor/g/c;->b:I

    if-gt p1, p2, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u539f\u59cb\u5e27\u7387:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u5c0f\u4e8e\u76ee\u6807\u5e27\u7387:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\uff0c\u4e0d\u652f\u6301\u8865\u5e27"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/hw/videoprocessor/g/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/hw/videoprocessor/g/c;->c:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/hw/videoprocessor/g/c;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 2
    iget p1, p0, Lcom/hw/videoprocessor/g/c;->e:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/hw/videoprocessor/g/c;->e:I

    return v1

    .line 3
    :cond_1
    iget p1, p0, Lcom/hw/videoprocessor/g/c;->a:I

    iget v2, p0, Lcom/hw/videoprocessor/g/c;->b:I

    sub-int v2, p1, v2

    int-to-float v2, v2

    int-to-float p1, p1

    div-float/2addr v2, p1

    .line 4
    iget p1, p0, Lcom/hw/videoprocessor/g/c;->d:I

    add-int/lit8 v3, p1, 0x1

    int-to-float v3, v3

    iget v4, p0, Lcom/hw/videoprocessor/g/c;->e:I

    add-int v5, p1, v4

    int-to-float v5, v5

    div-float/2addr v3, v5

    int-to-float v5, p1

    add-int/2addr p1, v4

    add-int/2addr p1, v0

    int-to-float p1, p1

    div-float/2addr v5, p1

    sub-float/2addr v3, v2

    .line 5
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float p1, p1, v2

    if-gez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    .line 6
    iget p1, p0, Lcom/hw/videoprocessor/g/c;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/hw/videoprocessor/g/c;->d:I

    goto :goto_0

    .line 7
    :cond_3
    iget p1, p0, Lcom/hw/videoprocessor/g/c;->e:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/hw/videoprocessor/g/c;->e:I

    :goto_0
    return v1
.end method
