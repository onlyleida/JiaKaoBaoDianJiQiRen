.class abstract Lcom/amap/api/mapcore/util/c1$m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "m0"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1$m0;->a:Z

    .line 3
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1$m0;->b:Z

    .line 4
    iput v0, p0, Lcom/amap/api/mapcore/util/c1$m0;->g:I

    .line 5
    iput v0, p0, Lcom/amap/api/mapcore/util/c1$m0;->h:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore/util/c1$k;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/c1$m0;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c1$m0;->a:Z

    return-void
.end method
