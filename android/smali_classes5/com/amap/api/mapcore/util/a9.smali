.class public final Lcom/amap/api/mapcore/util/a9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/mapcore/util/a9;->a:Z

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/amap/api/mapcore/util/a9;->b:J

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/amap/api/mapcore/util/a9;->a:Z

    return v0
.end method

.method public static b()J
    .locals 2

    sget-wide v0, Lcom/amap/api/mapcore/util/a9;->b:J

    return-wide v0
.end method
