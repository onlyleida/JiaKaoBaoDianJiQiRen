.class public Lcom/iflytek/msc/MSCSessionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public buffer:[B

.field public buflen:I

.field public epstatues:I

.field public errorcode:I

.field public rsltstatus:I

.field public sesstatus:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/iflytek/msc/MSCSessionInfo;->buffer:[B

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lcom/iflytek/msc/MSCSessionInfo;->buflen:I

    .line 4
    iput-object v0, p0, Lcom/iflytek/msc/MSCSessionInfo;->buffer:[B

    .line 5
    iput v1, p0, Lcom/iflytek/msc/MSCSessionInfo;->sesstatus:I

    const/4 v0, 0x2

    .line 6
    iput v0, p0, Lcom/iflytek/msc/MSCSessionInfo;->rsltstatus:I

    return-void
.end method
