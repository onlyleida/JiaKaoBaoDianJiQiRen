.class Lcom/amap/api/mapcore/util/i7$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/i7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/amap/api/mapcore/util/i7$d;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:Lcom/amap/api/mapcore/util/i7$d;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/i7$c;->a:Ljava/util/Vector;

    .line 3
    new-instance v0, Lcom/amap/api/mapcore/util/i7$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/i7$d;-><init>(Lcom/amap/api/mapcore/util/i7$a;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/i7$c;->b:Lcom/amap/api/mapcore/util/i7$d;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore/util/i7$a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/i7$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/amap/api/mapcore/util/i7$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i7$c;->b:Lcom/amap/api/mapcore/util/i7$d;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/amap/api/mapcore/util/i7$d;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/i7$c;->b:Lcom/amap/api/mapcore/util/i7$d;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/i7$c;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 4
    iget-object v1, p0, Lcom/amap/api/mapcore/util/i7$c;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore/util/i7$d;

    if-nez v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/i7$d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_3
    new-instance v0, Lcom/amap/api/mapcore/util/i7$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/i7$d;-><init>(Lcom/amap/api/mapcore/util/i7$a;)V

    .line 7
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/i7$d;->c(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/amap/api/mapcore/util/i7$c;->a:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i7$c;->b:Lcom/amap/api/mapcore/util/i7$d;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/i7$d;->b(Ljava/lang/String;)V

    return-void
.end method
