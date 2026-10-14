.class Lcom/amap/api/mapcore/util/ew$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/ew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# static fields
.field static final synthetic f:Z = true


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/amap/api/mapcore/util/ew$d;

.field c:Lcom/amap/api/mapcore/util/ew$c;

.field d:Lcom/amap/api/mapcore/util/ew$c;

.field final synthetic e:Lcom/amap/api/mapcore/util/ew;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/amap/api/mapcore/util/ew;Lcom/amap/api/mapcore/util/ew$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/ew$c;->e:Lcom/amap/api/mapcore/util/ew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/amap/api/mapcore/util/ew$c;->c:Lcom/amap/api/mapcore/util/ew$c;

    .line 3
    iput-object p1, p0, Lcom/amap/api/mapcore/util/ew$c;->d:Lcom/amap/api/mapcore/util/ew$c;

    .line 4
    iput-object p2, p0, Lcom/amap/api/mapcore/util/ew$c;->b:Lcom/amap/api/mapcore/util/ew$d;

    return-void
.end method


# virtual methods
.method a(IILjava/lang/String;)Lcom/amap/api/mapcore/util/ew$c;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ew$c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ew$c;->c:Lcom/amap/api/mapcore/util/ew$c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amap/api/mapcore/util/ew$c;->a(IILjava/lang/String;)Lcom/amap/api/mapcore/util/ew$c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ew$c;->d:Lcom/amap/api/mapcore/util/ew$c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amap/api/mapcore/util/ew$c;->a(IILjava/lang/String;)Lcom/amap/api/mapcore/util/ew$c;

    move-result-object v0

    :cond_0
    return-object v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ew$c;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    return-object v1

    .line 5
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/amap/api/mapcore/util/ew$c;->e(II)Lcom/amap/api/mapcore/util/ew$a;

    move-result-object v0

    .line 6
    sget-object v2, Lcom/amap/api/mapcore/util/ew$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/amap/api/mapcore/util/ew$c;->b(II)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ew$c;->c:Lcom/amap/api/mapcore/util/ew$c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amap/api/mapcore/util/ew$c;->a(IILjava/lang/String;)Lcom/amap/api/mapcore/util/ew$c;

    move-result-object p1

    return-object p1

    .line 9
    :cond_4
    iput-object p3, p0, Lcom/amap/api/mapcore/util/ew$c;->a:Ljava/lang/String;

    return-object p0

    :cond_5
    return-object v1
.end method

