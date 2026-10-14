.class Lcom/amap/api/mapcore/util/z2$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/z2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field public a:[I

.field public b:[I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/amap/api/mapcore/util/z2$d;->a:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 3
    iput-object v0, p0, Lcom/amap/api/mapcore/util/z2$d;->b:[I

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore/util/z2$a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/z2$d;-><init>()V

    return-void
.end method
