.class public final enum Lcom/amap/api/mapcore/util/ca$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amap/api/mapcore/util/ca$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/amap/api/mapcore/util/ca$a;

.field public static final enum b:Lcom/amap/api/mapcore/util/ca$a;

.field public static final enum c:Lcom/amap/api/mapcore/util/ca$a;

.field public static final enum d:Lcom/amap/api/mapcore/util/ca$a;

.field public static final enum e:Lcom/amap/api/mapcore/util/ca$a;

.field private static final synthetic g:[Lcom/amap/api/mapcore/util/ca$a;


# instance fields
.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/amap/api/mapcore/util/ca$a;

    const-string v1, "amap_exception"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/ca$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amap/api/mapcore/util/ca$a;->a:Lcom/amap/api/mapcore/util/ca$a;

    .line 2
    new-instance v1, Lcom/amap/api/mapcore/util/ca$a;

    const-string v4, "network_exception"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lcom/amap/api/mapcore/util/ca$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/amap/api/mapcore/util/ca$a;->b:Lcom/amap/api/mapcore/util/ca$a;

    .line 3
    new-instance v3, Lcom/amap/api/mapcore/util/ca$a;

    const-string v4, "file_io_exception"

    const/4 v6, 0x2

    invoke-direct {v3, v4, v6, v2}, Lcom/amap/api/mapcore/util/ca$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/amap/api/mapcore/util/ca$a;->c:Lcom/amap/api/mapcore/util/ca$a;

    .line 4
    new-instance v4, Lcom/amap/api/mapcore/util/ca$a;

    const-string v7, "success_no_exception"

    const/4 v8, 0x3

    invoke-direct {v4, v7, v8, v5}, Lcom/amap/api/mapcore/util/ca$a;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/amap/api/mapcore/util/ca$a;->d:Lcom/amap/api/mapcore/util/ca$a;

    .line 5
    new-instance v7, Lcom/amap/api/mapcore/util/ca$a;

    const-string v9, "cancel_no_exception"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v6}, Lcom/amap/api/mapcore/util/ca$a;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/amap/api/mapcore/util/ca$a;->e:Lcom/amap/api/mapcore/util/ca$a;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/amap/api/mapcore/util/ca$a;

    aput-object v0, v9, v2

    aput-object v1, v9, v5

    aput-object v3, v9, v6

    aput-object v4, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/amap/api/mapcore/util/ca$a;->g:[Lcom/amap/api/mapcore/util/ca$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/amap/api/mapcore/util/ca$a;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amap/api/mapcore/util/ca$a;
    .locals 1

    .line 1
    const-class v0, Lcom/amap/api/mapcore/util/ca$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amap/api/mapcore/util/ca$a;

    return-object p0
.end method

.method public static values()[Lcom/amap/api/mapcore/util/ca$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/api/mapcore/util/ca$a;->g:[Lcom/amap/api/mapcore/util/ca$a;

    invoke-virtual {v0}, [Lcom/amap/api/mapcore/util/ca$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amap/api/mapcore/util/ca$a;

    return-object v0
.end method
