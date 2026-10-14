.class final Lcom/amap/api/mapcore/util/f3$a;
.super Lcom/amap/api/mapcore/util/y3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/f3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/mapcore/util/y3<",
        "Lcom/amap/api/mapcore/util/f3$a;",
        ">;"
    }
.end annotation


# instance fields
.field b:Ljava/nio/ByteBuffer;

.field c:Ljava/nio/ShortBuffer;

.field d:Ljava/nio/FloatBuffer;

.field e:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/y3;-><init>()V

    return-void
.end method


# virtual methods
.method b(I)V
    .locals 2

    const v0, 0x8000

    if-ge p1, v0, :cond_0

    const p1, 0x8000

    .line 1
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/f3$a;->b:Ljava/nio/ByteBuffer;

    .line 3
    iput p1, p0, Lcom/amap/api/mapcore/util/f3$a;->e:I

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/amap/api/mapcore/util/f3$a;->c:Ljava/nio/ShortBuffer;

    .line 5
    iput-object p1, p0, Lcom/amap/api/mapcore/util/f3$a;->d:Ljava/nio/FloatBuffer;

    return-void
.end method
