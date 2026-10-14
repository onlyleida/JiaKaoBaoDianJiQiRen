.class public Lcom/amap/api/mapcore/util/x0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/amap/api/mapcore/util/x0;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/amap/api/mapcore/util/x0;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/amap/api/mapcore/util/x0;->c:Ljava/lang/String;

    .line 5
    iput p4, p0, Lcom/amap/api/mapcore/util/x0;->d:I

    .line 6
    iput-object p5, p0, Lcom/amap/api/mapcore/util/x0;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x0;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/x0;->d:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x0;->e:Ljava/lang/String;

    return-object v0
.end method
