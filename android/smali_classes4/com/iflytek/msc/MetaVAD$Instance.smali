.class public Lcom/iflytek/msc/MetaVAD$Instance;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/msc/MetaVAD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Instance"
.end annotation


# static fields
.field public static final INVALID_HANDLE:J = 0x0L

.field public static final SEG:B = 0x2t

.field public static final SEG_FIRST:B = 0x1t

.field public static final SEG_LAST:B = 0x3t

.field public static final SEG_NONE:B


# instance fields
.field public begin:I

.field public end:I

.field public handle:J

.field public rate:I

.field public seg:I

.field public volume:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/iflytek/msc/MetaVAD$Instance;->handle:J

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/iflytek/msc/MetaVAD$Instance;->rate:I

    .line 4
    iput v0, p0, Lcom/iflytek/msc/MetaVAD$Instance;->begin:I

    .line 5
    iput v0, p0, Lcom/iflytek/msc/MetaVAD$Instance;->end:I

    .line 6
    iput v0, p0, Lcom/iflytek/msc/MetaVAD$Instance;->seg:I

    .line 7
    iput v0, p0, Lcom/iflytek/msc/MetaVAD$Instance;->volume:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/iflytek/msc/MetaVAD$Instance;->begin:I

    .line 2
    iput v0, p0, Lcom/iflytek/msc/MetaVAD$Instance;->end:I

    .line 3
    iput v0, p0, Lcom/iflytek/msc/MetaVAD$Instance;->seg:I

    .line 4
    iput v0, p0, Lcom/iflytek/msc/MetaVAD$Instance;->volume:I

    return-void
.end method
