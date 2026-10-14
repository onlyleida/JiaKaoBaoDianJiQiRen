.class public final enum Lcom/amap/api/maps/model/AMapPara$LineCapType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/maps/model/AMapPara;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LineCapType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amap/api/maps/model/AMapPara$LineCapType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amap/api/maps/model/AMapPara$LineCapType;

.field public static final enum LineCapArrow:Lcom/amap/api/maps/model/AMapPara$LineCapType;

.field public static final enum LineCapButt:Lcom/amap/api/maps/model/AMapPara$LineCapType;

.field public static final enum LineCapRound:Lcom/amap/api/maps/model/AMapPara$LineCapType;

.field public static final enum LineCapSquare:Lcom/amap/api/maps/model/AMapPara$LineCapType;


# instance fields
.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/amap/api/maps/model/AMapPara$LineCapType;

    const-string v1, "LineCapButt"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/amap/api/maps/model/AMapPara$LineCapType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amap/api/maps/model/AMapPara$LineCapType;->LineCapButt:Lcom/amap/api/maps/model/AMapPara$LineCapType;

    .line 2
    new-instance v1, Lcom/amap/api/maps/model/AMapPara$LineCapType;

    const-string v3, "LineCapSquare"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/amap/api/maps/model/AMapPara$LineCapType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/amap/api/maps/model/AMapPara$LineCapType;->LineCapSquare:Lcom/amap/api/maps/model/AMapPara$LineCapType;

    .line 3
    new-instance v3, Lcom/amap/api/maps/model/AMapPara$LineCapType;

    const-string v5, "LineCapArrow"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/amap/api/maps/model/AMapPara$LineCapType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/amap/api/maps/model/AMapPara$LineCapType;->LineCapArrow:Lcom/amap/api/maps/model/AMapPara$LineCapType;

    .line 4
    new-instance v5, Lcom/amap/api/maps/model/AMapPara$LineCapType;

    const-string v7, "LineCapRound"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/amap/api/maps/model/AMapPara$LineCapType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/amap/api/maps/model/AMapPara$LineCapType;->LineCapRound:Lcom/amap/api/maps/model/AMapPara$LineCapType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/amap/api/maps/model/AMapPara$LineCapType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/amap/api/maps/model/AMapPara$LineCapType;->$VALUES:[Lcom/amap/api/maps/model/AMapPara$LineCapType;

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
    iput p3, p0, Lcom/amap/api/maps/model/AMapPara$LineCapType;->type:I

    return-void
.end method

.method public static valueOf(I)Lcom/amap/api/maps/model/AMapPara$LineCapType;
    .locals 2

    .line 2
    invoke-static {}, Lcom/amap/api/maps/model/AMapPara$LineCapType;->values()[Lcom/amap/api/maps/model/AMapPara$LineCapType;

    move-result-object v0

    .line 3
    array-length v1, v0

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v1, 0x0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 4
    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amap/api/maps/model/AMapPara$LineCapType;
    .locals 1

    .line 1
    const-class v0, Lcom/amap/api/maps/model/AMapPara$LineCapType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amap/api/maps/model/AMapPara$LineCapType;

    return-object p0
.end method

.method public static values()[Lcom/amap/api/maps/model/AMapPara$LineCapType;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/api/maps/model/AMapPara$LineCapType;->$VALUES:[Lcom/amap/api/maps/model/AMapPara$LineCapType;

    invoke-virtual {v0}, [Lcom/amap/api/maps/model/AMapPara$LineCapType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amap/api/maps/model/AMapPara$LineCapType;

    return-object v0
.end method


# virtual methods
.method public getTypeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/AMapPara$LineCapType;->type:I

    return v0
.end method
