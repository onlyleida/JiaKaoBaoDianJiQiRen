.class public Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/util/AudioDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetectorResult"
.end annotation


# static fields
.field public static final STATUS_BOS:I = 0x3

.field public static final STATUS_EOS:I = 0x2

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_START:I = 0x1

.field public static final STATUS_TIMEOUT:I = 0x4

.field public static final SUB_END:I = 0x2

.field public static final SUB_OK:I = 0x0

.field public static final SUB_START:I = 0x1

.field public static final SUB_STARTEND:I = 0x3


# instance fields
.field public buffer:[B

.field public confidence:F

.field public end:I

.field public error:I

.field public length:I

.field public offset:I

.field public quality:I

.field public start:I

.field public status:I

.field public sub:I

.field public final subs:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public voice:Z

.field public volume:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->buffer:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->offset:I

    .line 4
    iput v0, p0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->length:I

    .line 5
    iput v0, p0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->status:I

    .line 6
    iput v0, p0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->sub:I

    .line 7
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->subs:Ljava/util/LinkedHashMap;

    .line 8
    iput v0, p0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->volume:I

    .line 9
    iput-boolean v0, p0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->voice:Z

    .line 10
    iput v0, p0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->quality:I

    .line 11
    iput v0, p0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->start:I

    .line 12
    iput v0, p0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->end:I

    .line 13
    iput v0, p0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->error:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 14
    iput v0, p0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->confidence:F

    return-void
.end method
