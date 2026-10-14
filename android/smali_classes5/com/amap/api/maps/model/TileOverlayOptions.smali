.class public final Lcom/amap/api/maps/model/TileOverlayOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps/model/TileOverlayOptionsCreator;


# instance fields
.field private diskCacheDir:Ljava/lang/String;

.field private diskCacheEnabled:Z

.field private diskCacheSize:J

.field private mTileProvider:Lcom/amap/api/maps/model/TileProvider;

.field private final mVersionCode:I

.field private mVisible:Z

.field private mZIndex:F

.field private memCacheSize:I

.field private memoryCacheEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/amap/api/maps/model/TileOverlayOptionsCreator;

    invoke-direct {v0}, Lcom/amap/api/maps/model/TileOverlayOptionsCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps/model/TileOverlayOptions;->CREATOR:Lcom/amap/api/maps/model/TileOverlayOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->mVisible:Z

    const/high16 v1, 0x500000

    .line 3
    iput v1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->memCacheSize:I

    const-wide/32 v1, 0x1400000

    .line 4
    iput-wide v1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->diskCacheSize:J

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->diskCacheDir:Ljava/lang/String;

    .line 6
    iput-boolean v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->memoryCacheEnabled:Z

    .line 7
    iput-boolean v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->diskCacheEnabled:Z

    .line 8
    iput v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->mVersionCode:I

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;ZF)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x1

    .line 10
    iput-boolean p2, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->mVisible:Z

    const/high16 v0, 0x500000

    .line 11
    iput v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->memCacheSize:I

    const-wide/32 v0, 0x1400000

    .line 12
    iput-wide v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->diskCacheSize:J

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->diskCacheDir:Ljava/lang/String;

    .line 14
    iput-boolean p2, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->memoryCacheEnabled:Z

    .line 15
    iput-boolean p2, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->diskCacheEnabled:Z

    .line 16
    iput p1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->mVersionCode:I

    .line 17
    iput-boolean p3, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->mVisible:Z

    .line 18
    iput p4, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->mZIndex:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public diskCacheDir(Ljava/lang/String;)Lcom/amap/api/maps/model/TileOverlayOptions;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->diskCacheDir:Ljava/lang/String;

    return-object p0
.end method

.method public diskCacheEnabled(Z)Lcom/amap/api/maps/model/TileOverlayOptions;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->diskCacheEnabled:Z

    return-object p0
.end method

.method public diskCacheSize(I)Lcom/amap/api/maps/model/TileOverlayOptions;
    .locals 2

    mul-int/lit16 p1, p1, 0x400

    int-to-long v0, p1

    .line 1
    iput-wide v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->diskCacheSize:J

    return-object p0
.end method

.method public getDiskCacheDir()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->diskCacheDir:Ljava/lang/String;

    return-object v0
.end method

.method public getDiskCacheEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->diskCacheEnabled:Z

    return v0
.end method

.method public getDiskCacheSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->diskCacheSize:J

    return-wide v0
.end method

.method public getMemCacheSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->memCacheSize:I

    return v0
.end method

.method public getMemoryCacheEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->memoryCacheEnabled:Z

    return v0
.end method

.method public getTileProvider()Lcom/amap/api/maps/model/TileProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->mTileProvider:Lcom/amap/api/maps/model/TileProvider;

    return-object v0
.end method

.method public getZIndex()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->mZIndex:F

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->mVisible:Z

    return v0
.end method

.method public memCacheSize(I)Lcom/amap/api/maps/model/TileOverlayOptions;
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->memCacheSize:I

    return-object p0
.end method

.method public memoryCacheEnabled(Z)Lcom/amap/api/maps/model/TileOverlayOptions;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->memoryCacheEnabled:Z

    return-object p0
.end method

.method public tileProvider(Lcom/amap/api/maps/model/TileProvider;)Lcom/amap/api/maps/model/TileOverlayOptions;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->mTileProvider:Lcom/amap/api/maps/model/TileProvider;

    return-object p0
.end method

.method public visible(Z)Lcom/amap/api/maps/model/TileOverlayOptions;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->mVisible:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget p2, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->mVersionCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->mTileProvider:Lcom/amap/api/maps/model/TileProvider;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 3
    iget-boolean p2, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->mVisible:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 4
    iget p2, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->mZIndex:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5
    iget p2, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->memCacheSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-wide v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->diskCacheSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 7
    iget-object p2, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->diskCacheDir:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-boolean p2, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->memoryCacheEnabled:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 9
    iget-boolean p2, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->diskCacheEnabled:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method

.method public zIndex(F)Lcom/amap/api/maps/model/TileOverlayOptions;
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->mZIndex:F

    return-object p0
.end method
