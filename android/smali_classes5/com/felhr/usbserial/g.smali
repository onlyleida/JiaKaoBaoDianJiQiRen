.class public Lcom/felhr/usbserial/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felhr/usbserial/g$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/felhr/usbserial/g$a;

    invoke-direct {v0, p0}, Lcom/felhr/usbserial/g$a;-><init>(Lcom/felhr/usbserial/g;)V

    if-eqz p1, :cond_0

    const/16 p1, 0x4000

    .line 3
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method
