.class public Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;
.super Lcom/amap/api/maps/model/BaseOptions;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/maps/model/BuildingOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BuildingOverlayTotalOptions"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/maps/model/BuildingOverlay;

.field public allOptionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BuildingOverlayOptions;",
            ">;"
        }
    .end annotation
.end field

.field public isVisible:Z

.field private final type:Ljava/lang/String;

.field private zIndex:F


# direct methods
.method protected constructor <init>(Lcom/amap/api/maps/model/BuildingOverlay;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;->a:Lcom/amap/api/maps/model/BuildingOverlay;

    invoke-direct {p0}, Lcom/amap/api/maps/model/BaseOptions;-><init>()V

    const-string p1, "BuildingOptions"

    .line 2
    iput-object p1, p0, Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;->type:Ljava/lang/String;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;->isVisible:Z

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;->zIndex:F

    return-void
.end method

.method static synthetic a(Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;->zIndex:F

    return p0
.end method

.method static synthetic a(Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;F)F
    .locals 0

    .line 2
    iput p1, p0, Lcom/amap/api/maps/model/BuildingOverlay$BuildingOverlayTotalOptions;->zIndex:F

    return p1
.end method
