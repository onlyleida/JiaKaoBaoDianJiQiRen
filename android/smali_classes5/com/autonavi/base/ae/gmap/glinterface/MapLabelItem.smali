.class public Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LABEL_TYPE_INDOOR:I = 0x2

.field public static final LABEL_TYPE_NORMAL:I = 0x0

.field public static final LABEL_TYPE_OPENLAYER:I = 0x6

.field public static final LABEL_TYPE_SCENIC:I = 0x1

.field public static final LABEL_TYPE_SEARCH_RESULT:I = 0x3


# instance fields
.field public anchor:I

.field public angle:I

.field public borderColor:I

.field public fontColor:I

.field public fontSize:I

.field public iconID:I

.field public labelx:I

.field public labely:I

.field public mIsFouces:Z

.field public mSublayerId:I

.field public name:Ljava/lang/String;

.field public pixel20X:I

.field public pixel20Y:I

.field public pixel20Z:I

.field public poiid:Ljava/lang/String;

.field public strHeight:I

.field public strWidth:I

.field public timeStamp:I

.field public type:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/autonavi/base/ae/gmap/glinterface/MapLabelItem;->timeStamp:I

    return-void
.end method
