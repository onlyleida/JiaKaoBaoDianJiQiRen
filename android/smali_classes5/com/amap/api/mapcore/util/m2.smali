.class public Lcom/amap/api/mapcore/util/m2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:[I

.field c:I

.field d:I

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;


# direct methods
.method public constructor <init>(I[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/amap/api/mapcore/util/m2;->a:I

    .line 3
    iput-object p2, p0, Lcom/amap/api/mapcore/util/m2;->b:[I

    .line 4
    iput-object p3, p0, Lcom/amap/api/mapcore/util/m2;->e:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/amap/api/mapcore/util/m2;->f:Ljava/lang/String;

    .line 6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_0

    move-object p3, p4

    :cond_0
    const/16 p4, -0x3e8

    .line 7
    iput p4, p0, Lcom/amap/api/mapcore/util/m2;->c:I

    const-string p4, "regions"

    .line 8
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/16 p3, 0x3e9

    .line 9
    iput p3, p0, Lcom/amap/api/mapcore/util/m2;->c:I

    goto :goto_0

    :cond_1
    const-string p4, "water"

    .line 10
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    const/16 p3, 0x3ea

    .line 11
    iput p3, p0, Lcom/amap/api/mapcore/util/m2;->c:I

    goto :goto_0

    :cond_2
    const-string p4, "buildings"

    .line 12
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    const/16 p3, 0x3eb

    .line 13
    iput p3, p0, Lcom/amap/api/mapcore/util/m2;->c:I

    goto :goto_0

    :cond_3
    const-string p4, "roads"

    .line 14
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    const/16 p3, 0x3ec

    .line 15
    iput p3, p0, Lcom/amap/api/mapcore/util/m2;->c:I

    goto :goto_0

    :cond_4
    const-string p4, "labels"

    .line 16
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    const/16 p3, 0x3ed

    .line 17
    iput p3, p0, Lcom/amap/api/mapcore/util/m2;->c:I

    goto :goto_0

    :cond_5
    const-string p4, "borders"

    .line 18
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    const/16 p3, 0x3ee

    .line 19
    iput p3, p0, Lcom/amap/api/mapcore/util/m2;->c:I

    :cond_6
    :goto_0
    mul-int/lit16 p1, p1, 0x3e8

    .line 20
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/amap/api/mapcore/util/m2;->d:I

    return-void
.end method
