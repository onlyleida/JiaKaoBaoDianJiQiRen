.class public Lcom/felhr/usbserial/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felhr/usbserial/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcom/felhr/usbserial/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)[B
    .locals 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    const/16 v2, 0x40

    if-le v0, v2, :cond_1

    const/4 v3, 0x1

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v2, v3, 0x40

    goto :goto_0

    :cond_0
    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    .line 2
    new-array v0, v0, [B

    .line 3
    invoke-static {p1, v0}, Lcom/felhr/usbserial/e;->o([B[B)V

    return-object v0

    .line 4
    :cond_1
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1
.end method