.method b(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ew$c;->b:Lcom/amap/api/mapcore/util/ew$d;

    iget v1, v0, Lcom/amap/api/mapcore/util/ew$d;->c:I

    sub-int v2, v1, p1

    .line 2
    iget v3, v0, Lcom/amap/api/mapcore/util/ew$d;->d:I

    sub-int v4, v3, p2

    .line 3
    sget-boolean v5, Lcom/amap/api/mapcore/util/ew$c;->f:Z

    if-nez v5, :cond_1

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v5, :cond_3

    if-ltz v4, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-le v2, v4, :cond_4

    .line 5
    new-instance p2, Lcom/amap/api/mapcore/util/ew$d;

    iget v2, v0, Lcom/amap/api/mapcore/util/ew$d;->a:I

    iget v0, v0, Lcom/amap/api/mapcore/util/ew$d;->b:I

    invoke-direct {p2, v2, v0, p1, v3}, Lcom/amap/api/mapcore/util/ew$d;-><init>(IIII)V

    .line 6
    new-instance v2, Lcom/amap/api/mapcore/util/ew$d;

    iget v4, p2, Lcom/amap/api/mapcore/util/ew$d;->a:I

    add-int/2addr v4, p1

    sub-int/2addr v1, p1

    invoke-direct {v2, v4, v0, v1, v3}, Lcom/amap/api/mapcore/util/ew$d;-><init>(IIII)V

    goto :goto_2

    .line 7
    :cond_4
    new-instance p1, Lcom/amap/api/mapcore/util/ew$d;

    iget v2, v0, Lcom/amap/api/mapcore/util/ew$d;->a:I

    iget v0, v0, Lcom/amap/api/mapcore/util/ew$d;->b:I

    invoke-direct {p1, v2, v0, v1, p2}, Lcom/amap/api/mapcore/util/ew$d;-><init>(IIII)V

    .line 8
    new-instance v0, Lcom/amap/api/mapcore/util/ew$d;

    iget v4, p1, Lcom/amap/api/mapcore/util/ew$d;->b:I

    add-int/2addr v4, p2

    sub-int/2addr v3, p2

    invoke-direct {v0, v2, v4, v1, v3}, Lcom/amap/api/mapcore/util/ew$d;-><init>(IIII)V

    move-object p2, p1

    move-object v2, v0

    .line 9
    :goto_2
    new-instance p1, Lcom/amap/api/mapcore/util/ew$c;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ew$c;->e:Lcom/amap/api/mapcore/util/ew;

    invoke-direct {p1, v0, p2}, Lcom/amap/api/mapcore/util/ew$c;-><init>(Lcom/amap/api/mapcore/util/ew;Lcom/amap/api/mapcore/util/ew$d;)V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ew$c;->c:Lcom/amap/api/mapcore/util/ew$c;

    .line 10
    new-instance p1, Lcom/amap/api/mapcore/util/ew$c;

    invoke-direct {p1, v0, v2}, Lcom/amap/api/mapcore/util/ew$c;-><init>(Lcom/amap/api/mapcore/util/ew;Lcom/amap/api/mapcore/util/ew$d;)V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ew$c;->d:Lcom/amap/api/mapcore/util/ew$c;

    return-void
.end method

.method c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ew$c;->c:Lcom/amap/api/mapcore/util/ew$c;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method d(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ew$c;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ew$c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iput-object v1, p0, Lcom/amap/api/mapcore/util/ew$c;->a:Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ew$c;->c:Lcom/amap/api/mapcore/util/ew$c;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/ew$c;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ew$c;->d:Lcom/amap/api/mapcore/util/ew$c;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/ew$c;->d(Ljava/lang/String;)Z

    move-result v0

    :cond_2
    if-eqz v0, :cond_3

    .line 6
    iget-object p1, p0, Lcom/amap/api/mapcore/util/ew$c;->c:Lcom/amap/api/mapcore/util/ew$c;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/ew$c;->f()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/amap/api/mapcore/util/ew$c;->d:Lcom/amap/api/mapcore/util/ew$c;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/ew$c;->f()Z

    move-result p1

    if-nez p1, :cond_3

    .line 7
    iput-object v1, p0, Lcom/amap/api/mapcore/util/ew$c;->c:Lcom/amap/api/mapcore/util/ew$c;

    .line 8
    iput-object v1, p0, Lcom/amap/api/mapcore/util/ew$c;->d:Lcom/amap/api/mapcore/util/ew$c;

    :cond_3
    return v0
.end method

.method e(II)Lcom/amap/api/mapcore/util/ew$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ew$c;->b:Lcom/amap/api/mapcore/util/ew$d;

    iget v1, v0, Lcom/amap/api/mapcore/util/ew$d;->c:I

    if-gt p1, v1, :cond_1

    iget v0, v0, Lcom/amap/api/mapcore/util/ew$d;->d:I

    if-gt p2, v0, :cond_1

    if-ne p1, v1, :cond_0

    if-ne p2, v0, :cond_0

    .line 2
    sget-object p1, Lcom/amap/api/mapcore/util/ew$a;->b:Lcom/amap/api/mapcore/util/ew$a;

    return-object p1

    .line 3
    :cond_0
    sget-object p1, Lcom/amap/api/mapcore/util/ew$a;->c:Lcom/amap/api/mapcore/util/ew$a;

    return-object p1

    .line 4
    :cond_1
    sget-object p1, Lcom/amap/api/mapcore/util/ew$a;->a:Lcom/amap/api/mapcore/util/ew$a;

    return-object p1
.end method

.method f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ew$c;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ew$c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
